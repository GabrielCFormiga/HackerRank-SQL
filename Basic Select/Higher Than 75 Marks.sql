-- @file Higher Than 75 Marks.sql
--
-- Created on 2025-04-03 at 06:25:26
-- @author GabrielCampelo

SELECT  
    name AS student_name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3) ASC, id ASC;