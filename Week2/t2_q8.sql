SELECT breeder_name
FROM breeds
    INNER JOIN potato ON breeds.potato_id = potato.potato_id
    INNER JOIN breeder ON breeds.breeder_id = breeder.breeder_id
WHERE potato_name = 'Dunbar Rover'
ORDER BY breeder_name ASC;