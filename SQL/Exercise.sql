create database Nishant;
use Nishant;


create table faculty(
	fid INT(10),
    fname varchar(225),
    qualification varchar(225),
    Depid INT(10)
);
insert into faculty VALUES
	(1,"Aman","B.Tech",1),
    (2,"Mohan","M.Tech",1),
    (3,"Vishal","M.Tech",1),
    (4,"Riya","phd",2),
    (5,"Ravi","phd",3),
    (6,"Arti","M Tech",2),
    (7,"Vaarun","PHd",5);
    
create table Student(
	Sid int(10),
    sname char(225),
    Branch varchar(225),
    Marks Int(10)
);

insert into Student Values
	(1,"Lalit","IT",75),
    (2,"Mahesh","IT",90),
    (3,"Sagar","CSE",92),
    (4,"Arun","CSE",45),
    (5,"Shikher","ECE",56),
    (6,"Anand","ECE",78),
    (7,"Parul","IT",82),
    (8,"John",NULL,89),
    (9,"Varun","ECE",70);
    
    
select * from faculty;
select * from Student;

 
 
-- UNION Operation
SELECT * FROM faculty
UNION
SELECT * FROM Student;

SELECT fname FROM faculty
UNION
SELECT sname FROM Student;


-- Union all operation

SELECT * FROM faculty
UNION All
SELECT * FROM Student;


-- Join operation

-- Inner join
select * from faculty,Student
where
faculty.fid=Student.Sid;

-- LEFT JOIN
select * from faculty
LEFT JOIN Student on
faculty.fid=Student.Sid;

-- RIGHT JOIN
select * from faculty
RIGHT JOIN Student on
faculty.fid=Student.Sid;

-- FULL JOIN
select * from faculty
LEFT JOIN Student on
faculty.fid=Student.Sid
UNION
select * from faculty
RIGHT JOIN Student on
faculty.fid=Student.Sid;


-- Nested Query
SELECT fname FROM faculty WHERE 
Depid IN 
(SELECT Depid FROM Student 
WHERE Branch="IT");




