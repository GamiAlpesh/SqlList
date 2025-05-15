CREATE DATABASE Product;

CREATE TABLE tblProducts(
ProductId int,
ProductType varchar(50),
BrandName varchar(50)
,Price int,
DiscountedPrice int);

INSERT INTO tblProducts(ProductId,ProductType,BrandName,Price,DiscountedPrice)
VALUES (1,'Electronics','Sony',10000,1000);
INSERT INTO tblProducts VALUES(2,'Electronics','Redmi',15000,1500);
INSERT INTO tblProducts VALUES(3,'Electronics','Jio',8000,800);
INSERT INTO tblProducts VALUES(4,'Bakery','cake',500,50);
INSERT INTO tblProducts VALUES(5,'Bakery','chocolate',100,10);
INSERT INTO tblProducts VALUES(6,'Bakery','SweetCreem',200,20);
INSERT INTO tblProducts VALUES(7,'Grocery','Jio',450,20);
INSERT INTO tblProducts VALUES(8,'Grocery','colgate',120,12);
INSERT INTO tblProducts VALUES(9,'Grocery','pepsi',60,6);
INSERT INTO tblProducts VALUES(10,'Medical','Combiflam_Tablet',50,5);

SELECT * FROM tblProducts;
/*1.Count of total Product*/
SELECT COUNT(ProductType)
FROM tblProducts;
/*2.Count of Electronicst*/
SELECT COUNT(ProductType)
FROM tblProducts WHERE ProductType = 'Electronics';
/*3.Maximum DiscountedPrice*/
SELECT MAX(DiscountedPrice)
FROM tblProducts;
/*4.minmum price of Grocery*/
SELECT MIN(Price)
FROM tblProducts WHERE ProductType ='Grocery';
/*5.Get Product by Brand*/
SELECT ProductType FROM tblProducts WHERE  BrandName ='Jio';
/*6.get maximum price of Brand*/
SELECT MAX(Price)
FROM tblProducts WHERE BrandName ='Jio' ;
/*7.Brand count*/
SELECT COUNT(BrandName)
FROM tblProducts;
/*8.last record of Electronics Products type*/
SELECT TOP 1*FROM tblProducts
WHERE ProductType ='Electronics'
ORDER BY ProductId DESC



























