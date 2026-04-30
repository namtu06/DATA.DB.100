SELECT replace(t.day_of_week, 2, 'Tue') AS day_of_week, t.start_time, g.class_name, g.duration, g.class_level
from timetable_class t
    LEFT OUTER JOIN group_exercise_class g ON t.class_id = g.class_id
    LEFT OUTER JOIN category c ON g.category_id = c.category_id
WHERE c.category_name = 'Body maintenance'
    AND (t.day_of_week = 2 OR g.duration = 50) 
ORDER BY t.day_of_week, t.start_time, g.class_name  ASC;