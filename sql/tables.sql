CREATE DATABASE IF NOT EXISTS brogrammers_db_;

USE brogrammers_db_;

CREATE TABLE IF NOT EXISTS user_tbl (
	id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(32) NOT NULL,
	last_name VARCHAR(32) NOT NULL,
	gender VARCHAR(32) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS DB_USER (
	
	id_num bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(32) NOT NULL,
	last_name VARCHAR(32) NOT NULL,
	tel_num VARCHAR(15),
	email VARCHAR(255) NOT NULL,
	is_admin BOOLEAN NOT NULL,
	password VARCHAR(255) NOT NULL,
	PRIMARY KEY (id_num)
);


CREATE TABLE IF NOT EXISTS TAG (

	tag_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	tag_name VARCHAR(255) NOT NULL,
	tag_score INTEGER DEFAULT 0,

	PRIMARY KEY (tag_id)
);

CREATE TABLE IF NOT EXISTS VENUE (
	venue_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	venue_name VARCHAR(255),
	room_num INT, 
	building_name VARCHAR(255),
	x_coor INT,
	y_coor INT,

	PRIMARY KEY (venue_id)
);

CREATE TABLE IF NOT EXISTS EVENT (
	event_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	host_id bigint(20) unsigned NOT NULL,
	venue_id bigint(20) unsigned NOT NULL,
	content VARCHAR(4095),
	is_approved BOOLEAN DEFAULT 0,
	start_date DATETIME,
	end_date DATETIME,
	
	
	PRIMARY KEY (event_id),
	FOREIGN KEY(host_id) REFERENCES DB_USER(id_num),
	FOREIGN KEY(venue_id) REFERENCES VENUE(venue_id)
);

CREATE TABLE IF NOT EXISTS HAS_TAG (
	event_id bigint(20) unsigned NOT NULL,
	tag_id bigint(20) unsigned NOT NULL,

	PRIMARY KEY(event_id, tag_id),
	FOREIGN KEY (event_id) REFERENCES EVENT(event_id),
	FOREIGN KEY (tag_id) REFERENCES TAG(tag_id)
);


CREATE TABLE IF NOT EXISTS TAKES_PLACE (
	event_id bigint(20) unsigned NOT NULL,
	venue_id bigint(20) unsigned NOT NULL,

	PRIMARY KEY(event_id, venue_id),
	FOREIGN KEY (event_id) REFERENCES EVENT(event_id),
	FOREIGN KEY (venue_id) REFERENCES VENUE(venue_id)
);


CREATE TABLE IF NOT EXISTS PARTICIPATES (
	user_id bigint(20) unsigned NOT NULL,
	event_id bigint(20) unsigned NOT NULL,

	PRIMARY KEY(user_id, event_id),
	FOREIGN KEY (user_id) REFERENCES DB_USER(id_num),
	FOREIGN KEY (event_id) REFERENCES EVENT(event_id)
);