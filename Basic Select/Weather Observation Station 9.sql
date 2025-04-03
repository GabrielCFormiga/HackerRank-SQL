-- @file Weather Observation Station 9.sql
--
-- Created on 2025-04-03 at 05:54:05
-- @author GabrielCampelo

WITH city_name_starting_with_vowel AS (

    SELECT DISTINCT
        city AS city_name
    FROM station
    WHERE city REGEXP '^[AEIOUaeiou]'

)

SELECT DISTINCT
    city AS city_name
FROM station

EXCEPT 

SELECT 
    city_name 
FROM city_name_starting_with_vowel;