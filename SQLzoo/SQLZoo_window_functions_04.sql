-- Exercício 4 - Window Functions | SQLZoo
-- 4. Edinburgh Constituency
-- Edinburgh constituencies are numbered S14000021 to S14000026.
-- Use PARTITION BY constituency to show the ranking of each party in Edinburgh in 2017. Order your results so the winners are shown first, then ordered by constituency.

SELECT 
  constituency,
  party, 
  votes,
  rank() over (partition by constituency order by votes desc) as ranking
FROM ge
WHERE constituency BETWEEN 'S14000021' AND 'S14000026'
  AND yr  = 2017
order by ranking, constituency;
