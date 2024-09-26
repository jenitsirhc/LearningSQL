-- LIMIT + ALIASING

-- LIMIT
SELECT * 
FROM parks_and_recreation.employee_demographics
LIMIT 3;
# LIMIT function will only limit the results to 3 employees

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC # Adding ORDER BY will help determine the top 3 oldest people in the list
LIMIT 3;

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1; -- We are starting at position 2 and 1 row after it.

-- ALIASING -- REDUCES KEYSTROKES

SELECT gender, AVG(age)
AS avg_age # AS function is NOT NECESSARY. You can run AVG(age) avg_age and will produce the same results
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40;

