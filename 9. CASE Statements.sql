-- CASE STATEMENTS
-- These are similar to IF statements or conditionals statements that displays the results after a certain condition has been met
SELECT first_name,
last_name, age,
CASE
	WHEN age <=30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old' #Between refers to numbers in between 31 and 50
    WHEN age >= 50 THEN 'Super Old'
END AS Age_Bracket #Do ALIASING at the END of the CASE statement
FROM parks_and_recreation.employee_demographics;


-- EXAMPLE Scenario
-- FIND PAY INCREASE + BONUS
-- < 50000 = 5% Raise
-- > 50000 = 7% Raise
-- Finance = 10% Bonus
SELECT first_name, last_name, dept_id,  salary AS Initial_Salary, 
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM parks_and_recreation.employee_salary;