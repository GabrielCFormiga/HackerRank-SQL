-- @file Weather Observation Station 3.sql
--
-- Created on 2025-04-03 at 02:29:09
-- @author GabrielCampelo

SELECT DISTINCT
    city AS station_city
FROM station
WHERE id % 2 = 0;