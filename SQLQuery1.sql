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

INSERT INTO Persons VALUES ( '1','Hasen','Ola','Street23','Hyderabad');
INSERT INTO Persons (E_Id,LastName,FirstName,Address,City) VALUES ('2','John','Tove','Streeet10','Heydrabad');
INSERT INTO Persons (E_Id,LastName,FirstName,Address,City) VALUES ('3','Pettersen','Kari','Streeet32','Heydrabad');

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

SELECT * FROM Persons WHERE Year=1965;

SELECT * FROM Persons WHERE FirstName='Tove' AND LastName='John';

SELECT * FROM Persons WHERE LastName='John' AND (FirstName='Tove' OR FirstName='Ola');



