# sql_data
data and informishan
# PostgreSQL – Day 1: SQL Basics

## 📌 About This Project

This project contains my Day 1 learning notes and practical exercises for PostgreSQL and SQL.

**Topics covered:**

* Database
* DBMS
* PostgreSQL
* SQL
* Tables, Rows, and Columns
* CREATE TABLE
* INSERT
* SELECT
* DELETE
* UPDATE
* WHERE
* ORDER BY
* LIMIT
* COUNT
* ALTER TABLE

---

## 1. What is a Database?

A database is an organized collection of data stored digitally so that it can be easily accessed, managed, and updated.

**Examples:**

* Student records
* Bank accounts
* Employee details

## 2. What is DBMS?

DBMS stands for Database Management System.

It is software that allows users to create, store, retrieve, update, and delete data from a database.

**Examples:**

* PostgreSQL
* MySQL
* Oracle
* MongoDB

## 3. What is PostgreSQL?

PostgreSQL is a powerful, open-source, object-relational database management system used to store and manage structured data.

## 4. What is SQL?

SQL stands for Structured Query Language.

It is used to communicate with databases.

**Using SQL, we can:**

* Create tables
* Insert data
* Read data
* Update data
* Delete data

## 5. What is a Table?

A table is a structured format that stores data in rows and columns.

* **Row:** One complete record.
* **Column:** One field or property.

## 6. CREATE TABLE

**Definition:**

CREATE TABLE is an SQL command used to create a new table in a database.

**Example:**

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(50)
);
```

**Explanation:**

* `CREATE TABLE`: Creates a new table.
* `students`: Table name.
* `id`: Unique identification number.
* `SERIAL`: Automatically generates numbers.
* `PRIMARY KEY`: Ensures unique and non-null values.
* `VARCHAR`: Stores text.
* `INT`: Stores integer numbers.

## 7. SELECT

**Definition:**

SELECT is used to retrieve data from a table.

**Example:**

```sql
SELECT * FROM students;
```

**Explanation:**

* `SELECT`: Fetches data.
* `*`: Selects all columns.
* `FROM students`: Gets data from the students table.

## 8. INSERT

**Definition:**

INSERT is used to add new data into a table.

**Single Row:**

```sql
INSERT INTO students (name, age, course)
VALUES ('Vikram Pal', 24, 'AI & ML');
```

**Multiple Rows:**

```sql
INSERT INTO students (name, age, course)
VALUES
('Aman Verma', 21, 'Python'),
('Rohit Kumar', 22, 'Django');
```

**Explanation:**

* `INSERT INTO`: Adds new records.
* `VALUES`: Specifies the data to insert.

## 9. DELETE

**Definition:**

DELETE is used to remove records from a table.

**Example using a condition:**

```sql
DELETE FROM students
WHERE age = 21;
```

**Example using ID:**

```sql
DELETE FROM students
WHERE id = 3;
```

**Explanation:**

* `DELETE FROM`: Removes records.
* `WHERE`: Specifies which records to delete.

**Note:** Always use WHERE carefully. Without it, DELETE removes all rows from the table.

## 10. Teachers Table Example

**Create Table:**

```sql
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(200),
    city VARCHAR(200)
);
```

**Insert Data:**

```sql
INSERT INTO teachers (id, name, city)
VALUES
(1, 'Rakesh Kumar', 'Meerut'),
(2, 'Anjali Sharma', 'Delhi');
```

**Display Data:**

```sql
SELECT * FROM teachers;
```

**Delete Data:**

```sql
DELETE FROM teachers
WHERE id = 1;
```

## 11. UPDATE

**Definition:**

UPDATE is used to modify existing records in a table.

**Example:**

```sql
UPDATE employee
SET salary = 55000
WHERE emp_id = 1;
```

**Explanation:**

* `UPDATE`: Selects the table to modify.
* `SET`: Specifies the new value.
* `WHERE`: Identifies the record to update.

## 12. WHERE

**Definition:**

WHERE is used to filter records based on a condition.

**Example:**

```sql
SELECT * FROM employee
WHERE salary > 45000;
```

This query displays employees whose salary is greater than 45000.

## 13. ORDER BY

**Definition:**

ORDER BY is used to sort records in ascending or descending order.

**Ascending Order:**

```sql
SELECT * FROM employee
ORDER BY salary ASC;
```

**Descending Order:**

```sql
SELECT * FROM employee
ORDER BY salary DESC;
```

* `ASC`: Smallest to largest.
* `DESC`: Largest to smallest.

## 14. LIMIT

**Definition:**

LIMIT is used to restrict the number of records returned.

**Example:**

```sql
SELECT * FROM employee
LIMIT 3;
```

This query displays a maximum of 3 records.

## 15. COUNT

**Definition:**

COUNT is an aggregate function used to count records.

**Example:**

```sql
SELECT COUNT(*) FROM employee;
```

This query returns the total number of records in the employee table.

