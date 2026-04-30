SELECT class_name, duration
FROM group_exercise_class
WHERE duration IN(
    SELECT MIN(duration)
    FROM group_exercise_class 
);