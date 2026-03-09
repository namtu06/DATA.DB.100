SELECT agent.agent_id, agent_name, breeder_id, breeder_name
FROM agent LEFT OUTER JOIN breeder ON agent.agent_id = breeder.agent_id
ORDER BY agent.agent_id, breeder_id ASC;