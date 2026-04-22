# Write your MySQL query statement below
select name as name,
bon.bonus as bonus
from Employee emp
left join Bonus bon
on emp.empId = bon.empId
where bonus < 1000 or bonus IS NULL; 