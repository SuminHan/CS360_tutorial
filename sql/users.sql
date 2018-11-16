
CREATE USER IF NOT EXISTS 'brogrammers'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON brogrammers_db_.* TO 'brogrammers'@'localhost';
ALTER USER 'brogrammers'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';