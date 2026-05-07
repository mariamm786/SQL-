WITH avg_salary_cte AS (
    SELECT AVG(salary) AS avg_salary
    FROM salaries
),
max_salary_per_employee AS (
    SELECT emp_no, MAX(salary) AS max_salary
    FROM salaries
    GROUP BY emp_no
),
female_below_avg AS (
    SELECT COUNT(*) AS highest_f_salaries_below_total_avg
    FROM max_salary_per_employee m
    JOIN employees e ON m.emp_no = e.emp_no
    JOIN avg_salary_cte a
    WHERE e.gender = 'F'
      AND m.max_salary < a.avg_salary
)

SELECT highest_f_salaries_below_total_avg
FROM female_below_avg;

#practice 