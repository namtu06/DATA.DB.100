SELECT agent_id, agent_name
FROM agent 
WHERE agent_id NOT IN
    (SELECT agent_id
    FROM breeder
    GROUP BY agent_id
    HAVING COUNT(DISTINCT breeder_name)>0)