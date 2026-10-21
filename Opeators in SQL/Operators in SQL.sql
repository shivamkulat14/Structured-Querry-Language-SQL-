--Arithmetic Operators 

-- 1: Addition Operator 
SELECT employee_name, salary, salary + 5000 AS inc_salary 
FROM employees_operator_practice;

-- 2: Subtraction Operator 
SELECT employee_name, salary, salary - 2000 AS dec_salary 
FROM employees_operator_practice;

-- 3: Multiplication Operator 
SELECT employee_name, salary, salary * 12 AS annual_salary 
FROM employees_operator_practice;

-- 4: Division Operator 
SELECT employee_name, salary, salary / 2 AS half_salary 
FROM employees_operator_practice;

-- 5: Modulo Operator 
SELECT employee_name, salary, salary % 3 AS leave_cut_salary 
FROM employees_operator_practice;

-- 6: Simple calulation
-- New salary 
SELECT employee_name, salary, salary + (salary * 0.10) AS new_salary 
FROM employees_operator_practice;

-- Deducted salary 
SELECT employee_name, salary, salary -(salary*0.15) AS cut_salary 
FROM employees_operator_practice;



--Comparison Operator

-- Greater than 
SELECT employee_name, salary FROM employees_operator_practice
WHERE salary > 60000;

-- Not equal-to
SELECT employee_name, department FROM employees_operator_practice
WHERE department != 'IT';

-- Less than or Equal-to
SELECT employee_name, age FROM employees_operator_practice
WHERE age <= 25;

-- Equal-to
SELECT employee_name, salary FROM employees_operator_practice
WHERE salary = 50000;

-- Greater than or Equal-to
SELECT employee_name, performance_score FROM employees_operator_practice
WHERE performance_score >= 4.0;



--Logical Operators 

-- AND Operator
SELECT employee_name, salary, age FROM employees_operator_practice
WHERE salary > 60000 AND age < 35;

-- OR Operator 
SELECT employee_name, department FROM employees_operator_practice
WHERE department = 'IT' OR department = 'HR';

--NOT Operator
SELECT employee_name, department, is_active FROM employees_operator_practice
WHERE NOT is_active;

--Combined Question
SELECT employee_name, department, salary, performance_score FROM employees_operator_practice
WHERE ((department = 'IT' AND salary > 70000) OR performance_score >=4.8);



--Special Operators

--BETWEEN Operator
SELECT employee_name , salary FROM employees_operator_practice
WHERE salary BETWEEN 40000 AND 70000;

-- IN Operator
SELECT employee_name , department FROM employees_operator_practice
WHERE department IN('IT','HR');

-- NOT IN Operator
SELECT employee_name ,city FROM employees_operator_practice
WHERE city NOT IN ('Pune' , 'Mumbai');

--LIKE Operator
SELECT employee_name FROM employees_operator_practice
WHERE employee_name LIKE 'A%';

--ILIKE Operator 
SELECT employee_name FROM employees_operator_practice
WHERE employee_name ILIKE 'a%';

--IS NULL Operator
SELECT employee_name , email FROM employees_operator_practice
WHERE email IS NULL ;

--IS NOT NULL 
SELECT employee_name, performance_score FROM employees_operator_practice
WHERE performance_score IS NOT NULL;



--SET Operator

--UNION Operator 
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'IT'
UNION
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'HR'

--UNION ALL Operator
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'IT'
UNION ALL
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'HR'

--INTERSECT Operator
SELECT  city, department FROM employees_operator_practice
WHERE department = 'IT'
INTERSECT
SELECT  city, department FROM employees_operator_practice
WHERE department = 'HR'

--EXCEPT Operator
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'IT'
EXCEPT
SELECT employee_name, city, department FROM employees_operator_practice
WHERE department = 'HR'


































