SELECT DISTINCT(i.instructor_id), i.instructor_name
FROM can_instruct c1
    LEFT OUTER JOIN can_instruct c2 ON c1.instructor_id = c2.instructor_id
    LEFT OUTER JOIN instructor i ON c1.instructor_id = i.instructor_id
    LEFT OUTER JOIN group_exercise_class g1 ON c1.class_id = g1.class_id
    LEFT OUTER JOIN category ca1 ON g1.category_id = ca1.category_id
    LEFT OUTER JOIN group_exercise_class g2 ON c2.class_id = g2.class_id
    LEFT OUTER JOIN category ca2 ON g2.category_id = ca2.category_id
WHERE ca1.category_name = 'Indoor cycling' AND ca2.category_name = 'Body maintenance'
ORDER BY i.instructor_id ASC;