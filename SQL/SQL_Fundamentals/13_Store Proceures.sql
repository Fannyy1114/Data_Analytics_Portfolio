-- Store Procedures

SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary >= 50000;

#Creare Procedure
CREATE PROCEDURE large_salary()
SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary >= 50000;

#Call Procedure
CALL large_salary();

#right click on the schemas table and choose Alter Stored Procedure 
#DELIMITTER $$
DELIMITER $$
CREATE PROCEDURE large_salary4()
BEGIN
	SELECT *
	FROM Parks_and_Recreation.employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM Parks_and_Recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salary4();


#because its create already, if want to change, need to go Alter Stored Procedure
DELIMITER $$
CREATE PROCEDURE large_salary5(p_employee_id INT)
BEGIN
	SELECT salary
	FROM Parks_and_Recreation.employee_salary
    WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ;

CALL large_salary5(1);