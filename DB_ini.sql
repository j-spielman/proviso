/*
    db_init.sql
    Ricardo Guillen Vergara
    02/09/2022
    MySQL file to create user, tables, and insert data
*/

-- drop test user if exists 
DROP USER IF EXISTS 'proviso_user'@'localhost';


-- create proviso_user and grant them all privileges to the proviso_user database 
CREATE USER 'proviso_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL5IsGreat!';


-- grant all privileges to the proviso database to user proviso_user on localhost 
GRANT ALL PRIVILEGES ON proviso.* TO'proviso_user'@'localhost';


-- Drop the foreign key
ALTER TABLE reservation DROP FOREIGN KEY fk_customer;


-- drop tables if they are present
DROP TABLE IF EXISTS customer; 
DROP TABLE IF EXISTS reservation; 


-- create customer table 
CREATE TABLE customer (
	customer_id 		INT 			NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	user_name		VARCHAR(75)		NOT NULL,
	password		VARCHAR(75)		NOT NULL,
	loyalty_points_customer  INT	            NOT NULL,
	PRIMARY KEY(customer_id)
);

-- create reservation table 
CREATE TABLE reservation (
	reservation_id		INT 			NOT NULL 		AUTO_INCREMENT,
	roomSize			VARCHAR(30)	    NOT NULL, 
	customer_id			INT				NOT NULL,
	amenities			VARCHAR(150)	NOT NULL,
	guests				VARCHAR(10)		NOT NULL,
	loyalty_points_reservation		INT(30)         NOT NULL,
	
	PRIMARY KEY(reservation_id),
	CONSTRAINT fk_customer
	FOREIGN KEY(customer_id)
		REFERENCES customer(customer_id)
); 

-- insert customer statements 
INSERT INTO customer(first_name, last_name, user_name, password, loyalty_points_customer)
	VALUES('Ricardo', 'Guillen', 'ricardoguillens@gmail.com', 'passworda1111', '600');

INSERT INTO customer(first_name, last_name, user_name, password, loyalty_points_customer)
	VALUES('Joey', 'Spielman', 'joeyspielman@gmail.com', 'passwordb1122', '900');

INSERT INTO customer(first_name, last_name, user_name, password, loyalty_points_customer)
	VALUES('Chevant', 'Starr', 'chevantstarr@gmail.com', 'passwordc1333', '3000');
	
INSERT INTO customer(first_name, last_name, user_name, password, loyalty_points_customer)
	VALUES('Sheraz', 'Tariq', 'sheraztariq@gmail.com', 'passwordd14444', '1500');
	
INSERT INTO customer(first_name, last_name, user_name, password, loyalty_points_customer)
	VALUES('Zachary', 'Hunn', 'zacharyhunn@gmail.com', 'passworde155555', '300');


INSERT INTO reservation(roomSize, customer_id, amenities, guests, loyalty_points_reservation)
	VALUES('king',(SELECT customer_id FROM customer WHERE last_name = 'Guillen'),'wifi breakfast', '3-5', '150');
	
INSERT INTO reservation(roomSize, customer_id, amenities, guests, loyalty_points_reservation)
	VALUES('double queen beds',(SELECT customer_id FROM customer WHERE last_name = 'Spielman'),'wifi breakfast parking', '3-5', '150');
	
INSERT INTO reservation(roomSize, customer_id, amenities, guests, loyalty_points_reservation)
	VALUES('queen',(SELECT customer_id FROM customer WHERE last_name = 'Starr'),'wifi ', '3-5', '150');
	
INSERT INTO reservation(roomSize, customer_id, amenities, guests, loyalty_points_reservation)
	VALUES('double full beds',(SELECT customer_id FROM customer WHERE last_name = 'Tariq'),'wifi breakfast', '3-5', '150');

INSERT INTO reservation(roomSize, customer_id, amenities, guests, loyalty_points_reservation)
	VALUES('double full beds',(SELECT customer_id FROM customer WHERE last_name = 'Hunn'),'wifi parking', '3-5', '150');
	
	
	




