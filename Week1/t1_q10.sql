CREATE TABLE board_game(
id INT NOT NULL,
name VARCHAR(20) NOT NULL,
players varchar(20) NOT NULL,
ages VARCHAR(20),
price DECIMAL(4,2),
PRIMARY KEY (id),
UNIQUE(name)
);

INSERT INTO board_game VALUES(1,'Balloon PoP','2-4','8+',35);
INSERT INTO board_game VALUES(2,'Mysterium','2-7','10+',49.95);
INSERT INTO board_game VALUES(5,'Carcassonne','2-5','7+',33.5);
INSERT INTO board_game VALUES(6,'Trivial Pursuit','2-36','16+',50);