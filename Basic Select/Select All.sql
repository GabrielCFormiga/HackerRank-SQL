-- @file Select All.sql
--
-- Created on 2025-04-03 at 02:03:05
-- @author GabrielCampelo


SELECT
    id          AS city_id,
    name        AS city_name,
    countrycode AS country_code,
    district    AS city_district,
    population  AS city_population 
FROM city;