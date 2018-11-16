CREATE DATABASE IF NOT EXISTS brogrammers_db;
USE brogrammers_db;

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
	
);

CREATE TABLE IF NOT EXISTS EVENT (
	event_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	host_id bigint(20) unsigned NOT NULL,
	venue_id bigint(20) unsigned NOT NULL,
	content VARCHAR(4095),
	start_date DATETIME,
	end_date DATETIME,
	
	PRIMARY KEY (event_id),
	FOREIGN KEY(host_id) REFERENCES DB_USER(id_num),
	FOREIGN KEY(venue_id) REFERENCES VENUE(venue_id),
);

CREATE 



CREATE USER IF NOT EXISTS 'bolatashim'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON cs360_tutorial.* TO 'bolatashim'@'localhost';
ALTER USER 'bolatashim'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
