SELECT * FROM employees_operator_practice;

-- 1: Salary restructuring: Calculate annual salary after a 12% raise for active employees in IT or Finance earning between ₹50,000 and ₹90,000.
SELECT
	employee_name,
	salary,
	department,
	salary * 12 AS annual_salary,
	salary * 12 * 1.2 AS annual_salary_after_raise
FROM employees_operator_practice
WHERE is_active = TRUE
	AND department IN ('IT','Finance')
	AND salary BETWEEN 50000 AND 90000;

-- 2: Employee exclusion: Find employees outside HR and Marketing, aged 25–35 inclusive, with a performance score of at least 4.0.
SELECT 
	employee_name,
	department,
	age,
	performance_score
FROM employees_operator_practice
	WHERE age BETWEEN 25 AND 35
	AND performance_score >= 4.0
	AND department NOT IN ('HR', 'Marketing');

-- 3: Pattern filtering: Find active employees whose names start with A, S, or R and whose email is not NULL.
SELECT 
	employee_name,
	email,
	department
FROM employees_operator_practice
	WHERE (employee_name LIKE 'A%' 
	OR employee_name LIKE 'S%'
	OR employee_name LIKE 'R%')
	AND email IS NOT NULL ;

-- 4: City comparison: Find cities where IT employees work but HR employees do not, sorted alphabetically.
SELECT 
	employee_name,
	city,
	department
FROM employees_operator_practice
	WHERE department = 'IT'
EXCEPT
SELECT 
	employee_name,
	city,
	department
FROM employees_operator_practice
	WHERE department = 'HR'

	ORDER BY city;

-- 5: Combined department results: Return distinct employee names from active IT employees earning over ₹70,000 and active HR employees earning over ₹60,000, using UNION.
SELECT 
	employee_name,
	department,
	salary
FROM employees_operator_practice
	WHERE department = 'IT'
	AND salary >=70000

UNION

SELECT 
	employee_name,
	department,
	salary
FROM employees_operator_practice
	WHERE department = 'HR'
	AND salary >=60000;

-- 6: Salary remainder: Find employees whose salary is divisible by ₹5,000, age is under 40, and experience is at least 3 years

SELECT 
	employee_name,
	salary,
	age,
	years_experience
FROM employees_operator_practice
	WHERE salary % 5000 = 0
	AND age < 40
	AND years_experience >=3;

-- 7: Complex logical filtering: Find employees who are either in IT and earn over ₹75,000, or in HR and have a performance score of at least 4.5, while excluding inactive employees.
SELECT 
	employee_name,
	performance_score,
	salary,
	department
FROM employees_operator_practice
	WHERE (department = 'IT' AND salary >= 75000)
	OR (department = 'HR' AND performance_score >= 4.5)
	AND is_active = True;

-- 8: Set-operation challenge: Find cities shared by IT, HR, and Finance employees using set operators.
SELECT city
FROM employees_operator_practice
WHERE department = 'IT'

INTERSECT

SELECT city
FROM employees_operator_practice
WHERE department = 'HR'

INTERSECT

SELECT city
FROM employees_operator_practice
WHERE department = 'Finance';

-- 9: Multiple conditions: Find active employees in Pune or Nagpur earning between ₹40,000 and ₹80,000, excluding employees with a performance score below 3.0.
SELECT
    employee_name,
    city,
    salary,
    performance_score
FROM employees_operator_practice
WHERE is_active = TRUE
  AND city IN ('Pune', 'Nagpur')
  AND salary BETWEEN 40000 AND 80000
  AND performance_score >= 3.0;

-- 10: Business report: Display employee name, department, monthly salary, annual salary, and annual salary after a 10% bonus for active employees whose salary exceeds ₹80,000 or whose performance score is at least 4.8. Sort by the final calculated amount in descending order
SELECT
    employee_name,
    department,
    salary,
    salary * 12 AS annual_salary,
    salary * 12 * 1.10 AS annual_salary_with_bonus
FROM employees_operator_practice
WHERE is_active = TRUE
  AND (
      salary > 80000
      OR performance_score >= 4.8
  )
ORDER BY annual_salary_with_bonus DESC;















































