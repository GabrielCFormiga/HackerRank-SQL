-- @file Employee Salaries.sql
--
-- Created on 2025-04-03 at 06:32:13
-- @author GabrielCampelo

SELECT
    name AS employee_name
FROM employee
WHERE salary > 2000
    AND months < 10
ORDER BY employee_id;