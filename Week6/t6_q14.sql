SELECT p.potato_name, (bs.tonnes_per_year * 1.1) AS increased_tonnes
FROM breeds bs
    INNER JOIN breeder br ON bs.breeder_id = br.breeder_id
    INNER JOIN potato p ON p.potato_id = bs.potato_id

WHERE br.breeder_name = 'Chips'
ORDER BY p.potato_name ASC;