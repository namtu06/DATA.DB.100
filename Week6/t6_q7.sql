SELECT potato_name, introduction_year
FROM potato
WHERE introduction_year IN
    (SELECT MAX(introduction_year)
    FROM potato);