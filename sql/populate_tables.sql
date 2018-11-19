USE brogrammers_db_;

INSERT INTO DB_USER (first_name, last_name, email, is_admin, password) 
VALUES ("mustafa", "yaldiz", "berk17@gmail.com", 1, "1234");

INSERT INTO DB_USER (first_name, last_name, email, is_admin, password) 
VALUES ("bolat", "ashim", "bolat@gmail.com", 0, "5678");

INSERT INTO DB_USER (first_name, last_name, email, is_admin, password) 
VALUES ("adi", "sulo", "adi@gmail.com", 0, "1234");

INSERT INTO DB_USER (first_name, last_name, email, is_admin, password) 
VALUES ("adi", "sulo", "adi@gmail.com", 0, "1234");


INSERT INTO VENUE (venue_name, room_num, building_name) 
VALUES ("E3_Seminar", 1501, "E3");

INSERT INTO VENUE (venue_name, room_num, building_name) 
VALUES ("N1_Seminar",1401, "N1");


INSERT INTO EVENT (host_id, venue_id, content) 
VALUES (1, 1, "Zombie Invasion");

INSERT INTO EVENT (host_id, venue_id, content) 
VALUES (1, 2, "Suckerberg is a Lizard?");

INSERT INTO EVENT (host_id, venue_id, content) 
VALUES (2, 1, "Exploding ants");