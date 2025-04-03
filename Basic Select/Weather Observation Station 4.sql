-- @file Weather Observation Station 4.sql
--
-- Created on 2025-04-03 at 02:35:41
-- @author GabrielCampelo

SELECT
    -- diff := difference between the number of total and distinct city entries in station. 
    COUNT(city) - COUNT(DISTINCT city) AS diff
FROM station;
