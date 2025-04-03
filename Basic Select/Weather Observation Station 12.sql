-- @file Weather Observation Station 12.sql
--
-- Created on 2025-04-03 at 06:16:41
-- @author GabrielCampelo

WITH city_name_ending_with_vowel AS (

    SELECT DISTINCT
        city AS city_name
    FROM station
    WHERE city REGEXP '[AEIOUaeiou]$'

),

city_name_starting_with_vowel AS (
    
    SELECT DISTINCT
        city AS city_name
    FROM station
    WHERE city REGEXP '^[AEIOUaeiou]'

),

city_name_start_or_end_with_vowel AS (

    SELECT
        city_name
    FROM city_name_starting_with_vowel
    
    UNION
    
    SELECT
        city_name
    FROM city_name_ending_with_vowel

)


SELECT DISTINCT
    city AS city_name
FROM station

EXCEPT

SELECT
    city_name
FROM city_name_start_or_end_with_vowel;