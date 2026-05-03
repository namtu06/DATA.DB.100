SELECT c.category_name, COUNT(DISTINCT(g.class_id)) AS no_group_classes, COUNT(t.class_id) AS no_timetable_classes, COUNT(DISTINCT(instructor_id)) AS no_instructors
FROM group_exercise_class g
    LEFT OUTER JOIN category c ON c.category_id = g.category_id
    LEFT OUTER JOIN timetable_class t ON g.class_id = t.class_id
GROUP BY c.category_name
ORDER BY c.category_name ASC;