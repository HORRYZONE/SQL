--util code
--Check all table
select * from tab
commit
--Create Table
CREATE TABLE Customers
(   CustNo NUMBER (4),
    LastName VARCHAR2(10),
    FirstName VARCHAR2(10),
    Address VARCHAR2(20),
    Referred NUMBER(4),
    PRIMARY KEY (CustNo));
    
    desc Customers
    
CREATE TABLE Orders
(OrderNo NUMBER(4),
CustNo NUMBER(4),
OrderDate DATE,
ShipDate DATE,
ShipStreet VARCHAR2(18),
ShipCity VARCHAR2(15),
ShipState VARCHAR2(2),
ShipZip VARCHAR2(5),
PRIMARY KEY (OrderNo, CustNo), --
FOREIGN KEY (CustNo) REFERENCES Customers
ON DELETE CASCADE);

desc Orders

--creation by subquery
CREATE TABLE Customer2 AS
SELECT * FROM customers;

CREATE TABLE cust_penang
(custno, lastname)
AS SELECT custno, lastname
FROM customers  WHERE lastname ='Penang';

desc cust_penang

--alter TABLE   (add new column)
ALTER TABLE Customer2  --add new col to customer2 table
ADD cust_phone VARCHAR2(12);

ALTER TABLE Customer2
MODIFY LNAME VARCHAR2(25);
desc Customer2

select * from doctor

--Drop TABLE
DROP TABLE PATIENT;

--Rename TABLE
RENAME Customer2 TO customer_KL;

