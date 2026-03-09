SELECT breeder_id, breeder_name, agent_name
FROM breeder INNER JOIN agent ON breeder.agent_id = agent.agent_id
WHERE country = 'Finland'
ORDER BY breeder_id ASC;