select b.breeder_id, br.breeder_name 
from breeds b 
    inner join breeder br on br.breeder_id = b.breeder_id
group by b.breeder_id
having count(potato_id) = 1;