CREATE DATABASE college1;
USE college1;

CREATE TABLE dept1(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept1 
VALUES
(101 ,"ENGLISH"),
(102, "COMPUTER SCIENCE");

UPDATE dept1
SET id = 111
WHERE id = 101;

SELECT * FROM dept1;

CREATE TABLE teacher1(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept1(id)

ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher1
VALUES
(101 ,"NISHA", 101),
(102 , "DIVYA" , 102);

SELECT * FROM teacher1;

/* TABLE RELATED QUERIES

1. ALTER(to change the schema)

*/

CREATE TABLE student (
stdid INT PRIMARY KEY,
stdname VARCHAR(50),
fee INT,
gender VARCHAR(50)
);

DESC student;

INSERT INTO student 
(stdid, name , fee , gender)
VALUES 
(1, 'Rahul' , 10000 , 'M'),
(2, 'Rohan' , 12000 , 'M'),
(3, 'Priya' , 15000 , 'F'),
(4, 'Aman' , 10000 , 'M'),
(5, 'Neha' , 25000 , 'F');

SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student 
CHANGE COLUMN stdname name VARCHAR(50);

ALTER TABLE student 
MODIFY fee FLOAT;

ALTER TABLE student
ADD COLUMN  age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE COLUMN age std_age INT ;

INSERT INTO student 
(stdid , name , fee , gender, std_age)
VALUES
(6, "RAVI", 10000, "M" , 100);

ALTER TABLE student
DROP COLUMN std_age;

SELECT * FROM student;


ALTER TABLE student
RENAME TO student_table;


SELECT * FROM student_table;

ALTER TABLE student_table
RENAME TO student;


-- TRUNCATE -- (TO DELETE TABLE'S DATA) VS DROP --- IT DELETE THE TABLE 

TRUNCATE TABLE student;
SELECT * FROM student;


DROP TABLE student ; 

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student (id , name)
VALUES
(101, 'ELON'),
(102 , 'BOBY'),
(103 , 'JOHN');


CREATE TABLE course (

id INT PRIMARY KEY,
course VARCHAR(50)
);


INSERT INTO course (id , course)
VALUES
(102, 'english'),
(105 , 'math'),
(103 , 'science'),
(107 , 'computer science');

SELECT * FROM student;
SELECT * FROM course;

-- INNER JOIN 

SELECT *
FROM STUDENT 
INNER JOIN course 
ON student.id = course.id;

-- LEFT JOIN 

SELECT * 
FROM STUDENT AS s
LEFT JOIN course AS c
ON s.id = c.id;


-- RIGHT JOIN
SELECT * 
FROM STUDENT AS s
RIGHT JOIN course AS c
ON s.id = c.id;


-- FULL JOIN 
SELECT * 
FROM STUDENT AS s
RIGHT JOIN course AS c
ON s.id = c.id;

-- FULL JOIN 

SELECT * 
FROM STUDENT AS s
LEFT JOIN course AS c
ON s.id = c.id

UNION


SELECT * 
FROM STUDENT AS s
RIGHT JOIN course AS c
ON s.id = c.id;


CREATE VIEW view2 AS
SELECT id , name FROM student;

SELECT * FROM view2;
DROP VIEW view2;
DROP VIEW view1;





















