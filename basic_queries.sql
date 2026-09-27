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












































































