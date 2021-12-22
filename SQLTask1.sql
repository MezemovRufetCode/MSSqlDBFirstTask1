CREATE DATABASE Market
USE Market
CREATE TABLE Products(
Id int,
[Name] nvarchar(25),
Price decimal)

ALTER TABLE Products
Add Brand nvarchar(30)


--First Method
INSERT INTO Products
values ('1','Bred','0.50','Xoncha')

--Second Method

INSERT INTO Products (Id,Price,Name)
values('2','1.2','Potato')
--Test meqsedli bele artirmisam
UPDATE Products
set Brand='Gedebey' where Id=2

INSERT INTO Products (Id,Price,Name,Brand)
values('3','22','Oil','Final')

--Third Method
INSERT INTO Products(Id,Name,Price,Brand)
VALUES('4','Drink','3','Kola'),('5','Napkin','5','Selpak'),
('6','Thoothpaste','7','Colgate'),('7','Yoghurt','12','Atena'),('8','Lamp','2','Unknown'),
('9','Milk','32','Palsud'),('10','Chicken','21','ShefasizBroyler')

DELETE FROM Products
WHERE name='oil';


--Average qiymetden kicik olan productlar
select Price,Name from Products where (SELECT AVG(Price) FROM Products) >Price 

--Qiymeti 10 dan yuxari olanlar
select * from Products where Price>10

--Brand uzunlugu 5 den boyuk olanlar
select (Name+' '+Brand) as ProductInfo from Products where LEN(Brand)>5
