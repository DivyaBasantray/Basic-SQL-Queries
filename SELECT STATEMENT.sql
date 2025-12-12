SELECT * 
FROM parks_and_recreation.employee_demographics;


-- Selecting a specific column
SELECT first_name
FROM employee_demographics;

SELECT first_name, last_name
FROM employee_demographics;

SELECT last_name, first_name, gender, age
FROM employee_demographics;

SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;

-- Math in SQL does follow PEMDAS which stands for Parenthesis, Exponent, Multiplication,
-- Division, Addition, subtraction - it's the order of operation for math

-- For example - What will the output be?

SELECT first_name, 
last_name,
salary,
salary + 100
FROM employee_salary;
-- This is going to do 10* 100 which is 1000 and then adds the original 540

SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;


SELECT department_id
FROM employee_salary;

SELECT DISTINCT department_id
FROM employee_salary;