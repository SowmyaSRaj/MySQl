SELECT * FROM employeedemographics
GROUP BY gender;
-- 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'employees.employeedemographics.employee_id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

-- We should slect the similar column which is mentioned within the group clause if we are not using any aggregate functions
SELECT gender FROM employeedemographics
GROUP BY gender;

SELECT Avg(age)
FROM employeedemographics
GROUP BY gender;

-- we can group by multiple
SELECT occupation, salary FROM employee_salary
GROUP BY occupation, salary;

-- Aggregate functions are AVG, MAX, MIN, COUNT, SUM

SELECT gender, AVG(age), MAX(age),MIN(age), COUNT(age), SUM(age) FROM employeedemographics
GROUP BY gender;

-- Order By
SELECT * FROM employeedemographics
ORDER BY age DESC;

-- with two columns, it always sorts based on the first column

SELECT * FROM employeedemographics
ORDER BY gender, age DESC;

SELECT * FROM employeedemographics
ORDER BY age, gender DESC;

-- We can also mention the column number, but it is not recommended as it causes issues with advanced sql, when we create things like stroke procedures and triggers. When we adding, creating columns then we would be ordering the wrong column.
SELECT * FROM employeedemographics
ORDER BY 5, 4 DESC;