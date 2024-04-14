-- Having vs where

SELECT gender, AVG(age)
FROM employeedemographics
WHERE AVG(age) > 40
GROUP BY gender;

-- error: Invalid use of group function 

-- Where
-- The WHERE clause is used to filter rows based on individual row values.
-- It is applied before any grouping is done.
-- It cannot be used with aggregate functions directly because aggregate functions operate on grouped data.

-- Having
-- The HAVING clause is used to filter groups based on aggregate values calculated using aggregate functions.
-- It is applied after the grouping has been done, typically when using the GROUP BY clause.
-- It can be used with aggregate functions to filter groups based on aggregated results.

SELECT gender, AVG(age)
FROM employeedemographics
GROUP BY gender
HAVING AVG(age) < 40;

SELECT occupation, AVG(salary) FROM employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 70000;

-- having is only gonna work for aggregated functions after the group by actually runs
-- where clause we are likely going to use a lot more but if we do want to filter on those aggregated function columns, we have to use the having clause