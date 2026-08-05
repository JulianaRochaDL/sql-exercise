-- Primeiro exercício básico envolvendo Join realizado no RackerRank, onde foi solicitado o seguinte select:
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- MySQL

SELECT SUM(CITY.population) as PopulationAsia
FROM CITY
JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code 
WHERE CONTINENT = 'Asia';