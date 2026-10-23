-- BASIC FUNCTIONS



-- STRING FUNCTIONS

-- Upper case function
SELECT
    employee_name,
    UPPER(employee_name) AS upper_name
FROM employees_operator_practice;


-- Lower case function
SELECT
    employee_name,
    LOWER(employee_name) AS lower_name
FROM employees_operator_practice;


-- Length function
SELECT
    employee_name,
    LENGTH(employee_name) AS length_name
FROM employees_operator_practice;


-- Concat function
SELECT
    employee_name,
    city,
    CONCAT(employee_name, '-', city) AS employee_details
FROM employees_operator_practice;


-- Substring function
SELECT
    employee_name,
    SUBSTRING(employee_name FROM 1 FOR 3) AS first_three_letters
FROM employees_operator_practice;


-- Substring function (Email prefix)
SELECT
    email,
    SUBSTRING(email FROM 1 FOR 5) AS email_prefix
FROM employees_operator_practice
WHERE email IS NOT NULL;


-- Trim function
SELECT
    employee_name,
    TRIM(employee_name) AS trimmed_name
FROM employees_operator_practice;


-- Replace function
SELECT
    employee_name,
    REPLACE(employee_name, 'a', '@') AS modified_name
FROM employees_operator_practice;


-- Combination of Upper case and Length functions
-- ROUND function
SELECT
    employee_name,
    salary,
    ROUND(salary / 12.0, 2) AS rounded_monthly_value
FROM employees_operator_practice;


-- ABS function
SELECT
    employee_name,
    salary,
    ABS(salary - 50000) AS difference_from_50000
FROM employees_operator_practice;


-- CEIL function
SELECT
    employee_name,
    salary,
    CEIL(salary / 1000.0) AS salary_rounded_up
FROM employees_operator_practice;


-- FLOOR function
SELECT
    employee_name,
    salary,
    FLOOR(salary / 1000.0) AS salary_rounded_down
FROM employees_operator_practice;


-- MOD function
SELECT
    employee_name,
    salary,
    MOD(salary, 5000) AS salary_remainder
FROM employees_operator_practice;


-- DATE AND TIME FUNCTIONS


-- CURRENT_DATE function
SELECT
    employee_name,
    hire_date,
    CURRENT_DATE AS today_date
FROM employees_operator_practice;


-- AGE function
SELECT
    employee_name,
    hire_date,
    AGE(CURRENT_DATE, hire_date) AS employment_duration
FROM employees_operator_practice;


-- EXTRACT function
SELECT
    employee_name,
    hire_date,
    EXTRACT(MONTH FROM hire_date) AS hire_month
FROM employees_operator_practice;


-- Date arithmetic (6 months after hire date)
SELECT
    employee_name,
    hire_date,
    hire_date + INTERVAL '6 months' AS date_after_six_months
FROM employees_operator_practice;



-- AGGREGATE FUNCTIONS 
-- COUNT function
SELECT
    COUNT(*) AS total_employees
FROM employees_operator_practice;


-- SUM function
SELECT
    SUM(salary) AS total_salary
FROM employees_operator_practice;


-- AVG function
SELECT
    AVG(salary) AS average_salary
FROM employees_operator_practice;


-- MIN function
SELECT
    MIN(salary) AS minimum_salary
FROM employees_operator_practice;


-- MAX function
SELECT
    MAX(salary) AS maximum_salary
FROM employees_operator_practice;


-- Having and Group by 
-- Q1. GROUP BY + COUNT()
-- Count employees in each department
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees_operator_practice
GROUP BY department;


-- Q2. GROUP BY + AVG()
-- Calculate average salary for each department
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees_operator_practice
GROUP BY department;


-- Q3. GROUP BY + SUM() + HAVING
-- Departments with total salary greater than 200000
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees_operator_practice
GROUP BY department
HAVING SUM(salary) > 200000;


-- Q4. GROUP BY + COUNT() + HAVING
-- Departments with more than 5 employees
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees_operator_practice
GROUP BY department
HAVING COUNT(*) > 5;


-- Q5. WHERE + GROUP BY + HAVING
-- Active employees in departments with average salary above 50000
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees_operator_practice
WHERE is_active = TRUE
GROUP BY department
HAVING AVG(salary) > 50000;

