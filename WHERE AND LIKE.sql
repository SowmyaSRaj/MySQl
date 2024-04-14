-- WHERE Clause

SELECT * FROM employeedemographics;
SELECT * FROM employeedemographics
WHERE first_name="Leslie";

-- conditional opertaors: =, >=, !=, >,<
SELECT * FROM employee_salary
WHERE salary > 25000;

SELECT * FROM employeedemographics
WHERE birth_date >= 1980-02-04;

-- logical operators:  AND, NOT, OR
SELECT * FROM employee_salary
WHERE salary > 50000 AND dept_id = 1;

SELECT * FROM employeedemographics
WHERE gender = "male" OR age > 40;

SELECT * FROM employeedemographics
WHERE  age > 40 OR NOT gender = "male";

SELECT * FROM employeedemographics
WHERE (first_name = "Leslie" And age = 44) OR age > 55;

-- Like statement
-- % and _
SELECT first_name FROM  employeedemographics
WHERE first_name LIKE "%ie";

-- select the column where last name starts with a
SELECT last_name FROM employeedemographics
WHERE last_name LIKE "k%";

-- The difference between % and _
SELECT first_name FROM employeedemographics
WHERE first_name LIKE "A%";
SELECT first_name FROM employeedemographics
WHERE first_name LIKE "A__";

-- like with date
SELECT * FROM employeedemographics
WHERE birth_date LIKE "1989%";