-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output


SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;

-- now there is an additional paramater in limit which we can access using a comma that specifies the starting place

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3,2;

-- this now says start at position 3 and take 2 rows after that

SELECT *
FROM employee_demographics
ORDER BY age desc
LIMIT 2,1;

-- ALIAS

SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender;