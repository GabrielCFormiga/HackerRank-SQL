-- @file Weather Observation Station 8.sql
--
-- Created on 2025-04-03 at 05:52:36
-- @author GabrielCampelo

SELECT DISTINCT 
    city AS city_name
FROM station
WHERE city REGEXP '[AEIOUaeiou]$'
    AND city REGEXP '^[AEIOUaeiou]';