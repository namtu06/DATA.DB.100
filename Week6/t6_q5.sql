SELECT br.breeder_id, br.breeder_name
FROM breeds bs1
    INNER  JOIN breeds bs2 ON bs1.breeder_id = bs2.breeder_id
    INNER JOIN breeder br ON bs1.breeder_id = br.breeder_id
    INNER JOIN potato p1 ON p1.potato_id = bs1.potato_id
    INNER JOIN potato p2 on p2.potato_id = bs2.potato_id
WHERE p1.potato_name = 'Dunbar Rover'
  AND p2.potato_name = 'Cara'
ORDER BY br.breeder_id ASC;