-- @file Weather Observation Station 5.sql
--
-- Created on 2025-04-03 at 02:44:19
-- @author GabrielCampelo



WITH shortest_city_by_length AS (

    SELECT 
        city         AS city_name, 
        LENGTH(city) AS len_of_city_name
    FROM station
    WHERE LENGTH(city) = (SELECT MIN(LENGTH(city)) FROM station)
    ORDER BY city ASC
    LIMIT 1

),

longest_city_by_length AS (

    SELECT 
        city         AS city_name,
        LENGTH(city) AS len_of_city_name
    FROM station
    WHERE LENGTH(city) = (SELECT MAX(LENGTH(city)) FROM station)
    ORDER BY city ASC
    LIMIT 1

)

SELECT * 
FROM shortest_city_by_length
UNION
SELECT * 
FROM longest_city_by_length;