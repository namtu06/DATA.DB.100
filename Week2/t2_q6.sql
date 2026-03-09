SELECT potato_name, breeder_name
FROM breeds 
    INNER JOIN potato ON breeds.potato_id = potato.potato_id
    INNER JOIN breeder ON breeds.breeder_id = breeder.breeder_id
ORDER BY potato_name, breeder_name ASC;