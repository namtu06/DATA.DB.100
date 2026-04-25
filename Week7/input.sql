INSERT INTO category (category_id, category_name) VALUES (1, 'Muscular strength');
INSERT INTO category (category_id, category_name) VALUES (2, 'Body maintenance');
INSERT INTO category (category_id, category_name) VALUES (3, 'Indoor cycling');

-- Muscular strength
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (1, 'Strength', 'Training muscles', 45, 2, 1);

-- Body maintenance
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (2, 'Basics of yoga', 'Learning yoga', 50, 1, 2);
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (3, 'Yoga 1', 'Keeping doing yoga', 50, 2, 2);
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (4, 'Pilates 1', 'Learning pilates', 60, 2, 2);

-- Indoor cycling
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (5, 'Basics of indoor cycling', 'Pedalling', 60, 1, 3);
INSERT INTO group_exercise_class (class_id, class_name, description, duration, class_level, category_id) VALUES (6, 'Indoor cycling pro', 'Heavy stretches and tight spurts', 80, 4, 3);

INSERT INTO instructor (instructor_id, instructor_name, date_of_birth) VALUES (1, 'Elisa Markkanen', '2001-01-21');
INSERT INTO instructor (instructor_id, instructor_name, date_of_birth) VALUES (2, 'Eero Ilonen', '1993-03-14');
INSERT INTO instructor (instructor_id, instructor_name, date_of_birth) VALUES (3, 'Mikko Kontinen', '2005-11-01');

INSERT INTO hall (hall_id, hall_name, no_places) VALUES (1, 'Hall 1', 25);
INSERT INTO hall (hall_id, hall_name, no_places) VALUES (2, 'Cycling Hall', 20);
INSERT INTO hall (hall_id, hall_name, no_places) VALUES (3, 'Hall 3', 20);

-- Elisa Markkanen
INSERT INTO can_instruct (instructor_id, class_id) VALUES (1, 3); -- Yoga 1
INSERT INTO can_instruct (instructor_id, class_id) VALUES (1, 5); -- Basics of indoor cycling
INSERT INTO can_instruct (instructor_id, class_id) VALUES (1, 6); -- Indoor cycling pro

-- Eero Ilonen
INSERT INTO can_instruct (instructor_id, class_id) VALUES (2, 2); -- Basics of yoga
INSERT INTO can_instruct (instructor_id, class_id) VALUES (2, 3); -- Yoga 1
INSERT INTO can_instruct (instructor_id, class_id) VALUES (2, 4); -- Pilates 1

-- Mikko Kontinen
INSERT INTO can_instruct (instructor_id, class_id) VALUES (3, 5); -- Basics of indoor cycling
INSERT INTO can_instruct (instructor_id, class_id) VALUES (3, 6); -- Indoor cycling pro

-- Yoga 1 (class_id 3)
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (3, 1, '08:10', '09:00', 10, 1, 3);
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (3, 1, '13:00', '13:50', 15, 1, 1);
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (3, 1, '20:10', '21:00', 10, 1, 3);
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (3, 2, '08:10', '09:00', 15, 2, 1);

-- Pilates 1 (class_id 4)
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (4, 1, '08:00', '09:00', 15, 2, 1);

-- Indoor cycling pro (class_id 6)
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (6, 1, '07:00', '08:20', 20, 3, 2);
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (6, 5, '14:00', '15:20', 20, 1, 2);

-- Basics of indoor cycling (class_id 5)
INSERT INTO timetable_class (class_id, day_of_week, start_time, end_time, max_participants, instructor_id, hall_id) VALUES (5, 1, '10:45', '11:45', 20, 3, 2);

