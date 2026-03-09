CREATE TABLE bike_shop(
id INT NOT NULL,
name VARCHAR(50) NOT NULL,
address VARCHAR(50),
UNIQUE(name),
PRIMARY KEY (id));

INSERT INTO bike_shop VALUES(1, 'skibidi', 'tekniikankatu');
INSERT INTO bike_shop VALUES(2, 'toilet', '');
INSERT INTO bike_shop VALUES(3, 'lebron', 'opiskelija');
INSERT INTO bike_shop VALUES(4, 'james', 'hameen');

CREATE TABLE sells(
    bike_id INT NOT NULL,
    bike_shop_id INT NOT NULL,
    PRIMARY KEY (bike_id, bike_shop_id),
    FOREIGN KEY (bike_id) REFERENCES bike(id),
    FOREIGN KEY (bike_shop_id) REFERENCES bike_shop(id)
);

INSERT INTO sells VALUES(1, 1);
INSERT INTO sells VALUES(2, 1);
INSERT INTO sells VALUES(1, 2);
INSERT INTO sells VALUES(3, 3);
INSERT INTO sells VALUES(2, 4);