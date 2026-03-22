select e.id employee_id, es.first_name supervisor_first, ess.first_name super_supervisor_first
FROM employee e INNER JOIN employee es ON e.supervisor_id = es.id
LEFT JOIN employee ess ON es.supervisor_id = ess.id 
;