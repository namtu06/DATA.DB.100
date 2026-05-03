SELECT i.instructor_id, i.instructor_name
FROM instructor i
JOIN can_instruct ci ON i.instructor_id = ci.instructor_id
GROUP BY i.instructor_id, i.instructor_name
HAVING COUNT(*) = (
    SELECT COUNT(DISTINCT t.class_id)
    FROM timetable_class t
    WHERE t.instructor_id = i.instructor_id
      AND t.class_id IN (
          SELECT class_id FROM can_instruct WHERE instructor_id = i.instructor_id
      )
)
ORDER BY i.instructor_id ASC;