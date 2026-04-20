SELECT p.potato_name, p.introduction_year, br.breeder_name
FROM breeds bs
    INNER JOIN breeder br ON bs.breeder_id = br.breeder_id
    INNER JOIN potato p ON p.potato_id = bs.potato_id
WHERE p.introduction_year IN
    (SELECT introduction_year
    FROM potato
    WHERE introduction_year IN
        (SELECT MAX(introduction_year)
        FROM potato));