-- @file Weather Observation Station 6.sql
--
-- Created on 2025-04-03 at 05:38:07
-- @author GabrielCampelo

SELECT DISTINCT
    city AS city_name
FROM station
WHERE city REGEXP '^[AEIOUaeiou]';

-- For databases that do not support REGEXP u can use
-- WHERE LEFT(UPPER(city), 1) IN ('A', 'E', 'I', 'O', 'U');