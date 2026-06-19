SELECT *
FROM Parks_and_Recreation.employee_demographics ;

SELECT first_name, last_name, birth_date,
age,
age + 10 as age_add
FROM Parks_and_Recreation.employee_demographics ;

SELECT DISTINCT gender 		#generate all the answer just once
FROM Parks_and_Recreation.employee_demographics ;