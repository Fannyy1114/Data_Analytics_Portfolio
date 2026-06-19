-- Limit
SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY age DESC
Limit 2, 4
; #start from row 3 and get 4 row (means no olderest one)


-- Aliasing
SELECT gender, AVG(age) as avg_age
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40 ;
;
