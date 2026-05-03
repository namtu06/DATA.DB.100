SELECT c.category_name, COUNT(DISTINCT(g.class_id)) AS no_group_classes,  MIN(g.duration) AS min_duration, MAX(g.duration) as max_duration
FROM group_exercise_class g
    LEFT OUTER JOIN category c ON c.category_id = g.category_id
GROUP BY c.category_name
ORDER BY c.category_name ASC;