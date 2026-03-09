SELECT p.potato_id, potato_name
FROM potato AS p
    LEFT OUTER JOIN breeds ON breeds.potato_id = p.potato_id
WHERE breeder_id IS NULL
ORDER BY p.potato_id ASC;