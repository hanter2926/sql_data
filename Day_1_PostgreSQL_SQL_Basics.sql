```sql
 Day 1 – PostgreSQL (SQL Basics)

 1. What is a Database?
-- A Database is an organized collection of data stored digitally
-- so that it can be easily accessed, managed, and updated.
-- Example:
-- Student records, bank accounts, employee details.

 2. What is DBMS?
-- DBMS (Database Management System) is a software that allows
-- users to create, store, retrieve, update, and delete data.
-- Examples:
-- PostgreSQL, MySQL, Oracle, MongoDB.

 3. What is PostgreSQL?
-- PostgreSQL is a powerful, open-source, object-relational
-- database management system used to store structured data.

 4. What is SQL?
-- SQL (Structured Query Language) is a standard language
-- used to communicate with databases.
-- Using SQL we can:
-- Create tables
-- Insert data
-- Read data
-- Delete data

 5. What is a Table?
-- A Table is a structured format that stores data in rows and columns.
-- Row → One complete record
-- Column → One field or property

 6. CREATE TABLE

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(50)
);

 7. SELECT

SELECT * FROM students;

 8. INSERT

-- Single Row
INSERT INTO students (name, age, course)
VALUES ('Vikram Pal', 24, 'AI & ML');

 Multiple Rows
INSERT INTO students (name, age, course)
VALUES
('Aman Verma', 21, 'Python'),
('Rohit Kumar', 22, 'Django');

 9. DELETE

-- Using Condition
DELETE FROM students WHERE age = 21;

-- Using ID
DELETE FROM students WHERE id = 3;

 10. Teachers Table Example

-- CREATE TABLE
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(200),
    city VARCHAR(200)
);

-- INSERT DATA
INSERT INTO teachers (id, name, city)
VALUES
(1, 'Rakesh Kumar', 'Meerut'),
(2, 'Anjali Sharma', 'Delhi');

-- SELECT
SELECT * FROM teachers;

-- DELETE
DELETE FROM teachers WHERE id = 1;


-- Practice Task – Employee Table

-- CREATE TABLE
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- INSERT DATA
INSERT INTO employee (emp_id, name, department, salary)
VALUES
(1, 'Aakash Verma', 'IT', 42000),
(2, 'Priya Singh', 'HR', 38000),
(3, 'Rohit Sharma', 'Finance', 52000),
(4, 'Sneha Kumari', 'IT', 47000),
(5, 'Karan Kumar', 'Marketing', 44000);

-- DISPLAY TABLE--
SELECT * FROM employee;

 DELETE ANY 2 ROWS USING ID
DELETE FROM employee WHERE emp_id = 2;
DELETE FROM employee WHERE emp_id = 4;

11. UPDATE employee
SET salary = 55000
WHERE emp_id = 1;

12. WHERE
SELECT * FROM employee
WHERE salary > 45000;

13. ORDER BY
SELECT * FROM employee
ORDER BY salary ASC;

SELECT * FROM employee
ORDER BY salary DESC;

14. LIMIT
SELECT * FROM employee
LIMIT 3;

15. COUNT
SELECT COUNT(*) FROM employee;

