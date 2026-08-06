-- Sexto exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query the difference between the maximum and minimum populations in CITY.

-- Language: MySQL

SELECT MAX(Population) - MIN(Population)
FROM CITY;