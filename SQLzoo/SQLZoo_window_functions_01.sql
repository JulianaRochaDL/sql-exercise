-- Exercício 1 - Window Functions | SQLZoo
-- 1. Warming up:
-- Show the lastName, party and votes for the constituency 'S14000024' in 2017.

SELECT lastName, party, votes
FROM ge
WHERE constituency = 'S14000024' 
  AND yr = 2017
ORDER BY votes DESC;
