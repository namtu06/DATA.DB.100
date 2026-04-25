CREATE TABLE category(
    category_id INT NOT NULL,
    category_name VARCHAR(30),
    PRIMARY KEY(category_id),
    UNIQUE(category_name)
);

CREATE TABLE group_exercise_class(
    class_id INT NOT NULL,
    class_name VARCHAR(30),
    description VARCHAR(50),
    duration INT NOT NULL,
    class_level INT NOT NULL,
    category_id INT NOT NULL,
    UNIQUE(class_name),
    PRIMARY KEY(class_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE can_instruct(
    instructor_id INT NOT NULL,
    class_id INT NOT NULL,
    PRIMARY KEY (instructor_id,class_id)
    FOREIGN KEY (class_id) REFERENCES group_exercise_class(class_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id) 
);

CREATE TABLE instructor(
    instructor_id INT NOT NULL,
    instructor_name VARCHAR(30),
    date_of_birth INT NOT NULL,
    PRIMARY KEY (instructor_id)
);

CREATE TABLE hall(
    hall_id INT NOT NULL,
    hall_name VARCHAR(30),
    no_places INT NOT NULL,
    UNIQUE(hall_name),
    PRIMARY KEY (hall_id)
);

CREATE TABLE timetable_class(
    class_id INT NOT NULL,
    day_of_week INT NOT NULL,
    start_time INT NOT NULL,
    end_time INT NOT NULL,
    max_participants INT NOT NULL,
    instructor_id INT NOT NULL,
    hall_id INT NOT NULL,
    PRIMARY KEY (class_id, day_of_week, start_time, instructor_id, hall_id),
    FOREIGN KEY (class_id) REFERENCES group_exercise_class(class_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id),
    FOREIGN KEY (hall_id) REFERENCES hall(hall_id)
);