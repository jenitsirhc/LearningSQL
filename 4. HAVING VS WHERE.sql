-- HAVING VS WHERE (ADVANCED AGGREGATE FUNCTIONS)--

SELECT * FROM parks_and_recreation.employee_salary;

SELECT gender, AVG (age)
FROM parks_and_recreation.employee_demographics
WHERE AVG(age) > 40
GROUP BY gender; #THIS IS NOT CORRECT as the group by is yet to be created

SELECT gender, AVG (age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;
#WIll show results for the gender that has an average in age over 40.
-- HAVING function will filter out aggregated function columns

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation;
#WIll give results that show the average salary of managers in the employee list

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;
#HAVING function will only work after the GROUP BY function has ran

#MORE ELABORATE EXAMPLES
SELECT dept_id, count(*)
FROM parks_and_recreation.employee_salary
GROUP BY dept_id
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;
# This sequel will show the number of employee greater than 1 in each deprtment
# We cannot do a WHERE in a aggregate function, only a filter on the aggregate function
-- which comes after the aggregate function.


