SELECT m.name AS name,
       s.name AS successor_name
FROM monarch AS m
    LEFT OUTER JOIN monarch AS s ON s.predecessor_id = m.id
ORDER BY m.id ASC;