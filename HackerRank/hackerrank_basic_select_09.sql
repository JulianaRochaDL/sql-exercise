-- Nono exercicio realizado no RackerRank, onde foi solicitado o seguinte select: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- Language: MySQL

SELECT count(CITY) - count(distinct CITY)
FROM STATION;