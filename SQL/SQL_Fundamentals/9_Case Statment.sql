SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 35 THEN "Young"
    WHEN age BETWEEN 36 AND 50 THEN "Middle"
    WHEN age >=50 THEN "Old"
END AS age_bracket
FROM Parks_and_Recreation.employee_demographics;


-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10% bonus
SELECT 
CONCAT(first_name, " ", last_name),
salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07 
END as new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 1.1
END as Bonus
FROM Parks_and_Recreation.employee_salary
;


SELECT *
FROM Parks_and_Recreation.employee_salary;
SELECT *
FROM Parks_and_Recreation.parks_departments
;