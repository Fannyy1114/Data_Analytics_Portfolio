-- Group By
SELECT gender, AVG(age), Max(age), Min(age), COUNT(age) #count age group by gender, female 4 male 7
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation, salary
;

-- ORDER BY
-- asc 
-- desc

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY gender, age DESC
;
