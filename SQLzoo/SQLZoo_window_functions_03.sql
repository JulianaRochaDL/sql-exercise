-- Exercício 3 - Window Functions | SQLZoo
-- 3. PARTITION BY
-- The 2015 election is a different PARTITION to the 2017 election. We only care about the order of votes for each year.
-- Use PARTITION to show the ranking of each party in S14000021 in each year. Include yr, party, votes and ranking (the party with the most votes is 1).

SELECT 
  yr,
  party, 
  votes,
  RANK() OVER (PARTITION BY yr ORDER BY votes desc) as posn
FROM ge
WHERE constituency = 'S14000021'
ORDER BY party, yr;
