CREATE DATABASE datascilearn;
create database temp1;
create database temp2;
drop database temp1;
DROP DATABASE temp2;

USE datascilearn;

CREATE TABLE course (
name VARCHAR(50),
id INT PRIMARY KEY,
fees INT NOT NULL
);

INSERT INTO course VALUES("Mayank", 001, 5000 );
INSERT INTO course VALUES("Ravi" , 002, 5000);

SELECT * FROM course;
