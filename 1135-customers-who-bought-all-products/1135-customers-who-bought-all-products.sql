# Write your MySQL query statement below
select customer_id 
from Customer inner join Product on
Customer.product_key = Product.product_key
GROUP BY customer_id
HAVING COUNT(DISTINCT Customer.product_key) = (SELECT COUNT(product_key) FROM Product);