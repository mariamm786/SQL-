SELECT
    e.emp_no,
    e.hire_date,
    DENSE_RANK() OVER (
        PARTITION BY e.emp_no
        ORDER BY s.salary DESC
    ) AS employee_salary_ranking,
    s.salary,
    s.from_date
FROM employees e
JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE e.emp_no BETWEEN 10001 AND 10003
  AND s.from_date < '2000-01-01'
ORDER BY e.emp_no ASC;