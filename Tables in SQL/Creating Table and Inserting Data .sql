--Creating a Database 
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10,2) CHECK (salary > 0),
    designation VARCHAR(100)
);

--Inserting data in to the table employee


INSERT INTO employees
(employee_name, department, salary, designation)
VALUES
('Amit Sharma', 'IT', 65000, 'Software Engineer'),
('Neha Patel', 'HR', 58000, 'HR Executive'),
('Ravi Kumar', 'Finance', 72000, 'Financial Analyst'),
('Anjali Verma', 'IT', 70000, 'Data Analyst'),
('Suresh Reddy', 'Operations', 85000, 'Operations Manager'),
('Priya Joshi', 'Marketing', 62000, 'Marketing Executive'),
('Vikram Jadhav', 'IT', 78000, 'Backend Developer'),
('Sneha Kulkarni', 'Research', 95000, 'ML Engineer'),
('Rahul Singh', 'Marketing', 59000, 'Sales Executive'),
('Pooja Deshmukh', 'HR', 90000, 'HR Manager');

-- Displaying the columns in the table 
SELECT * FROM employees;