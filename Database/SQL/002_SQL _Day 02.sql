CREATE DATABASE datascilearn;
CREATE DATABASE machinelearning;
-- SQL IS A STRUCTURED QUERY LANG
USE datascilearn;
/*
CREATE TABLE course (
id INT PRIMARY KEY,
name VARCHAR(50),
price FLOAT 
);
*/

INSERT INTO course VALUES(101,'Roahn',2550.23);
INSERT INTO course VALUES(102,'Sohan' , 5000.56);

SELECT * FROM course;
SELECT id FROM course;


CREATE TABLE program(
name VARCHAR(50)
);

CREATE TABLE python (
version INT PRIMARY KEY,
platform VARCHAR(50),
ide VARCHAR(50)
);

INSERT INTO python (ide , platform , version)
VALUES
(101, "mac", 2),
(102, "WINDOWS" ,3);
SELECT * FROM python;
USE machinelearning;
CREATE table temp1(
id INT UNIQUE);
INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(101);

CREATE TABLE temp2(
id INT NOT NULL,
PRIMARY KEY(id)
);
USE machinelearning;
CREATE TABLE employee (

id INT,
salary INT DEFAULT 25000
);

INSERT INTO employee VALUES(001,salary);
INSERT INTO employee(id) Values(101);
SELECT * FROM employee;














SHOW DATABASES;
SHOW TABLES;


