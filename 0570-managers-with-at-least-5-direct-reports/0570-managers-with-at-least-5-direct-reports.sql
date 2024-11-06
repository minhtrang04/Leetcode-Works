# Write your MySQL query statement below
select emp.name
from Employee as emp 
join Employee as man
on emp.id =man.managerId
group by emp.id
having count(emp.id)>=5