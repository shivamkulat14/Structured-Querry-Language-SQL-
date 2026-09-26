-- Drop the table if it already exists
DROP TABLE IF EXISTS students;

-- Create the students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_name VARCHAR(100) NOT NULL,
    marks DECIMAL(5,2) CHECK (marks >= 0 AND marks <= 100),
    age INT CHECK (age >= 5),
    admission_date DATE NOT NULL
);

-- Check the table
SELECT * FROM students;


--Q1. Retrieve all students' student_name and their class_name.

SELECT student_name , class_name FROM students;


--Q2. Increase the marks of all students in 10-A by 5 marks.
UPDATE students 
SET marks = marks + 5
WHERE class_name = '10-A';

--Q3. Delete all students who have marks below 70.
DELETE FROM students
WHERE marks < 70 ;

--Q4. Add a new column email to the students table.
ALTER TABLE students
ADD COLUMN email VARCHAR(100);

--Q5. Rename the class_name column to grade_section.
ALTER TABLE students 
RENAME COLUMN class_name to grade_section;

--Q6. Retrieve the names of students who were admitted after January 1, 2022.
SELECT student_name ,admission_date FROM students
WHERE admission_date > '01-01-2022';

--Q7. Change the data type of the marks column to INTEGER.
ALTER TABLE students
ALTER COLUMN marks TYPE INTEGER USING marks::INTEGER;

--Q8. List all students with their age and marks in descending order of marks.
SELECT student_name , age, marks FROM students 
ORDER BY marks DESC;

--Q9. Insert a new student: Rahul Verma, 9-A, 82, 14, 2022-06-25
INSERT INTO students (student_name, grade_section, marks, age, admission_date)
VALUES('Rahul Verma', '9-A', 82, 14, '2022-06-25');

--Q10. Increase the age of every student by 1.
UPDATE students 
SET age = age + 1;


--Then continue with the same concepts for additional practice:

--Q11. Retrieve student_name and marks for students whose marks are greater than 85.

SELECT student_name, marks FROM students 
WHERE marks >= 85;

--Q12. Retrieve students whose age is 14.

SELECT student_name , age FROM students
WHERE age = 14;

--Q13. Update the marks of all students in 8-A by 10%.

UPDATE students 
SET marks = marks + (marks * 0.1)
WHERE grade_section = '8-A';


--Q14. Delete students whose marks are below 60.

DELETE FROM students 
WHERE marks <60;

--Q15. Add a new column phone_number with datatype VARCHAR(15).

ALTER TABLE students
ADD COLUMN phone_number VARCHAR(15);

--Q16. Rename admission_date to joining_date.

ALTER TABLE students
RENAME COLUMN admission_date TO joinning_date ;

--Q17. Retrieve students who joined after 2021-01-01.

SELECT student_name , joinning_date FROM students
WHERE joinning_date > '2021-01-01';

--Q18. Display all students sorted by age in ascending order.

SELECT student_name , age FROM students 
 ORDER BY age ASC;

--Q19. Insert another student: Kunal Mehta, 10-B, 90, 15, 2022-07-15

INSERT INTO students (student_name, grade_section, marks, age, joinning_date)
VALUES('Kunal Mehta', '10-B', 90, 15, '2022-07-15');

--Q20. Increase the marks of every student by 2 marks.

UPDATE students
SET marks = marks + 2;
