# Where means condition
SELECT *
FROM Parks_and_Recreation.employee_salary 
WHERE first_name = "Ron"
;

SELECT *
FROM Parks_and_Recreation.employee_salary 
WHERE salary >= 50000
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE gender != "Female"
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date > "1985-01-05"
;

-- AND, OR, NOT -- Logical Operators
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date > "1985-01-05"
OR NOT gender = "Female"
;


SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE (first_name = "Jerry" AND age = 61) or gender = "Female"
;

-- Like Statement --
-- % and _ -- % could be anything, 
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE "a%"
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE "a__" #2_so find 2 char
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE "a___%"  #start with a 3 char in the middle and % everything
;

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date LIKE "1988%"
;