SELECT DISTINCT(br.breeder_name)
FROM breeds bs1
    INNER JOIN breeder br ON br.breeder_id = bs1.breeder_id
WHERE bs1.tonnes_per_year > (SELECT AVG(tonnes_per_year) FROM breeds)
ORDER BY br.breeder_name ASC;