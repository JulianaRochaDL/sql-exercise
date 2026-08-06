-- Quinto exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

-- Language: MySQL

SELECT SUM(Population)
FROM CITY
WHERE COUNTRYCODE = 'JPN';