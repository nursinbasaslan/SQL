create TABLE Customers
(
CUSTOMERID int,
CustomerName VARCHAR(30),
ContactName VARCHAR(50),
Address VARCHAR(50),
City	VARCHAR(30),
PostalCode VARCHAR(20),
Country VARCHAR(30)
);
INSERT INTO Customers VALUES(1, 'Alfreds Futterkiste', 'Maria Anders',	'Obere Str. 57',	'Berlin',	'12209',	'Germany');
INSERT INTO Customers VALUES(2, 'Ana Trujillo Emparedados   ',	'Ana Trujillo',	'Avda. de la Constitución 2222','México D.F.'	,	'05021',	'Mexico');
INSERT INTO Customers VALUES(3, 'Antonio Moreno Taquería',	'Antonio Moreno',	'Mataderos 2312',	'México D.F.',	'05023',	'Mexico');
INSERT INTO Customers VALUES(4, 'Around the Horn	','Thomas Hardy',	'120 Hanover Sq.'	,'London'	,'WA1 1DP'	,'UK' );
INSERT INTO Customers VALUES(5, 'Berglunds snabbköp',	'Christina Berglund',	'Berguvsvägen 8',	'Luleå'	,'S-958 22	','Sweden');

SELECT * FROM Customers ;