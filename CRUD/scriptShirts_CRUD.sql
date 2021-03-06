SHOW DATABASES;
CREATE DATABASE  SHIRTS_DB;
USE SHIRTS_DB;

CREATE TABLE SHIRTS(
	SHIRT_ID INT NOT NULL AUTO_INCREMENT,
    ARTICLE VARCHAR(30) NOT NULL,
    COLOR VARCHAR(30) NOT NULL,
    SHIRT_SIZE CHAR(3) NOT NULL,
    LAST_WORN INT NOT NULL,    
    PRIMARY KEY(SHIRT_ID)
);

INSERT INTO SHIRTS(ARTICLE, COLOR, SHIRT_SIZE, LAST_WORN)
VALUES('t-shirt', 'white', 'S', 10);

INSERT INTO SHIRTS(ARTICLE, COLOR, SHIRT_SIZE, LAST_WORN)
VALUES 	('t-shirt', 'white', 'S', 10),
		('t-shirt', 'green', 'S', 200),
		('polo shirt', 'black', 'M', 10),
		('tank top', 'blue', 'S', 50),
		('t-shirt', 'pink', 'S', 0),
		('polo shirt', 'red', 'M', 5),
		('tank top', 'white', 'S', 200),
		('tank top', 'blue', 'M', 15);
        
INSERT INTO SHIRTS(COLOR, ARTICLE, SHIRT_SIZE, LAST_WORN)
VALUES('Purple', 'Polo Shirt', 'M', 50);

SELECT S.ARTICLE, 
	   S.COLOR 
FROM SHIRTS S;

SELECT S.ARTICLE, 
	   S.COLOR, 
       S.SHIRT_SIZE, 
       S.LAST_WORN
FROM SHIRTS S;

UPDATE SHIRTS S
SET S.SHIRT_SIZE = 'L'
WHERE ARTICLE = 'POLO SHIRT';

UPDATE SHIRTS S
SET S.LAST_WORN = 0
WHERE S.LAST_WORN = 15;

UPDATE SHIRTS S
SET S.SHIRT_SIZE = 'XS', 
	S.COLOR = 'OFF WHITE'
WHERE S.COLOR = 'WHITE';

DELETE FROM SHIRTS S
WHERE S.LAST_WORN = 200;

DELETE FROM SHIRTS;
DROP TABLE SHIRTS;

SELECT * 
FROM SHIRTS
WHERE SHIRT_SIZE = 'L';

SHOW WARNINGS;