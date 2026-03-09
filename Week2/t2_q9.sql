SELECT DISTINCT(p.potato_id), potato_name
FROM breeds AS b
    INNER JOIN potato AS p ON b.potato_id = p.potato_id
    INNER JOIN breeder as bder ON b.breeder_id = bder.breeder_id
ORDER BY p.potato_id ASC;