SELECT br.breeder_id, br.breeder_name
FROM breeder br
JOIN breeds bs1 ON br.breeder_id = bs1.breeder_id
JOIN potato p1 ON bs1.potato_id = p1.potato_id
WHERE p1.potato_name = 'Dunbar Rover'
  AND NOT EXISTS (
    SELECT *
    FROM breeds bs2
    INNER JOIN potato p2 ON bs2.potato_id = p2.potato_id
    WHERE bs2.breeder_id = br.breeder_id
      AND p2.potato_name = 'Cara'
  )
ORDER BY br.breeder_id ASC;