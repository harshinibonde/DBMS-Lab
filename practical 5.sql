SELECT e.emp_name, d.dept_name 
    FROM Employees e 
    INNER JOIN Departments d ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name 
    FROM Employees e 
    INNER JOIN Departments d ON e.dept_id = d.dept_id;

SELECT p.proj_name, e.emp_name 
    FROM Projects p 
    RIGHT JOIN Assignments a ON p.proj_id = a.proj_id
    RIGHT JOIN Employees e ON a.emp_id = e.emp_id;

SELECT e.emp_name, d.dept_name 
    FROM Employees e 
    FULL OUTER JOIN Departments d ON e.dept_id = d.dept_id;

SELECT e.emp_name AS Employee, m.emp_name AS Manager 
    FROM Employees e 
    LEFT JOIN Employees m ON e.manager_id = m.emp_id;

SELECT e.emp_name, p.proj_name 
FROM Employees e 
CROSS JOIN Projects p;
