#!/usr/bin/python3

-- check if the db already exists
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- create a new user hbnb_dev
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- grant USAGE privilege to the user hbnb_dev on all dbs
GRANT USAGE ON *.* TO 'hbnb_dev'@'localhost';

-- grant all privileges to the user hbnb_dev on the db hbnb_dev_db
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- grant SELECT privileges to the user hbnb_dev on the performance_schema db
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

-- update privileges
FLUSH PRIVILEGES;
