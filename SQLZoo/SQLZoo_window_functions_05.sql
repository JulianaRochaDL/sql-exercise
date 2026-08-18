-- Exercício 5 - Window Functions | SQLZoo
-- 5. Winners Only
-- You can use SELECT within SELECT to pick out only the winners in Edinburgh.
-- Show the parties that won for each Edinburgh constituency in 2017.

SELECT constituency,party
FROM ge
WHERE constituency BETWEEN 'S14000021' AND 'S14000026'
  AND yr  = 2017
  AND votes = (
    select max(votes)
    from ge ge2
    where ge.constituency = ge2.constituency
      and ge2.yr = 2017)
ORDER BY constituency;
