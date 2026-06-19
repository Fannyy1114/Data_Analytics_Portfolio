-- Temporary Tables

-- way1

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES("Fanny","Kung", "Horror movie");


SELECT *
FROM Parks_and_Recreation.employee_salary;

CREATE TEMPORARY TABLE sal_over_50k
SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM sal_over_50k;

