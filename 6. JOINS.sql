-- JOINS

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;


-- INNER JOIN; return rows that are the same
SELECT *
FROM parks_and_recreation.employee_demographics AS demo
INNER JOIN parks_and_recreation.employee_salary AS sal
	-- ON employee_id = employee_id # We need to be more specific where the column is coming from specifically which is why this will not work
    -- ON employee_demographics.employee_id = employee_salary.employee_id; This will work however it is too long
    ON demo.employee_id = sal.employee_id
    -- using aliasing will definitely help decrease the amount of typing you have to do
    -- allows us to join two tables based on two columns
;

SELECT demo.employee_id, age, occupation -- Aliasing does not necessarily need to be initialized first. It can be used in the middle of the code
FROM parks_and_recreation.employee_demographics AS demo 
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON demo.employee_id = sal.employee_id;
    
    
-- OUTER JOINS( RIGHT AND LEFT JOIN)
SELECT *
FROM parks_and_recreation.employee_demographics AS demo -- FROM TABLE(in this case demo) IS LEFT TABLE
LEFT JOIN parks_and_recreation.employee_salary AS sal -- MAKING SAL the right table, showing the same results as the previous sql that was ran
	ON demo.employee_id = sal.employee_id;
    
SELECT *
FROM parks_and_recreation.employee_demographics AS demo 
RIGHT JOIN parks_and_recreation.employee_salary AS sal -- Similarly, RIGHT join will show results of similar values with the left table as the right table
	ON demo.employee_id = sal.employee_id;
# This is also the reason why there is no employee no.2 in the results( any information that is nonexistent will present itself as null)
# Taking everything from the right table (employee_salary table) and matches on the left table


-- SELF JOIN; Tying the table to itself
SELECT *
FROM parks_and_recreation.employee_salary emp1
JOIN parks_and_recreation.employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
# SECRET SANTA

SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS firstname_santa, 
emp1.last_name AS lastname_santa,
emp2.employee_id AS emp_id, 
emp2.first_name AS firstname, 
emp2.last_name AS lastname
FROM parks_and_recreation.employee_salary emp1
JOIN parks_and_recreation.employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
# Organizing it like this will help in understanding which is the secret santa for who.

-- JOINING MULTIPLE TABLES TOGETHER
SELECT *
FROM parks_and_recreation.employee_demographics AS demo 
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON demo.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
; # When combining multiple tables together, you can use inner join for the tables

SELECT *
FROM parks_departments;

