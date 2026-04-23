# Write your MySQL query statement below
select prod.product_name,
s.year,
s.price 
from Sales s 
join Product prod 
on s.product_id = prod.product_id; 