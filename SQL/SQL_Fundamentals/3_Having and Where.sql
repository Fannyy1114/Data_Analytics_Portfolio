-- Having vs Where
SELECT gender, avg(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
Having avg(age) > 40
;

SELECT occupation, avg(salary)
FROM Parks_and_Recreation.employee_salary
WHERE occupation LIKE "%manager%" # filter occupation first 
GROUP BY occupation
HAVING avg(salary) < 60000 #filter aggregate funtion, after group by 
;