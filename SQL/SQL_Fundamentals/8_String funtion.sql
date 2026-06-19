-- String Funtions
SELECT LENGTH("coffee")
;

SELECT first_name, LENGTH(first_name)
FROM Parks_and_Recreation.employee_demographics
ORDER BY 2 #oeder by sencond colume
;

SELECT UPPER("coffee");
SELECT LOWER("coffee");

SELECT first_name, UPPER(first_name)
FROM Parks_and_Recreation.employee_demographics
ORDER BY 2 #oeder by sencond colume
;

SELECT TRIM("        coffee  ");
SELECT LTRIM("        coffee  ");
SELECT RTRIM("        coffee  ");
SELECT birth_date, substring(birth_date, 6, 2);
SELECT LOCATE("a", "Fanny"); #a is located in 2 position

SELECT first_name, LEFT(first_name, 3) #select first name from left for 4 char
FROM Parks_and_Recreation.employee_demographics
;

SELECT first_name, RIGHT(first_name, 3) #select first name from right for 3 char
FROM Parks_and_Recreation.employee_demographics
;

SELECT first_name, RIGHT(first_name, 3) #select first name from right for 3 char
FROM Parks_and_Recreation.employee_demographics
;

SELECT first_name, substring(first_name, 3, 2) #start from 3 and take 2 char
FROM Parks_and_Recreation.employee_demographics
;

SELECT birth_date, substring(birth_date, 6, 2) as birth_month #get the month
FROM Parks_and_Recreation.employee_demographics
;

SELECT first_name, replace(first_name, "a", "_") #replace "a" as a "_"
FROM Parks_and_Recreation.employee_demographics
;

SELECT first_name, replace(first_name, "a", "_") #replace "a" as a "_"
FROM Parks_and_Recreation.employee_demographics
;

SELECT LOCATE("a", "Fanny"); #a is located in 2 position

SELECT first_name, LOCATE("An", first_name)
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name," ", last_name) as full_name
FROM Parks_and_Recreation.employee_demographics;
