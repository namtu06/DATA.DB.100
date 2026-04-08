select breeder_id, count(potato_id) as number_of_varieties
from breeds
group by breeder_id
order by breeder_id;