
create stored procedure large_salaries()
BEGIN
select * from employees where salary > 100000;
END

call large_salaries();