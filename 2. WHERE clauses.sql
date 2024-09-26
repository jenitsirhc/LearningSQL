-- WHERE Clause

SELECT * FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';
-- This SQL is pertaining to the sql WHERE it is basically filtering out the table from parks_and_recreation database and looking 
-- for a specific value labeled as 'Leslie' from a table column, in this case 'first_name'.

SELECT * FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;
#WHERE clause can have a greater than, equal to, less than, greater than and equal to or less than and equal to comparison symbols
-- respectively in this order(>/=/</>=/<=/!=)
-- used to compare between values in a specific_table

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE gender != 'Female';
-- (!=) symbol means 'not equal to'
-- in this case, the results would be showing all the genders that are not equal to female

-- Integers, numbers, strings, characters, names.. What about dates?


#STANDARD date structure : 'Year-Month-Day'
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date >= '1985-07-26';


-- LOGICAL OPERATORS : AND, OR, NOT (Allows for different logic in your statements
-- Take this as an example:
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date >= '1985-07-26'
AND gender = 'mAlE';
#This statement would include people who were born in 1985, July 26 onwards AND are Male.
-- PLease note that string inside ('') does not necessarily need to be Capitalized. ('mAle') can be used.
-- SQL is not that restrictive when it comes to the specifics for this symbol (=)

#Here is another example utilizing AND and NOT logical operators 
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date >= '1985-01-01'
AND NOT gender = 'male';
-- Results will not display male gendered employees

#Here is another example utilizing OR and NOT logical operators 
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date >= '1985-01-01'
OR NOT gender = 'male';
-- Results will display both male and female employees.

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE (first_name = 'leslie'
AND age = 44) OR age > 55 ;
#This is useful for when you are trying to apply multiple logics in 1 statement. In this case, you are trying to look through the 
-- employees that either have their name as leslie with an age of 44 OR looking for someone older than 55.

-- LIKE Statements --
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name = 'Jer';

-- Compare with this statement
-- % (anything) and _
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'Jer%';
#'Jer%' value would be interpreted by the system as 'This value starts with Jer and could be followed up with anything'

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE '%r%';
# '%e%' interpreted as anything could come upe before and after the r/ interpreted as a value that includes r inside of it.

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a%';
# 'a%' interpreted as a name that starts with the letter A 

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__';
# 'a__' interpreted as a name that starts with A and has 2 more characters beside it, no more, no less

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a___%';
# adding an additional _ and % sign at the end would include april and andy in the results.

SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date LIKE '1989%';
# This could also be used for dates.












