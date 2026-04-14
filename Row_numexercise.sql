SELECT 
    emp_no,
    dept_no,
    ROW_NUMBER() OVER (ORDER BY emp_no DESC) AS row_num
FROM 
    dept_manager;
