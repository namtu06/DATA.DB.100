SELECT a.agent_id, a.agent_name, COUNT(DISTINCT br.breeder_name) AS breeders,
     COUNT(DISTINCT bs.potato_id) AS potatoes
FROM agent a
    LEFT OUTER JOIN breeder br ON br.agent_id = a.agent_id
    LEFT OUTER JOIN breeds bs ON bs.breeder_id = br.breeder_id
GROUP BY a.agent_id
ORDER BY a.agent_id ASC;