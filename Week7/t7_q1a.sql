SELECT t.day_of_week, t.start_time, g.class_name, g.duration
from timetable_class t
    LEFT OUTER JOIN group_exercise_class g ON t.class_id = g.class_id
    LEFT OUTER JOIN category c ON g.category_id = c.category_id
WHERE c.category_name = 'Body maintenance'
ORDER BY t.day_of_week, t.start_time, g.class_name  ASC;