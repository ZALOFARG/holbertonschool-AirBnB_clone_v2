#!/usr/bin/python3

-- create hbnb_test_db db if not exists
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

--crate user hbnb_test identified with hbnb_test_pwd
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- grant USAGE privileges to hbnb_test
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';

-- grant all privileges to hbnb_test on all dbs
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- grant SELECT privileges to hbnb_test on performance schema db
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- update privileges
FLUSH PRIVILEGES;
