select a.agent_id, a.agent_name, count(breeder_id) as number_of_breeders
from agent a
    left outer join breeder b on a.agent_id = b.agent_id
group by a.agent_id
order by a.agent_id asc;