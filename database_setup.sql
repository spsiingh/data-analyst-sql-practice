CREATE DATABASE practice_db;

USE practice_db;

CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees (emp_id, name, department, salary, city)
VALUES
(1, 'Amit', 'Sales', 50000, 'Indore'),
(2, 'Ravi', 'IT', 70000, 'Bhopal'),
(3, 'Neha', 'Sales', 60000, 'Indore'),
(4, 'Pooja', 'HR', 45000, 'Delhi'),
(5, 'Mohit', 'IT', 80000, 'Bhopal'),
(6, 'Rahul', 'HR', 55000, 'Delhi'),
(7, 'Ankit', 'IT', 65000, 'Indore'),
(8, 'Priya', 'Sales', 75000, 'Bhopal');


-- ==========================================
-- Departments Table
-- ==========================================

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(30),
    manager VARCHAR(50)
);

INSERT INTO departments (dept_id, department, manager)
VALUES
(1, 'Sales', 'Rajesh'),
(2, 'IT', 'Sunil'),
(3, 'HR', 'Kavita'),
(4, 'Finance', 'Amit');
