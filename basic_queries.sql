-- Q1: Employees with salary greater than 60000

SELECT name, salary
FROM employees
WHERE salary > 60000;

-- ==========================================
-- Q1. IT employees - highest to lowest salary
-- ==========================================

SELECT name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- ==========================================
-- Q1. IT employees - highest to lowest salary
-- ==========================================

SELECT name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;


-- ==========================================
-- Q3. Average salary by department
-- ==========================================

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- ==========================================
-- Q4. Departments with average salary > 60000
-- ==========================================

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING average_salary > 60000;


-- ==========================================
-- Q5. Maximum salary by department
-- ==========================================

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

-- ==========================================
-- Q6. Highest-paid employee in each department
-- ==========================================

SELECT name, department, salary
FROM employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = e.department
);

-- ==========================================
-- Q7. Department manager and employee count
-- Including departments with no employees
-- ==========================================

SELECT 
    d.department,
    d.manager,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.department = e.department
GROUP BY d.department, d.manager;

-- ==========================================
-- Q9. Employees earning above company average
-- ==========================================

SELECT name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- ==========================================
-- Q10. Salary ranking within each department
-- ==========================================

SELECT
    name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

-- =========================================
-- SQL Data Analyst Practice
-- Day 3
-- Topics: GROUP BY, HAVING, Subquery,
-- Window Functions, DENSE_RANK
-- =========================================

USE da_practice;

-- Q1: Departments with total salary > 150000
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING total_salary > 150000;


-- Q2: Second-highest salary employee in each department
SELECT name, department, salary
FROM (
    SELECT name,
           department,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
) t
WHERE salary_rank = 2;


-- Q3: Employees earning more than
-- their department's average salary
SELECT name, department, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);


-- Q4: Highest-paid employee in each city
SELECT name, city, salary
FROM (
    SELECT name,
           city,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY city
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
) t
WHERE salary_rank = 1;


-- Q5: Top 2 highest-paid employees in each department
SELECT name, department, salary
FROM (
    SELECT name,
           department,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
) t
WHERE salary_rank IN (1, 2);


-- Q6: Department-wise average, maximum salary
-- and employee count, only average > 60000
SELECT department,
       AVG(salary) AS average_salary,
       MAX(salary) AS max_salary,
       COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING average_salary > 60000;


-- Q7: Salary difference between highest
-- and lowest employee in each department
SELECT department,
       MAX(salary) - MIN(salary) AS salary_difference
FROM employees
GROUP BY department;


-- Q8: Department with highest average salary
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;


-- Q9: Highest-paid employee in each city
SELECT name, city, salary
FROM (
    SELECT name,
           city,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY city
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
) t
WHERE salary_rank = 1;


-- Q10: Departments with at least 3 employees
-- and average salary > 60000
SELECT department,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING average_salary > 60000
   AND COUNT(*) >= 3;












































































