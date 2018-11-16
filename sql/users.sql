CREATE USER IF NOT EXISTS 'brogrammers'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON cs360_tutorial.* TO 'brogrammers'@'localhost';
ALTER USER 'brogrammers'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
