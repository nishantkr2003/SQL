CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    gread VARCHAR(1),
    city VARCHAR(20)
);

SELECT * FROM student;

INSERT INTO student
(rollno,name,marks,gread,city)
VALUES
(101,"nishant",78,"c","Delhi"),
(102,"raju",65,"A","Pune"),
(103,"nikhil",89,"F","Mumbai"),
(104,"Aditya",75,"D","Ranchi"),
(105,"Rahul",85,"A","Patna"),
(106,"OM",80,"B","Goa");

SELECT city ,name FROM student;
SELECT DISTINCT city from student;
SELECT * FROM student WHERE marks>80;
SELECT MAX(marks) FROM STUDENT;
SELECT AVG(MARKS) FROM STUDENT;