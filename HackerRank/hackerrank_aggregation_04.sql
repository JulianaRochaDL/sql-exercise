-- Quarto exercicio de Aggregation realizado no RackerRank, onde foi solicitado o seguinte select: Query the average population for all cities in CITY, rounded down to the nearest integer.

-- Language: MySQL

SELECT floor(avg(population))
from CITY;
