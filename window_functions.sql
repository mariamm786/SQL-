SELECT
    emp_no,
    MIN(salary) AS min_salary
FROM (
    SELECT
        dm.emp_no,
        s.salary,
        MIN(s.salary) OVER (PARTITION BY dm.emp_no) AS min_salary_window
    FROM dept_manager dm
    JOIN salaries s
        ON dm.emp_no = s.emp_no
)t
GROUP BY emp_no;