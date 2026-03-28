-- CREATE TABLE and INSERT INTO statements for department table

CREATE TABLE department(
id INT NOT NULL,
name VARCHAR(50) NOT NULL,
manager_id INT,
manager_start_date TEXT,
PRIMARY KEY (id)
);

INSERT INTO department VALUES (1, 'Headquarters', 88, '2012-06-19');
INSERT INTO department VALUES (4, 'Administration', 98, '2015-01-01');
INSERT INTO department VALUES (5, 'Research', 33, '2018-05-22');

/*
id  name             manager_id  manager_start_date
--  ---------------  ----------  -------------------
1   Headquarters     88          2012-06-19
4   Administration   98          2015-01-01
5   Research         33          2018-05-22
*/


-- CREATE TABLE and INSERT INTO statements for employee table

CREATE TABLE employee(
id INT NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
locality VARCHAR(50),
salary REAL,
phone VARCHAR(20),
department_id INT,
supervisor_id INT,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department(id),
FOREIGN KEY (supervisor_id) REFERENCES employee(id)
);

INSERT INTO employee VALUES (88, 'Jukka', 'Susi', 'Tampere', 5500, '444 1234', 1, NULL);
INSERT INTO employee VALUES (33, 'Jenni', 'Joki', 'Nokia', 4300, '444 4343', 5, 88);
INSERT INTO employee VALUES (12, 'Pekka', 'Puro', 'Tampere', 3000, NULL, 5, 33);
INSERT INTO employee VALUES (98, 'Ville', 'Viima', 'Lempäälä', 4000.5, '444 4488', 4, 88);
INSERT INTO employee VALUES (99, 'Alli', 'Kivi', 'Nokia', 2500, '444 5555', 4, 98);

/*
id  first_name  last_name  locality    salary   phone     department_id  supervisor_id
--  ----------  ---------  ----------  -------  --------  -------------  -------------
88  Jukka       Susi       Tampere     5500     444 1234  1
33  Jenni       Joki       Nokia       4300     444 4343  5              88
12  Pekka       Puro       Tampere     3000               5              33
98  Ville       Viima      Lempäälä    4000.5   444 4488  4              88
99  Alli        Kivi       Nokia       2500     444 5555  4              98
*/