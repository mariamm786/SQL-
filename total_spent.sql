# Write your MySQL query statement below
select event_day AS day,
emp_id,
Sum(out_time) - sum(in_time) as total_time 
from Employees 
Group By 1,2