-- @file Revising the Select Query I.sql
--
-- Created on 2025-04-03 at 01:24:28
-- @author GabrielCampelo

SELECT
    id          AS city_id,
    name        AS city_name,
    countrycode AS country_code,
    district    AS city_district,
    population  AS city_population 
FROM city
WHERE population > 100000
    AND countrycode = 'USA';