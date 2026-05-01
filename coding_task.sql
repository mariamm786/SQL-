SELECT 
    SUM(CASE 
            WHEN s.salary > (SELECT AVG(salary) FROM salaries) THEN 1 
            ELSE 0 
        END) AS no_m_salaries_above_avg,
    COUNT(*) AS no_of_m_salary_contracts
FROM salaries s
JOIN employees e 
    ON s.emp_no = e.emp_no
WHERE e.gender = 'M';