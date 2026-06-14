SELECT name FROM employees WHERE department = 'HR'
UNION
SELECT name FROM employees WHERE department = 'Finance';