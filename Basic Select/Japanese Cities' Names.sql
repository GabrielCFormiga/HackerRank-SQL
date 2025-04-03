-- @file Japanese Cities' Names.sql
--
-- Created on 2025-04-03 at 02:17:37
-- @author GabrielCampelo

SELECT
    name AS city_name
FROM city
WHERE countrycode = 'JPN';