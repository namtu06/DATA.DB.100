SELECT m.name, p.name AS predecessor_name
FROM monarch AS m
    INNER JOIN monarch AS p ON m.predecessor_id = p.id
ORDER BY m.id ASC; 