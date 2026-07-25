# Write your MySQL query statement below
select customer_id,
count(*) as count_no_trans
from Visits vis
left join Transactions trans on vis.visit_id = trans.visit_id
where trans.transaction_id is null
group by customer_id;
