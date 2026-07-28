-- Decimo exercicio realizado no RackerRank, onde foi solicitado o seguinte select: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

-- Language: MySQL

(select CITY, LENGTH(CITY)
from STATION
order by LENGTH(CITY), CITY
limit 1)
union
(select CITY, LENGTH(CITY)
from STATION
order by LENGTH(CITY) desc, CITY
limit 1);