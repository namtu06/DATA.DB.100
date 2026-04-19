SELECT a.agent_id, a.agent_name
FROM agent a
WHERE NOT EXISTS
    (SELECT * 
    FROM breeder br
    WHERE br.agent_id = a.agent_id)