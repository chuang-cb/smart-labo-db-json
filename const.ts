export const DB_CONFIG = {
  host: "localhost",
  port: 5432,
  database: process.env.testDB || "aston",
  username: "user",
  password: "postgres",
  type: "postgres",
  logging: false,
  synchronize: false,
} as const;
