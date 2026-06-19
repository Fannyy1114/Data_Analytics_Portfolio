-- CTEs
 
WITH CTE_example AS 
(
SELECT gender, 
avg(salary) as avg_sal, 
max(salary) as max_sal, 
min(salary) as min_sal, 
count(salary) as num_sal
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
 ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT avg(avg_sal) #average of both male and female average
FROM CTE_example	#can only us after CTE right away!!
;

-- using subsqueries
SELECT avg(avg_sal)
FROM (
SELECT gender, 
avg(salary) as avg_sal, 
max(salary) as max_sal, 
min(salary) as min_sal, 
count(salary) as num_sal
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
 ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery ;


-- -- Create mutiple CTE
 
WITH CTE_example AS 
(
SELECT employee_id, gender, birth_date
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date > "1985-01-01"
),
CTE_example_2 AS
(SELECT employee_id, salary
FROM Parks_and_Recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example
JOIN CTE_example_2 ON CTE_example.employee_id = CTE_example_2.employee_id
;


-- change colum name 
With CTE_example (Gender, Avg_Sal, Max_Sal, Min_Sal, Num_Sal) as	#name the colum first
(
SELECT gender, 
avg(salary), 
max(salary), 
min(salary),
count(salary)
FROM Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
 ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_example
;