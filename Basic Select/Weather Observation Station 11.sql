-- @file Weather Observation Station 11.sql
--
-- Created on 2025-04-03 at 06:04:47
-- @author GabrielCampelo

WITH city_name_start_and_end_with_vowel AS (

    SELECT
        city AS city_name
    FROM station
    WHERE city REGEXP '[AEIOUaeiou]$'
        AND city REGEXP '^[AEIOUaeiou]'
    
)


SELECT 
    city AS city_name
FROM station

EXCEPT

SELECT
    city_name
FROM city_name_start_and_end_with_vowel;
