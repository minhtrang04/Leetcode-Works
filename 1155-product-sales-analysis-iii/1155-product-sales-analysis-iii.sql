# Write your MySQL query statement below
select product_id, year as first_year, quantity, price
from Sales 
where(select product_id,year)in(
select product_id, MIN(year)
from Sales
group by product_id
)