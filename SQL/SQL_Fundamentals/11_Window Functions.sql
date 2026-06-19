SELECT gender, avg(salary) as avg_salary
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender		#group by 2 group
;

-- Using Window Functions
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)	#show each row
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- ex2
SELECT 
dem.first_name, 
dem.last_name, 
gender, 
salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) as rolling_total	#show each row
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- Row Number
-- ROW_NUMBER() OVER(PARTITION BY)
-- RANK_NUMBER() OVER(PARTITION BY)
-- DENSE_NUMBER() OVER(PARTITION BY)
SELECT 
dem.first_name, 
dem.last_name, 
gender, 
salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER by salary DESC) as row_num, # NO same number 
RANK() OVER(PARTITION BY gender ORDER by salary DESC) as rank_num, 	#RANK number, so if the same, same rank and skip one number:4557
DENSE_RANK() OVER(PARTITION BY gender ORDER by salary DESC) as de_rank_num #RANK number but not skip: 4556
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
;