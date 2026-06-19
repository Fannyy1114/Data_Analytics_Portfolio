SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE employee_id IN (
		SELECT employee_id 			#can only have one
		FROM Parks_and_Recreation.employee_salary
		WHERE dept_id = 1
);


SELECT 
first_name, 
salary,
(SELECT avg(salary)
from Parks_and_Recreation.employee_salary
)
FROM Parks_and_Recreation.employee_salary
;


SELECT gender, avg(age), max(age), min(age), count(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender;

-- Create a new table
SELECT  AVG(max_age) #you average the max age using ``
FROM
(SELECT 
gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as num_age
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender) as new_table
;
