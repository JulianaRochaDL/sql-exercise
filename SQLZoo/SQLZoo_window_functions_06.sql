-- Exercício 6 - Window Functions | SQLZoo
-- 6. Scottish seats
-- You can use COUNT and GROUP BY to see how each party did in Scotland. Scottish constituencies start with 'S'
-- Show how many seats for each party in Scotland in 2017.

select
  party,
  count(*) as seats
from (
  select
    party,
    rank() over(
      partition by constituency
      order by votes desc
      ) as ranking
  from ge
  where constituency like 'S%'
    and yr = 2017
) as winners
where ranking = 1
group by party
order by seats desc;

