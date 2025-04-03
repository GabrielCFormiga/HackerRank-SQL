-- @file Revising the Select Query II.sql
--
-- Created on 2025-04-03 at 01:55:25
-- @author GabrielCampelo

SELECT
    name AS city_name
FROM city
WHERE population > 120000
    AND countrycode = 'USA';