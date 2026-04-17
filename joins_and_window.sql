SELECT

    e.emp_no,

    RANK() OVER w as employee_salary_ranking,

    s.salary

FROM

employees e

JOIN

    salaries s ON s.emp_no = e.emp_no

WHERE e.emp_no BETWEEN 10500 AND 10600

WINDOW w as (PARTITION BY e.emp_no ORDER BY s.salary DESC);