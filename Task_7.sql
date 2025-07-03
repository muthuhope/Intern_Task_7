use project_6;
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    marks INT
);

CREATE TABLE Department (
    dept_name VARCHAR(50) PRIMARY KEY,
    hod VARCHAR(100)
);
CREATE VIEW HighScorers AS
SELECT student_id, name, marks
FROM Student
WHERE marks > 75;

CREATE VIEW StudentWithHOD AS
SELECT s.name AS student_name, s.department, d.hod
FROM Student s
JOIN Department d ON s.department = d.dept_name;

SELECT * FROM HighScorers;

SELECT h.student_id, h.name, d.hod
FROM HighScorers h
JOIN Department d ON h.department = d.dept_name;

DROP VIEW IF EXISTS HighScorers;
