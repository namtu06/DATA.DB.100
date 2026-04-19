SELECT DISTINCT(a.agent_id), a.agent_name
FROM breeder br
    LEFT OUTER JOIN agent a ON a.agent_id = br.agent_id 
WHERE EXISTS
    (SELECT *
    FROM breeder
    GROUP BY agent_id
    HAVING COUNT(DISTINCT breeder_name) >0 )
ORDER BY a.agent_id ASC;