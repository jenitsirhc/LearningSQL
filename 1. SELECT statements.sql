SELECT * FROM parks_and_recreation.employee_demographics;
#SELECT everything FROM the database.specific_table

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 +10
FROM parks_and_recreation.employee_demographics;
#This is the order how the mathematics is executed in [PEMDAS = Parenthesis, Exponent, Multiplication, Division, Addition, Subtraction]
#SELECT specific table_columns/table_columns with value+mathematics FROM database.specific_table

SELECT first_name, gender FROM parks_and_recreation.employee_demographics;
SELECT DISTINCT gender FROM parks_and_recreation.employee_demographics;
#DISTINCT == All unique data is being analyzed and only categorizes them on their differences, not similarity
#Example: There are only two genders that the employees can be categorized as: Female and Male, in the table, there are 4 female and 7 males among the employees.
#Still, there are only two genders you can categorize the employees as and DISTINCT organizes them as such.
