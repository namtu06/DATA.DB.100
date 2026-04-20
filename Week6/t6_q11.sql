SELECT 
    br.breeder_id, 
    br.breeder_name, 
    a.agent_name,
    (SELECT COUNT(DISTINCT br2.breeder_id)
     FROM breeder br2
     WHERE br2.agent_id = br.agent_id) AS number_of_breeders
FROM breeder br
LEFT JOIN agent a ON br.agent_id = a.agent_id
ORDER BY br.breeder_id ASC;