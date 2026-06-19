-- Triggers and Events
-- Trigger when event take place
SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT *
FROM Parks_and_Recreation.employee_salary;

DELIMITER $$
CREATE TRIGGER employ_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO Parks_and_Recreation.employee_demographics(employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, "Fanny", "Kung", "Product Designer", 80000, NULL); 


-- EVENTS
SELECT *
FROM Parks_and_Recreation.employee_demographics;

DELIMITER $$
CREATE EVENT delete_retires
ON SCHEDULE EVERY 10 SECOND		#can be every 1 month
DO
BEGIN
	DELETE
	FROM Parks_and_Recreation.employee_demographics
    WHERE age >= 60 ;
END $$
DELIMITER ;

#Check Events
SHOW VARIABLES LIKE "event%";