# Write your MySQL query statement below
select w2.id from 
Weather as w1 left join Weather as w2 on
DATEDIFF(w2.recordDate,w1.recordDate)=1 where w1.Temperature < w2.Temperature
