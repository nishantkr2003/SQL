CREATE DATABASE TESTING;
USE TESTING;
CREATE TABLE EMPLOYEE(
	ID INT NOT NULL PRIMARY KEY,
    FNAME CHAR(225),
    INAME CHAR(225),
    AGE INT(225),
    EMAILID VARCHAR(225),
    PHONENO INT(225),
    CITY CHAR(225)
);

INSERT INTO EMPLOYEE
	(ID,FNAME,INAME,AGE,EMAILID,PHONENO,CITY)VALUES
	(1,'Aman','Prot',32,'aman@gmail.com',356,'Delhi'),
	(2,'yogesh','Narayan',44,'yogesh@gmail.com',556,'Palam'),
	(3,'Rahul','BD',54,'rahul@gmail.com',6565,'Kolkata'),
	(4,'Jatin','Hermit',31,'jatin@gmail.com',356,'Raipur'),
	(5,'PK','Pandey',25,'pk@gmail.com',5855,'Jaipur');
    
SELECT * FROM EMPLOYEE;

DROP TABLE IF EXISTS PROJECT;
CREATE TABLE PROJECT(
	ID INT NOT NULL PRIMARY KEY,
    empID INT(10),
    name CHAR(225),
    startdate DATE,
    clientID INT(10),
    FOREIGN KEY (empID)
		REFERENCES EMPLOYEE(ID),
	FOREIGN KEY (clientID)
		REFERENCES CLIENT(id)
	ON DELETE CASCADE
		
);

INSERT INTO PROJECT
	(ID,empID,name,startdate,clientID) VALUES
    (1,1,'A','2021-03-04',3),
    (2,2,'B','2023-05-04',1),
    (3,3,'C','2021-02-23',5),
    (4,3,'D','2021-09-12',2),
    (5,5,'E','2021-06-09',4);

SELECT * FROM PROJECT;


CREATE TABLE CLIENT(
	ID INT NOT NULL PRIMARY KEY,
    first_name CHAR(225),
    last_name CHAR(225),
    age INT (225),
    emailID VARCHAR(225),
    PhoneNo INT(25),
    City CHAR(225),
    empID INT(225),
    FOREIGN KEY (empID)
		REFERENCES EMPLOYEE(ID)
	ON DELETE CASCADE
);

INSERT INTO CLIENT
	(ID,first_name,last_name,age,emailID,PhoneNo,city,empID)VALUES
	(1,'Mac','Rogers',32,'mac@gmail.com',3564,'Kolkata',3),
	(2,'Max','Poirier',44,'max@gmail.com',5525,'Kolkata',3),
	(3,'Peter','Jain',54,'peter@gmail.com',6565,'Delhi',1),
	(4,'Sushant','kumar',31,'sushant@gmail.com',2586,'Hydrabad',5),
	(5,'Pratap','Singh',25,'pratap@gmail.com',58515,'Mumbai',2);
    
SELECT * FROM CLIENT;
    
    
    
    
    