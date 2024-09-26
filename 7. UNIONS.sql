-- UNIONS
#This statement is incorrect as it mixes up 2 different variables from the first SELECT statement.
#This is an example of a bad union statement.
SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary; 

#This statement would show the first name and last name of all the employees on both tables. This means that any variable or name
#that isn't unique will be discarded as it already exists on the table when run. Any duplicates will be removed.
#UNION DISTINCT
SELECT  first_name, last_name
FROM employee_demographics
UNION #DISTINCT is run by default when UNION is used
SELECT first_name, last_name
FROM employee_salary; 

#UNION ALL
SELECT  first_name, last_name
FROM employee_demographics
UNION ALL #This would allow the user to view all the first name and last name on both tables regardless of the duplicates
SELECT first_name, last_name
FROM employee_salary; 

#Statement would show the first name and last name of an an employee over 50
SELECT  first_name, last_name
FROM employee_demographics
WHERE age>50;

#Statement would show the first name and last name of an an employee over 50
SELECT  first_name, last_name, 'Old'#Adding Old will be shown as a new column
FROM employee_demographics
WHERE age>50;

SELECT  first_name, last_name, 'Old' AS Label #This will appear as a new column labeled as Label
FROM employee_demographics
WHERE age>50;

# This statement will show a table that has been unioned with itself and will show the young and old people respectively
SELECT  first_name, last_name, 'Old' AS Label
FROM employee_demographics
WHERE age>50
UNION
SELECT first_name, last_name, 'Young'
FROM employee_demographics
WHERE age<50;

SELECT  first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age>40 AND gender = 'Male'
UNION
SELECT  first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age>40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary>70000
ORDER BY first_name, last_name;
