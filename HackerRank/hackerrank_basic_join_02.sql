-- Segundo exercício básico envolvendo Join realizado no RackerRank, onde foi solicitado o seguinte select:
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- MySQL

SELECT CITY.Name
FROM CITY
JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE Continent = 'Africa';

