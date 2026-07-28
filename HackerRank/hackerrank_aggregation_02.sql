-- Segundo exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query the total population of all cities in CITY where District is California.

-- Language: MySQL

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';