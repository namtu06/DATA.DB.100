SELECT DISTINCT b1.breeder_id, br.breeder_name
FROM breeds b1
  INNER JOIN breeds b2 on b1.breeder_id = b2.breeder_id
  inner join breeder br on b1.breeder_id = br.breeder_id
  INNER JOIN potato p1 on b1.potato_id = p1.potato_id
  inner join potato p2 on b2.potato_id = p2.potato_id
WHERE p1.potato_name = 'Dunbar Rover'
  AND b1.breeder_id NOT IN (
    SELECT b2.breeder_id
    FROM breeds b2
      INNER JOIN potato p2 ON b2.potato_id = p2.potato_id
    WHERE p2.potato_name = 'Duke of York'
  )
ORDER BY b1.breeder_id ASC;