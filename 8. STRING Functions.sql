 -- STRING Functions
 
 -- 1. LENGTH Function
 
 SELECT LENGTH('SKYFALL');
 
 SELECT first_name, LENGTH(first_name) AS Name_Length
 FROM parks_and_recreation.employee_demographics
 ORDER BY 2;
 
 -- 2. UPPER and LOWER Function cases
 SELECT UPPER('sky');
 SELECT lower('SKY');
 
 SELECT first_name, UPPER(first_name)
 FROM parks_and_recreation.employee_demographics;
 
 -- 3. TRIM Function
 
 #TRIM removes any excess spaces on the leading and trailing white spaces within the parenthesis
 SELECT TRIM('                    sky              ');
 #Observe the difference
 SELECT ('                    sky              ');
 
 #LTRIM will remove the whitespaces on the left side specifically
 SELECT LTRIM('                    sky              ');
 
#RTRIM will do the same but on the right side
 SELECT RTRIM('                    sky     .         ');
 
 -- 4. SUBSTRING
 
 SELECT first_name,
 LEFT(first_name, 4), #specifies how many characters(in this case, 4) do we want to select from the left handside
 RIGHT(first_name, 4),
 SUBSTRING(first_name, 3, 2),
 birth_date,
 SUBSTRING(birth_date, 6, 2) AS Birth_Month # From the 6th Position, 2 Characters will be included
 FROM parks_and_recreation.employee_demographics;
 
 -- 5. REPLACE Function
  SELECT first_name, REPLACE(first_name, 'a', 'z') #Choose what to replace and what to replace it with (in this case, all characters with 'A' will be replaced with 'z')
  FROM parks_and_recreation.employee_demographics;
 
 -- 6. LOCATE Function
 SELECT LOCATE('x', 'Alexander'); # LOCATE will show the position where x is located in the word alexander
 
 SELECT first_name, LOCATE('a', first_name) #Remember that what you are looking for should be in front of where u are looking from
 FROM parks_and_recreation.employee_demographics;
 
 SELECT first_name, LOCATE('an', first_name)
 FROM parks_and_recreation.employee_demographics;
 
 -- 7. CONCAT Function
 
 # Using Concat will combine the two rows with different variable names
 SELECT first_name, last_name,
 CONCAT(first_name,' ',last_name) AS Full_name
 FROM parks_and_recreation.employee_demographics;
 
 
 
 