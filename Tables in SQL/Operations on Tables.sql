

--Deleting a row form table 
DELETE FROM employees
	WHERE employee_id = 10;

--Renaming a columnn in the table 
ALTER TABLE employees
	RENAME COLUMN designation to Position ;

--Updating column in the table 

ALTER TABLE employees
	ADD COLUMN gender VARCHAR(50);

UPDATE employees 
	SET position = 'Data engineer'
	WHERE employee_name = 'Anjali Verma';

ALTER TABLE employees
	DROP COLUMN gender;

select * from employees;