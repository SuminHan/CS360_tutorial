CREATE DATABASE IF NOT EXISTS cs360_tutorial;
USE cs360_tutorial;
CREATE TABLE IF NOT EXISTS user_tbl (
	id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(32) NOT NULL,
	last_name VARCHAR(32) NOT NULL,
	gender VARCHAR(32) NOT NULL,
	PRIMARY KEY (id)
);
CREATE USER IF NOT EXISTS 'tester'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON cs360_tutorial.* TO 'tester'@'localhost';
