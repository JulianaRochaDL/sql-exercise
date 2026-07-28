-- Primeiro exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query a count of the number of cities in CITY having a Population larger than 100.000.

-- Language: MySQL

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;