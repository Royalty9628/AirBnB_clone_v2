-- script that prepares a MySQL server for the project
-- Create the database hbnb_test_db with specified parameters
-- create a database with the name : hbnb_test_db and a user with a password

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
FLUSH PRIVILEGES
