SELECT g.class_name, g.duration, c.category_name
FROM group_exercise_class g
    LEFT OUTER JOIN category c ON g.category_id = c.category_id
WHERE duration IN(
    SELECT MIN(duration)
    FROM group_exercise_class g
        LEFT OUTER JOIN category c ON g.category_id = c.category_id 
    WHERE c.category_name = 'Body maintenance'
)
ORDER BY g.class_name ASC;