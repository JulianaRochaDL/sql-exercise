-- Terceiro exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query the average population of all cities in CITY where District is California.

-- Language: MySQL

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';