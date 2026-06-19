-- Unions

SELECT first_name, last_name
FROM Parks_and_Recreation.employee_demographics
UNION DISTINCT #take unique value
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;


SELECT first_name, last_name
FROM Parks_and_Recreation.employee_demographics
UNION ALL #take all
SELECT first_name, last_name
FROM Parks_and_Recreation.employee_salary
;


SELECT first_name, last_name, "Old Guy" as Label
FROM Parks_and_Recreation.employee_demographics
WHERE age > 40 and gender = "Male"
UNION
SELECT first_name, last_name, "Old Lady" as Label
FROM Parks_and_Recreation.employee_demographics
WHERE age > 40 and gender = "Female"
UNION
SELECT first_name, last_name, "Too high" as Label2
FROM Parks_and_Recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name
;