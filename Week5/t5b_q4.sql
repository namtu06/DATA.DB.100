
select b.potato_id, p.potato_name, count(b.breeder_id) as number_of_breeders, min(tonnes_per_year) as min_tonnes, 
    max(tonnes_per_year) as max_tonnes, sum(tonnes_per_year) as total_tonnes
from breeds b
    inner join potato p on b.potato_id = p.potato_id
group by b.potato_id
order by b.potato_id asc;