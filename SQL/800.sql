create database Interview;
USE Interview;
CREATE TABLE EmployeeDetail(
	EmployeeID INT NOT NULL PRIMARY KEY,
    FirstName char(225),
    LastName char(225),
    Salary Int(225),
    JoiningDate DATETIME,
    Department CHAR(225),
    Gender char(10)
);

INSERT INTO EmployeeDetail VALUES
	(1,"Vikash","Alhawat",600000,"2023-02-15 11:16:28.290","IT","Male"),
	(2,"nikita","Jain",530000,"2014-01-09 17:31:07.793","HR","Female"),
    (3,"Ashish","Kumar",600000,"2014-01-09 10:05:07.793","IT","Male"),
    (4,"Nikhil","Sharma",1000000,"2014-01-09 09:00:07.793","HR","Male"),
    (5,"anish","kadian",5000000,"2014-01-09 09:00:07.793","Payroll","Male");
    
    
-- 1.Write a query to get all employee detail from "EmployeeDetail" table
    
SELECT * FROM EmployeeDetail;

-- 2.Write a query to get only "FirstName" column from "EmployeeDetail" table

SELECT FirstName FROM EmployeeDetail;

-- 3.Write a query to get FirstName in upper case as "First Name".

SELECT UPPER(FirstName) as "First Name" From EmployeeDetail;

-- 4. Write a query to get FirstName in lower case as "First Name".

SELECT LOWER (FirstName) as "First Name" FROM EmployeeDetail;

-- 5. Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)

SELECT CONCAT(FirstName, ' ', LastName) AS Name FROM EmployeeDetail;

-- 6. Select employee detail whose name is "Vikas".

SELECT * FROM EmployeeDetail where FirstName="Vikash";

-- 7. Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.

SELECT * FROM EmployeeDetail WHERE FirstName like "a%";

-- 8. Get all employee details from EmployeeDetail table whose "FirstName" contains 'k'.

SELECT * FROM EmployeeDetail WHERE FirstName like "%k%";

-- 9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'.

SELECT * FROM EmployeeDetail WHERE FirstName like "%h";

-- 10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
 
 SELECT * FROM EmployeeDetail WHERE FirstName like "[a-p]%";
 SELECT * FROM EmployeeDetail WHERE FirstName like '[a-p]%';
 

