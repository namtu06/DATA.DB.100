SELECT *
FROM monarch AS m 
    LEFT OUTER JOIN monarch AS s ON m.predecessor_id = s.id;