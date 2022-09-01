CREATE DATABASE Sometables;
USE Sometables;
CREATE TABLE Persons
(
E_Id int,
LastName varchar(8000),
FirstName varchar(8000),
Address varchar(8000),
City varchar(8000)
);

INSERT INTO Persons VALUES ( 1,'Hasen','Ola','Street23','Hyderabad');
INSERT INTO Persons (E_Id,LastName,FirstName,Address,City) VALUES (2,'John','Tove','Streeet10','Heydrabad');
INSERT INTO Persons (E_Id,LastName,FirstName,Address,City) VALUES (3,'Pettersen','Kari','Streeet32','Heydrabad');

UPDATE Persons SET E_Id='1'
WHERE City='Hyderabad';

DELETE FROM Persons WHERE E_Id='4';

ALTER TABLE Persons
ADD d int;

ALTER TABLE Persons
DROP COLUMN d;

ALTER TABLE Persons
ALTER COLUMN City varchar(8000);

SELECT * FROM Persons

SELECT DISTINCT * FROM Persons

SELECT * FROM Persons
WHERE City='Hyderabad';

SELECT * FROM Persons WHERE FirstName='Tove';

--SELECT * FROM Persons WHERE Year=1965;

SELECT * FROM Persons WHERE FirstName='Tove' AND LastName='John';

SELECT * FROM Persons WHERE LastName='John' AND (FirstName='Tove' OR FirstName='Ola');

SELECT *FROM Persons ORDER BY City ASC

DELETE FROM Persons

SELECT TOP 2 FirstName
FROM Persons;

SELECT * FROM Persons 
WHERE City LIKE 's%' 

SELECT * FROM Persons 
WHERE City LIKE '%tav%' 

SELECT * FROM Persons
WHERE City NOT LIKE '%tav%' 

SELECT * FROM Persons WHERE LastName IN ('Hansen','Pettersen') 

 SELECT * FROM Persons 
WHERE LastName 
BETWEEN 'Hansen' AND 'Pettersen' 

SELECT * FROM Persons 
WHERE LastName 
NOT BETWEEN 'Hansen' AND 'Pettersen' 

SELECT p.LastName, p.FirstName 
FROM Persons AS p 
WHERE p.LastName='Hansen' AND p.FirstName='Ola' 

CREATE TABLE Employees_Norway
(
E_ID int,
E_Name varchar(8000)
);

CREATE TABLE Employees_USA
(
E_ID int,
E_Name varchar(8000)
);

INSERT INTO Employees_Norway (E_Id,E_Name) VALUES (1,'Hasen,Ola');
INSERT INTO Employees_Norway (E_Id,E_Name) VALUES (2,'John,Tove');
INSERT INTO Employees_Norway (E_Id,E_Name) VALUES (3,'John,Stephen');
INSERT INTO Employees_Norway (E_Id,E_Name) VALUES (4,'Pettersen,Kari');

INSERT INTO Employees_USA (E_Id,E_Name) VALUES (1,'Turner,Sally');
INSERT INTO Employees_USA (E_Id,E_Name) VALUES (2,'Kent,Clark');
INSERT INTO Employees_USA (E_Id,E_Name) VALUES (3,'John,Stephen');
INSERT INTO Employees_USA (E_Id,E_Name) VALUES (4,'');

SELECT *FROM Employees_Norway;

SELECT *FROM Employees_USA;
SELECT DISTINCT * FROM Employees_USA

SELECT E_Name FROM Employees_Norway 
UNION 
SELECT E_Name FROM Employees_USA 

SELECT * 
INTO Persons_Backup
FROM Persons 	

SELECT LastName,FirstName 
INTO Persons_Backup1 
FROM Persons 

SELECT LastName,Firstname 
INTO Persons_Backup2 
FROM Persons 
WHERE City='Hyderabad' 



Create DATABASE Fewtables;
USE Fewtables;

CREATE TABLE Persons 
( 
P_Id int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255),
Address varchar(255), 
City varchar(255) );

INSERT INTO Persons VALUES ( 1,'Hasen','Ola','Street23','Hyderabad');
INSERT INTO Persons (P_Id,LastName,FirstName,Address,City) VALUES (2,'John','Tove','Streeet10','Heydrabad');
INSERT INTO Persons (P_Id,LastName,FirstName,Address,City) VALUES (3,'Pettersen','Kari','Streeet32','Heydrabad');


ALTER TABLE Persons 
ADD PRIMARY KEY (P_Id);

ALTER TABLE Persons 
ADD CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName);


ALTER TABLE Persons 
DROP CONSTRAINT pk_PersonID

CREATE TABLE Orders 
(
O_Id int NOT NULL PRIMARY KEY, 
OrderNo int NOT NULL, 
P_Id int FOREIGN KEY REFERENCES Persons(P_Id) 
) 

CREATE TABLE Orders1
(
O_Id int NOT NULL, 
OrderNo int NOT NULL, 
P_Id int, 
PRIMARY KEY (O_Id), 
CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
REFERENCES  Persons(P_Id) 
)	

	ALTER TABLE Orders
ADD FOREIGN KEY (P_Id) 
REFERENCES Persons(P_Id)  

ALTER TABLE Orders 
ADD CONSTRAINT fk_PerOrders1 
FOREIGN KEY (P_Id) 
REFERENCES Persons(P_Id) 

ALTER TABLE Orders DROP CONSTRAINT fk_PerOrders1

CREATE TABLE Persons1 
( 
P_Id int NOT NULL CHECK (P_Id>0),
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255) 
);

CREATE TABLE Persons2
( 
P_Id int NOT NULL CHECK (P_Id>0),
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255) 
)

CREATE TABLE Orders2
( 
O_Id int NOT NULL, 
OrderNo int NOT NULL, 
P_Id int, 
OrderDate date DEFAULT GETDATE() 
)   

CREATE TABLE SALES
(
OrderID int,
OrderDate date,
OrderPrice int,
QrderQuantity int ,
CustomerName varchar(255)
);

INSERT INTO SALES VALUES ( 1,'12-22-2005',160,2,'Smith');
INSERT INTO SALES VALUES ( 2,'08-10-2005',190,2,'Johnson');
INSERT INTO SALES VALUES ( 3,'07-13-2005',500,2,'Baldwin');
INSERT INTO SALES VALUES ( 4,'07-15-2005',420,2,'Smith');
INSERT INTO SALES VALUES ( 5,'12-22-2005',1000,4,'Wood');
INSERT INTO SALES VALUES ( 6,'10-02-2005',820,4,'Smith');

SELECT *FROM SALES

SELECT COUNT(*)FROM SALES
WHERE CustomerName='Smith';

SELECT COUNT(DISTINCT CustomerName) FROM Sales

SELECT SUM(OrderPrice) FROM Sales

SELECT AVG(QrderQuantity) FROM Sales

SELECT AVG(QrderQuantity) FROM Sales WHERE OrderPrice > 200

SELECT MIN(OrderPrice) FROM Sales

SELECT MAX(OrderPrice) FROM Sales
