1. Use `CREATE VIEW` to define reusable and complex queries.
2. Views help abstract database logic and restrict access to sensitive data.
3. Useful for simplifying complex joins and filtering operations.

A **View** is a virtual table representing the result of a SELECT query.
- Simplified querying of complex logic
- Hiding sensitive columns
- Reusability and security

CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  marks INT
);

CREATE TABLE Department (
  dept_name VARCHAR(50) PRIMARY KEY,
  hod VARCHAR(50)
);
1. View for High Scoring Students
2. View Combining Students and Their HOD
