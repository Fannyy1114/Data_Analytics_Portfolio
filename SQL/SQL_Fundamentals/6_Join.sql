-- Joins
SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT *
FROM Parks_and_Recreation.employee_salary;

-- Inner Join : only bring the value on both table (A:12345, B:13579 > bring: 13)
SELECT dem.employee_id, age, occupation
FROM Parks_and_Recreation.employee_demographics as dem
INNER JOIN Parks_and_Recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- Left Outer Join : take eveything on left table, even not in the right table
SELECT *
FROM Parks_and_Recreation.employee_demographics as dem #left
LEFT OUTER JOIN Parks_and_Recreation.employee_salary as sal #right
	ON dem.employee_id = sal.employee_id
;

-- Right Outer Join 
SELECT *
FROM Parks_and_Recreation.employee_demographics as dem #left
RIGHT JOIN Parks_and_Recreation.employee_salary as sal #right
	ON dem.employee_id = sal.employee_id
;


-- Self Join
SELECT emp1.employee_id as Santa,
emp1.first_name as Santa_name,
emp1.last_name as Santa_last_name,
emp2.employee_id as angel,
emp2.first_name as angel_first_name,
emp2.last_name as angel_last_name

FROM Parks_and_Recreation.employee_salary as emp1
JOIN Parks_and_Recreation.employee_salary as emp2
	ON emp1.employee_id + 2 = emp2.employee_id
;

-- Join Mutiple Table
SELECT *
FROM Parks_and_Recreation.employee_demographics as dem 
INNER JOIN Parks_and_Recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN Parks_and_Recreation.parks_departments as dep
	ON sal.dept_id = dep.department_id
;

SELECT *
FROM Parks_and_Recreation.parks_departments;