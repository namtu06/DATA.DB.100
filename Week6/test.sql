SELECT name, MAX(salary) max_salary
FROM department d 
    INNER JOIN employee e ON d.id = e.department_id
GROUP BY name
HAVING MAX(salary) = (SELECT MAX(salary) 
                        from employee);