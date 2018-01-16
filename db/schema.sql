DROP DATABASE IF EXISTS busapp_db
CREATE DATABASE busapp_db;
USE busapp_db;

CREATE TABLE bus 
(
    id INT(20) NOT NULL AUTO_INCREMENT,
    bus_number INT(20) NOT NULL,
    bus_driver VARCHAR(100) NOT NULL,
    riders VARCHAR(100) NOT NULL,
	capacity INT(20) NOT NULL,
    home_base VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );
    
CREATE TABLE student
(
	id INT(20) NOT NULL AUTO_INCREMENT,
    bus_number INT(20) NOT NULL,
    student_last_name VARCHAR(100) NOT NULL,
    student_first_name VARCHAR(100) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    grade_level INT(20) NOT NULL,
    guardian_name VARCHAR(100) NOT NULL,
    guardian_email VARCHAR(200) NOT NULL,
    address_num INT(20) NOT NULL,
    address_stname VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    st VARCHAR(2) NOT NULL,
	zipcode INT(20) NOT NULL,
    bus_rider BOOLEAN DEFAULT FALSE
    PRIMARY KEY (id)
    );