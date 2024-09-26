-- Group By
# Groups together rows that have the same values in the same column
# You can also aggragate the said results from Group By function

SELECT gender 
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
# You can get Male or Female, similar to DISTINCT but you can also be more specific and use AVG, MIN, MAX 

SELECT gender , AVG (age) #This will basically calculate the average age within the employee list between the two genders.
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
#AVG will get the average (age) of the male or female within the employee list.

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;
# We can check the occupation and salary of the employees grouped together.
-- There can be similar occupation but have different values for salaries. It all depends on the variability of your values.

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
#Always make sure that MAX(), COUNT() and MIN() are close together, otherwise, it would not work.


-- ORDER BY 
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name;
#ORDER BY will be in ascending order (ASC) by default

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;
# ASC = Ascending, DESC = Descending; 

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;
#This statement will sort the age and gender in a descending order, prioritising Female gender over the age

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC;
# DESC will change the age numbers to descend from highest to lowest values.
-- In this case, the Age will be in Descending order and the gender will be ascending by default.
-- This sql statement is more logical as it will group the similar genders together.
-- It will also arrange the age in a descending order.
-- Removing gender in the ORDER BY function will sort the age in a descending order.

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age, gender;
#Sorting through the dataset with this sequel will show results that prioritises age in an ascending order
-- Age will take precedence over the gender of the employees because there is no unique value in gender and are onlyy categorized into two.

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age, gender DESC;
# Trying this sql code will give the same results as without the DESC.


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4 DESC; # DO NOT EVER DO THIS.
# 5th column in the dataset =gender, 4th column = Age
-- Numbers indicate the positions of the fields
-- ** DEFINITELY NOT RECOMMENDED AS IT WILL GET CONFUSING WITHOUT PROPER LABELS. ** --
-- In addition, if column 4 was replaced by column 3's content, it will be harder to keep track of.



