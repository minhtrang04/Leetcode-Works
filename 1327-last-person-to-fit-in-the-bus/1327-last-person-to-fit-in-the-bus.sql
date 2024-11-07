# Write your MySQL query statement below
select p1.person_name 
from Queue p1 join Queue p2
on p1.turn >= p2.turn
GROUP BY p1.turn
HAVING SUM(p2.weight) <= 1000
ORDER BY SUM(p2.weight) DESC
LIMIT 1
