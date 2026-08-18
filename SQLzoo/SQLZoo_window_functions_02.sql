-- Exercício 2 - Window Functions | SQLZoo
-- 2. Who won?
-- You can use the RANK function to see the order of the candidates. If you RANK using (ORDER BY votes DESC) then the candidate with the most votes has rank 1.
-- Show the party and RANK for constituency S14000024 in 2017. List the output by party

SELECT 
  party, 
  votes,
  RANK() OVER (ORDER BY votes DESC) as posn 
FROM ge 
WHERE constituency = 'S14000024'
  AND yr = 2017 
ORDER BY party;
              
