CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
CREATE TABLE Bonus(
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
	ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
        
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

SELECT * FROM Worker;
SELECT * FROM Bonus;
SELECT * FROM Title;



select upper(FIRST_NAME) as NAME from worker;

SELECT * FROM Worker WHERE SALARY > 100000;

-- salary [80000,300000]
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 AND 300000;

-- reduce OR ststements
-- HR OR ADMIN
SELECT * FROM Worker WHERE DEPARTMENT= 'HR' OR DEPARTMENT= 'ADMIN' OR DEPARTMENT = 'ACCOUNT';

-- BETTER WAY IN 
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR','ADMIN','ACCOUNT');

-- NOT IN
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR','ADMIN');

-- WILDCARD
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%I%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_I%';


-- SORTING USING ORDER BY
SELECT *FROM Worker ORDER BY SALARY;
SELECT *FROM Worker ORDER BY SALARY DESC;

-- DISTINCT
select distinct DEPARTMENT from worker;

-- GROUP BY
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM WORKER GROUP BY DEPARTMENT;

-- AVG SALARY PER DEPERTMENT
SELECT DEPARTMENT, AVG(SALARY) FROM WORKER GROUP BY DEPARTMENT;

-- MIN(),MAX()
SELECT DEPARTMENT, MIN(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT DEPARTMENT, MAX(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT DEPARTMENT, SUM(SALARY) FROM WORKER GROUP BY DEPARTMENT;

-- GROUP BY HAVING
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT)>2;


CREATE TABLE account(
	ID INT PRIMARY KEY,
    NAME VARCHAR(225) UNIQUE,
    balance INT,
    CONSTRAINT acc_balance_chk CHECK(balance > 1000)
);


-- CHECK
INSERT INTO account(ID,NAME,BALANCE)
VALUE(1,'A',2000);
INSERT INTO account(ID,NAME,BALANCE)
VALUE(2,'B',2000);
INSERT INTO account(ID,NAME,BALANCE)
VALUE(2,'B',100);
SELECT * FROM ACCOUNT;


-- ADD NEW COLUMN
ALTER TABLE account ADD intrest FLOAT NOT NULL DEFAULT 0;

-- MODIFY
ALTER TABLE account MODIFY intrest DOUBLE NOT NULL DEFAULT 0;

-- DESCRIBE ACCOUNT
DESC ACCOUNT;

-- CHANGE COLUMN -RENAME THE COLUMN

ALTER TABLE account CHANGE COLUMN intrest SAVING_INTREST FLOAT NOT NULL DEFAULT 0;