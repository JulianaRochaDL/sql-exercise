-- Terceiro exercicio avançado realizado no RackerRank, onde foi solicitado o seguinte select: 
-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.
-- Note: Print NULL when there are no more names corresponding to an occupation.

-- MySQL

SELECT MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,
       MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,
       MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,
       MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor   
FROM (SELECT Name,
             Occupation,
             ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) as rn
      FROM OCCUPATIONS) AS Professions
GROUP BY rn;



