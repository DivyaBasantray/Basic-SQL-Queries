-- GROUP BY

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT first_name
FROM employee_demographics
GROUP BY gender;

SELECT occupation
FROM employee_salary
GROUP BY occupation;

-- notice there is only one office manager row

-- when we group by 2 columns we now have a row for both occupation and salary because salary is different

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- now the most useful reason we use group by is so we can perform out aggregate functions on them

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
ORDER BY first_name;

-- we can manually change the order by saying desc

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

-- Now we can also do multiple columns like this:

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;



-- now we don't actually have to spell out the column names. We can actually just use their column position

-- gender is in position 5 and age is in 4, we can use those as well.

SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;