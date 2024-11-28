import * as fs from "fs";
import * as json5 from "json5";
import {
  DataSource,
  DataSourceOptions,
  EntitySchema,
  EntityMetadata,
  QueryRunner,
} from "typeorm";
import { DB_CONFIG } from "./const";

interface NestedDataStructure {
  [key: string]:
    | string
    | number
    | boolean
    | NestedDataStructure
    | NestedDataStructure[]
    | null;
}

interface ForeignKeyConfiguration {
  referencedTableName: string;
  columnName: string;
  referencedColumnName: string;
}

const createDataSourceConfiguration = (
  entitySchemas: EntitySchema[] = []
): DataSourceOptions => ({
  ...DB_CONFIG,
  entities: entitySchemas,
});

async function retrieveTableMetadata(queryRunner: QueryRunner) {
  const tableQuery = `
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'public'
  `;
  return await queryRunner.query(tableQuery);
}

async function generateDatabaseEntitySchemas(
  dataSource: DataSource
): Promise<EntitySchema[]> {
  const queryRunner = dataSource.createQueryRunner();
  const entitySchemas: EntitySchema[] = [];

  try {
    const tables = await retrieveTableMetadata(queryRunner);

    for (const { table_name } of tables) {
      const tableMetadata = await queryRunner.getTable(table_name);

      if (!tableMetadata) {
        console.warn(`Metadata not found for table: ${table_name}`);
        continue;
      }

      const tableEntitySchema = new EntitySchema({
        name: table_name,
        tableName: table_name,
        columns: tableMetadata.columns.reduce(
          (columnDefinitions, column) => ({
            ...columnDefinitions,
            [column.name]: {
              type: column.type,
              nullable: column.isNullable,
              primary: column.isPrimary,
              default: column.default,
              length: column.length,
              precision: column.precision,
              scale: column.scale,
              unique: column.isUnique,
              generated: column.isGenerated,
              generationStrategy: column.generationStrategy,
            },
          }),
          {}
        ),
      });

      entitySchemas.push(tableEntitySchema);
    }

    return entitySchemas;
  } finally {
    await queryRunner.release();
  }
}

class DatabaseDataInserter {
  private entityMetadataRegistry: Map<string, EntityMetadata>;
  private foreignKeyConfigurationMap: Map<string, ForeignKeyConfiguration[]>;

  constructor(private dataSource: DataSource) {
    this.entityMetadataRegistry = new Map();
    this.foreignKeyConfigurationMap = new Map();
    this.initializeMetadataRegistry();
  }

  private initializeMetadataRegistry(): void {
    this.dataSource.entityMetadatas.forEach((metadata) => {
      this.entityMetadataRegistry.set(metadata.tableName, metadata);

      const foreignKeyConfigurations: ForeignKeyConfiguration[] =
        metadata.foreignKeys.map((fk) => ({
          referencedTableName: fk.referencedTablePath,
          columnName: fk.columnNames[0],
          referencedColumnName: fk.referencedColumnNames[0],
        }));

      this.foreignKeyConfigurationMap.set(
        metadata.tableName,
        foreignKeyConfigurations
      );
    });
  }

  private getForeignKeyConfigurationsForTable(
    tableName: string
  ): ForeignKeyConfiguration[] {
    return this.foreignKeyConfigurationMap.get(tableName) || [];
  }

  private async insertSingleDataRow(
    queryRunner: QueryRunner,
    tableName: string,
    data: NestedDataStructure,
    parentTableName?: string,
    parentRecordId?: number
  ): Promise<{ insertedRecordId: number }> {
    const tableMetadata = this.entityMetadataRegistry.get(tableName);
    if (!tableMetadata) {
      throw new Error(`No metadata found for table: ${tableName}`);
    }

    const rowData: Record<string, any> = {};

    // Process standard columns
    Object.entries(data).forEach(([columnName, columnValue]) => {
      if (typeof columnValue !== "object" || columnValue === null) {
        rowData[columnName] = columnValue;
      }
    });

    // Handle foreign key relationships
    if (parentTableName && parentRecordId) {
      const relevantForeignKey = this.getForeignKeyConfigurationsForTable(
        tableName
      ).find((fk) => fk.referencedTableName === parentTableName);

      if (relevantForeignKey) {
        rowData[relevantForeignKey.columnName] = parentRecordId;
      }
    }

    const insertResult = await queryRunner.manager
      .createQueryBuilder()
      .insert()
      .into(tableName)
      .values(rowData)
      .execute();

    return {
      insertedRecordId: insertResult.identifiers[0].id,
    };
  }

  private async insertNestedDataStructure(
    queryRunner: QueryRunner,
    tableName: string,
    data: NestedDataStructure,
    parentTableName?: string,
    parentRecordId?: number
  ): Promise<void> {
    const { insertedRecordId } = await this.insertSingleDataRow(
      queryRunner,
      tableName,
      data,
      parentTableName,
      parentRecordId
    );

    // Recursively process nested objects and arrays
    for (const [key, value] of Object.entries(data)) {
      if (Array.isArray(value)) {
        for (const arrayItem of value) {
          if (typeof arrayItem === "object" && arrayItem !== null) {
            await this.insertNestedDataStructure(
              queryRunner,
              key,
              arrayItem as NestedDataStructure,
              tableName,
              insertedRecordId
            );
          }
        }
      } else if (typeof value === "object" && value !== null) {
        await this.insertNestedDataStructure(
          queryRunner,
          key,
          value as NestedDataStructure,
          tableName,
          insertedRecordId
        );
      }
    }
  }

  public async insertDataStructure(
    dataSchema: NestedDataStructure
  ): Promise<void> {
    const queryRunner = this.dataSource.createQueryRunner();
    try {
      await queryRunner.connect();
      await queryRunner.startTransaction();

      for (const tableName in dataSchema) {
        const tableData = dataSchema[tableName];

        if (
          typeof tableData === "object" &&
          tableData !== null &&
          !Array.isArray(tableData)
        ) {
          await this.insertNestedDataStructure(
            queryRunner,
            tableName,
            tableData as NestedDataStructure
          );
        } else if (Array.isArray(tableData)) {
          for (const dataItem of tableData) {
            await this.insertNestedDataStructure(
              queryRunner,
              tableName,
              dataItem as NestedDataStructure
            );
          }
        }
      }

      await queryRunner.commitTransaction();
    } catch (error) {
      await queryRunner.rollbackTransaction();
      console.error("Transaction rolled back due to an error:", error);
      throw error;
    } finally {
      await queryRunner.release();
    }
  }
}

async function insertDataWithTransaction(
  dataSource: DataSource,
  dataSchema: NestedDataStructure
): Promise<void> {
  const dataInserter = new DatabaseDataInserter(dataSource);
  await dataInserter.insertDataStructure(dataSchema);
}

async function setupDatabase(dataSchema: NestedDataStructure): Promise<void> {
  let initialDataSource: DataSource | null = null;
  let finalDataSource: DataSource | null = null;

  try {
    // Create initial connection without entities
    initialDataSource = new DataSource(createDataSourceConfiguration());
    await initialDataSource.initialize();

    // Generate entity schemas
    const entitySchemas = await generateDatabaseEntitySchemas(
      initialDataSource
    );

    // Create new connection with generated entities
    finalDataSource = new DataSource(
      createDataSourceConfiguration(entitySchemas)
    );
    await finalDataSource.initialize();

    await insertDataWithTransaction(finalDataSource, dataSchema);
  } catch (error) {
    console.error("Database setup failed:", error);
    throw error;
  } finally {
    await Promise.all([
      initialDataSource?.isInitialized && initialDataSource.destroy(),
      finalDataSource?.isInitialized && finalDataSource.destroy(),
    ]);
  }
}

export default async function main(testDataSchema: NestedDataStructure = {}) {
  try {
    const dataSchema =
      testDataSchema ||
      json5.parse(fs.readFileSync("smartLabo_json_replace.jsonc", "utf8"));

    await setupDatabase(dataSchema);
  } catch (error) {
    console.error("Setup failed:", error);
    process.exit(1);
  }
}

// main();
