USE employees;

SHOW TABLES;
SELECT * FROM employee_salary;
SELECT first_name, age FROM employeedemographics;
SELECT age + 10 FROM employeedemographics;

SELECT DISTINCT gender FROM employeedemographics;
SELECT DISTINCT gender, first_name FROM employeedemographics;