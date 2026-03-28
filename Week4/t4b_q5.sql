SELECT agent_name, breeder_name, country
FROM breeder LEFT OUTER JOIN agent ON breeder.agent_id = agent.agent_id
WHERE breeder.country = 'Finland' OR breeder.country = 'Germany' 
ORDER BY agent.agent_name, breeder.breeder_name ASC;