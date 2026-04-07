CREATE TABLE employee(
    id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    locality VARCHAR(30) NOT NULL,
    salary FLOAT(8,2) NOT NULL,
    phone INT,
    department_id INT,
    supervisor_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (supervisor_id) REFERENCES employee
);

INSERT INTO employee (id, first_name, last_name, locality, salary, phone, department_id, supervisor_id) VALUES
(88, 'Jukka', 'Susi', 'Tampere', 5500, '444 1234', 1, NULL),
(33, 'Jenni', 'Joki', 'Nokia', 4300, '444 4343', 5, 88),
(12, 'Pekka', 'Puro', 'Tampere', 3000, '5', 5, 33),
(98, 'Ville', 'Viima', 'Lempäälä', 4000.5, '444 4488', 4, 88),
(99, 'Alli', 'Kivi', 'Nokia', 2500, '444 5555', 4, 98);