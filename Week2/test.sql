CREATE TABLE department (
id INT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id),
UNIQUE (name));


CREATE TABLE project (
id INT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id),
UNIQUE (name));

CREATE TABLE employee (
id INT NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(30) NOT NULL,
locality VARCHAR(30) NOT NULL,
salary NUMERIC(8,2),
phone VARCHAR(15),
department_id INT NOT NULL,
supervisor_id INT,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department(id),
FOREIGN KEY (supervisor_id) REFERENCES employee(id));

PRAGMA foreign_keys = ON;