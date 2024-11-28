import { DB_CONFIG } from "../const";
import { DataSource, DataSourceOptions, QueryRunner } from "typeorm";
import insertDB from "../jsonType";

interface DataStructure {
  [key: string]:
    | string
    | number
    | boolean
    | DataStructure
    | DataStructure[]
    | null;
}

const testDataSchema: DataStructure = {
  classes: [
    {
      name: "Class B",
      students: [
        {
          name: "ABob",
          class_id: 2,
        },
        {
          name: "BBob",
          class_id: 2,
        },
        {
          name: "CBob",
          class_id: 2,
          grades: {
            subject: "Math",
            score: 85,
            student_id: 1,
          },
        },
      ],
    },
  ],
};

const createDatabaseSourceConfig = (
  databaseName: string = DB_CONFIG.database
): DataSourceOptions => ({
  ...DB_CONFIG,
  database: databaseName,
  dropSchema: true,
  entities: [],
});

const DATABASE_INITIALIZATION_SCRIPT = `
  -- Create tables with SERIAL primary keys
  CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
  );

  CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    class_id INT
  );

  CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_id INT,
    subject VARCHAR(255) NOT NULL,
    score INT
  );

  -- Add foreign key constraints
  ALTER TABLE students
  ADD CONSTRAINT fk_students_class_id
  FOREIGN KEY (class_id) REFERENCES classes(id);

  ALTER TABLE grades
  ADD CONSTRAINT fk_grades_student_id
  FOREIGN KEY (student_id) REFERENCES students(id);

  -- Insert initial data
  INSERT INTO classes (name) VALUES ('Class A');
`;

describe("Database Migration Integration Test", () => {
  let primaryDataSource: DataSource;
  let primaryQueryRunner: QueryRunner;
  let targetDataSource: DataSource;
  let targetQueryRunner: QueryRunner;

  beforeAll(async () => {
    // Initialize primary database connection
    primaryDataSource = new DataSource(createDatabaseSourceConfig("postgres"));
    await primaryDataSource.initialize();
    primaryQueryRunner = primaryDataSource.createQueryRunner();

    // Attempt to create target database
    try {
      await primaryQueryRunner.query(`CREATE DATABASE ${DB_CONFIG.database}`);
      console.log(`Database created successfully: '${DB_CONFIG.database}'`);
    } catch (error) {
      console.error("Error creating database:", error);
    }

    // Initialize target database connection
    targetDataSource = new DataSource(createDatabaseSourceConfig());
    await targetDataSource.initialize();
    targetQueryRunner = targetDataSource.createQueryRunner();

    // Execute database initialization script
    await targetQueryRunner.query(DATABASE_INITIALIZATION_SCRIPT);
  });

  afterAll(async () => {
    // Close target database connection
    await Promise.all([
      targetDataSource?.isInitialized && targetDataSource.destroy(),
    ]);

    try {
      // Drop test database
      await primaryQueryRunner.query(
        `DROP DATABASE IF EXISTS ${DB_CONFIG.database}`
      );
      console.log(`Database dropped successfully: '${DB_CONFIG.database}'`);
    } catch (error) {
      console.error("Error dropping database:", error);
    }

    // Close primary database connection
    await Promise.all([
      primaryDataSource?.isInitialized && primaryDataSource.destroy(),
    ]);
  });

  it("Should insert test data correctly", async () => {
    // Execute data insertion
    await insertDB(testDataSchema);

    const studentsResult = await targetQueryRunner.query(
      "SELECT * from students"
    );
    const gradesResult = await targetQueryRunner.query("SELECT * from grades");
    const tableNames = await targetQueryRunner.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'"
    );

    expect(tableNames).toContainEqual({ table_name: "classes" });
    expect(tableNames).toContainEqual({ table_name: "students" });
    expect(tableNames).toContainEqual({ table_name: "grades" });

    expect(studentsResult).toContainEqual({
      id: 1,
      name: "ABob",
      class_id: 2,
    });

    expect(gradesResult).toContainEqual({
      id: 1,
      student_id: 1,
      subject: "Math",
      score: 85,
    });
  });
});
