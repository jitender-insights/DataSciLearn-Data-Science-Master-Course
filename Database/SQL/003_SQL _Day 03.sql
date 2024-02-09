CREATE DATABASE company ;
USE company;

CREATE TABLE employee_details (
emp_id INT PRIMARY KEY ,
name VARCHAR(50),
salary INT NOT NULL,
designation VARCHAR(20),
city VARCHAR(50)
);

INSERT INTO employee_details
(emp_id, name , salary , designation , city)
VALUES
(101 , "Mayank" , 25000 , "Dev" , "Pune"),
(102 , "Rohan" , 18000 , "QA" , "Delhi"),
(103 , "Divya" , 50000 , "Data Scientist" , "Delhi"),
(104 , "Neha" , 30000 , "Dev" , "UP"),
(105 , "Kushal" , 20000 , "Dev" , "Delhi");

SELECT * FROM employee_details;

SELECT DISTINCT city FROM employee_details;

-- WHERE CLAUSE : TO DEFINE SOME conditions

SELECT * 
FROM employee_details 
WHERE salary > 20000;

SELECT *
FROM employee_details
WHERE city = "Delhi";

-- WHERE CLAUSE USING OPERATIONS 

SELECT * 
FROM employee_details
WHERE salary = 50000;


SELECT *
FROM employee_details
WHERE salary > 20000 AND city = "Delhi";

SELECT *
FROM employee_details
WHERE salary > 30000 OR city = "Delhi";

SELECT *
FROM employee_details
WHERE city IN("Pune" , "UP");

SELECT *
FROM employee_details
WHERE salary BETWEEN 30000 AND 50000;

SELECT *
FROM employee_details
WHERE city IN("CHANDIGARH" , "DEHRADUN");

SELECT *
FROM employee_details
WHERE city NOT IN("Pune" , "Delhi");


-- LIMIT CLAUSE 

SELECT *
FROM employee_details
LIMIT 3;

SELECT *
FROM employee_details
LIMIT 100;

SELECT *
FROM employee_details
WHERE salary > 20000
LIMIT 3;

--- ORDER BY CLAUSE 

-- to sort in ascending(ASC) or descending(DESC) order

SELECT * 
FROM employee_details
ORDER BY city ASC;

SELECT * 
FROM employee_details
ORDER BY city ;

SELECT * 
FROM employee_details
ORDER BY city DESC;


SELECT * 
FROM employee_details
ORDER BY SALARY DESC
LIMIT 3;

-- AGGREGATE FUNCTIONS
-- it performs a calculation on a set of values and return a single values. 

SELECT MAX(salary )
FROM employee_details;

SELECT MIN(salary )
FROM employee_details;

SELECT AVG(salary )
FROM employee_details;

SELECT COUNT(salary )
FROM employee_details;


-- GROUP BY CLAUSE 

SELECT city, COUNT(salary)
FROM employee_details
GROUP BY city;

SELECT city , name , count(salary)
FROM employee_details
GROUP BY city , name;

SELECT city, AVG(salary)
FROM employee_details
GROUP BY city;

SELECT city, AVG(salary)
FROM employee_details
GROUP BY city
ORDER BY city DESC;

SELECT city, AVG(salary)
FROM employee_details
GROUP BY city
ORDER BY AVG(salary) DESC;

SELECT designation , count(emp_id)
FROM employee_details
GROUP BY designation
ORDER BY designation;


-- HAVING CLAUSE 
-- similar to where clause i.e applies some conditions on rows. Used when we want to apply any condtions after grouping

SELECT city , count(name)
FROM employee_details
GROUP BY city
HAVING MAX(salary) > 40000;

/*
General ORDER
1.SELECT --COLUMN
2.FROM  --TABLE_NAME
3.WHERE condition  -- rows
4.GROUP BY columns
5.HAVING condition  - groups
6.ORDER BY columns ASC

*/

SELECT city 
FROM employee_details
WHERE designation = "Data Scientist"
GROUP BY city
HAVING MAX(salary) >=40000;


--- Write a Query to find 3rd highest salary in a employee table 



-- UPDATE COMMAND 

UPDATE employee_details
SET designation = "Test Engineer"
WHERE designation = "QA";

-- IF SAME MODE ON SET SQL_SAFE_MODE_UPDATES=0

UPDATE employee_details
SET salary = salary + 10000;

SELECT * FROM employee_details;


-- DELETE

DELETE FROM employee_details
WHERE emp_id = 104;










