--1
-- SELECT ContactName,CustomerID FROM Customers WHERE City = 'London'
-- SELECT ContactName,CustomerID from Customers WHERE City = 'London' OR City = 'Madrid'
-- SELECT ProductName from Products WHERE UnitPrice > 40
-- SELECT ProductName,UnitPrice from Products WHERE UnitPrice > 40 order by UnitPrice
-- SELECT COUNT(*) FROM  Products WHERE UnitPrice > 40
-- SELECT COUNT(*) FROM Products WHERE UnitPrice > 40 AND UnitsInStock > 100
-- SELECT COUNT(*) from Products WHERE (CategoryID = 2 or CategoryID = 3) AND UnitPrice > 40 AND UnitsInStock > 100
-- SELECT ProductName, UnitPrice FROM Products,Categories WHERE CategoryName = 'Seafood'
-- SELECT COUNT(*) from Employees where YEAR(BirthDate) < 1960 and City = 'London'
-- SELECT TOP 5 FirstName, LastName FROM Employees ORDER BY BirthDate
--2
-- SELECT COUNT(*) from Employees where (( YEAR(BirthDate)>= 1950 and YEAR(BirthDate)  <= 1955) OR (YEAR(BirthDate)>= 1958 and YEAR(BirthDate) <= 1960)) and City = 'London'
-- SELECT * from Products WHERE Discontinued = 0
-- SELECT OrderID, CustomerID from Orders where OrderDate < '1996-09-01 00:00:00.000'
-- SELECT ContactName from  Customers where ContactName LIKE '%the%'
-- SELECT ContactName from  Customers where CompanyName LIKE 'B%' or CompanyName LIKE 'W%'
-- SELECT ProductName from Products where ProductName like 'C%' or (ProductID < 40 and UnitPrice >20)
-- SELECT SUM(UnitPrice*UnitsOnOrder),CompanyName,year(OrderDate) from Products,Suppliers,Orders GROUP BY CompanyName, year(OrderDate) WITH ROLLUP
-- SELECT SUM(UnitsOnOrder),SUM(UnitPrice*UnitsOnOrder),CompanyName,year(OrderDate) FROM Products,Suppliers,Orders GROUP BY CompanyName, year(OrderDate)
-- SELECT DatePart(quarter, OrderDate),SUM(UnitsOnOrder),SUM(UnitPrice*UnitsOnOrder),CompanyName FROM Products,Suppliers,Orders GROUP BY DatePart(quarter, OrderDate), CompanyName, year(OrderDate)
-- SELECT CompanyName FROM Customers WHERE ContactName IS NULL AND Fax IS NULL AND (Country = 'USA' or Country = 'Germany'
--3
-- SELECT COUNT(*) FROM Products where QuantityPerUnit LIKE '%bottle%' or QuantityPerUnit LIKE '%box%'
-- SELECT TOP 1 SUM(UnitsInStock) AS SUM, CategoryID FROM Products GROUP BY CategoryID ORDER BY SUM desc
-- SELECT SUM(UnitsInStock) as suma, CategoryID from Products group by CategoryID order by suma
-- SELECT OrderID, Products.UnitPrice,Quantity,Products.UnitPrice*Quantity, Products.UnitPrice*1.15,(Products.UnitPrice*1.15)*Quantity, Products.UnitPrice*Discount,(Products.UnitPrice+Products.UnitPrice*0.15)*Discount from [Order Details],Products
-- SELECT CONCAT(TitleOfCourtesy, FirstName, LastName,' ur.',BirthDate,' zatrudniony w dniu', HireDate,' adres', Address, City, PostalCode, Country) from Employees order by BirthDate
-- SELECT TOP 3 CONCAT(TitleOfCourtesy,' ',FirstName,' ',LastName,' zatrudniony:', HireDate) from Employees order by HireDate
-- SELECT COUNT(*) FROM Employees WHERE Region is not null
-- SELECT AVG(UnitPrice) FROM Products
-- SELECT AVG(UnitPrice) FROM Products WHERE UnitsInStock>= 30
-- SELECT AVG(UnitPrice) FROM Products WHERE UnitsInStock > ( SELECT AVG(UnitsInStock) from Products)
-- SELECT COUNT(*) from Products where UnitPrice > 30
--4
-- SELECT MIN(UnitPrice),MAX(UnitPrice),AVG(UnitPrice) FROM Products WHERE QuantityPerUnit LIKE '%bottle%'
-- SELECT * from Products WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products WHERE QuantityPerUnit LIKE '%bottle%')
-- SELECT COUNT(*) from Products where UnitPrice < 10 OR UnitPrice > 20;
-- SELECT TOP 1 UnitPrice from Products where UnitPrice <  20 ORDER BY UnitPrice DESC;
-- SELECT MAX(UnitPrice),MIN(UnitPrice),AVG(UnitPrice) FROM Products where QuantityPerUnit like '%bottle%';
-- SELECT * from Products where UnitPrice > (SELECT AVG(UnitPrice) from Products);
-- select sum(UnitPrice*UnitsOnOrder) from Products,Orders where OrderID = 10250;
-- SELECT MAX(UnitPrice) FROM [Order Details] GROUP BY OrderID;
-- SELECT MAX(UnitPrice) as MAXPrice FROM [Order Details] GROUP BY OrderID order by MAXPrice;
-- SELECT ProductID, MAX(UnitPrice),MIN(UnitPrice) FROM [Order Details] GROUP BY ProductID;
-- SELECT COUNT(*) from Orders GROUP BY ShipVia;
--5
-- SELECT TOP 1 ShipVia, COUNT(*) AS ILE FROM Orders WHERE YEAR(OrderDate) = 1997 group by ShipVia ORDER BY ILE;
-- SELECT OrderID FROM [Order Details] GROUP BY OrderID HAVING COUNT(*)  > 5;
-- SELECT CustomerID FROM Orders,[Order Details] WHERE YEAR(OrderDate) = 1998  GROUP BY CustomerID HAVING COUNT(*)  > 8 ORDER BY sum(UnitPrice);
-- SELECT ContactName , Address from Customers where City = 'London';
-- SELECT ContactName , Address from Customers WHERE City = 'France' or City = 'Spain';
-- SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 20.00 AND 30.00;
-- SELECT ProductName,UnitPrice FROM Products,Categories WHERE CategoryName LIKE '%Meat%';
-- SELECT ProductName, UnitsInStock FROM Products,Shippers WHERE CompanyName LIKE '%Tokyo Traders%';
-- SELECT ProductName FROM Products WHERE UnitsInStock = 0;
-- SELECT * FROM Products WHERE QuantityPerUnit LIKE '%bottle%'
-- SELECT Title FROM Employees WHERE LastName LIKE '[B-L]%';
-- SELECT CategoryName FROM Categories WHERE Description LIKE '%,%';
-- SELECT CustomerID FROM Customers WHERE CompanyName LIKE '%Store%';
-- SELECT * FROM Products where UnitPrice NOT BETWEEN 10.00 AND 20.00;
-- SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 20.00 AND 30.00;
-- SELECT OrderID, OrderDate, CustomerID from Orders WHERE ShippedDate IS NULL AND ShipCountry = 'Argentin';
-- SELECT ContactName , Country, CompanyName FROM Customers GROUP BY Country,CompanyName,ContactName;
-- SELECT ProductName,UnitPrice,CategoryName FROM Products,Categories GROUP BY CategoryName, UnitPrice,ProductName;
-- SELECT ContactName, Country FROM Customers where Country = 'Japan' OR Country = 'Italy' ORDER BY CompanyName ;
-- SELECT sum(UnitPrice*Quantity) from [Order Details] WHERE OrderID = 10250 GROUP BY ProductID;
-- SELECT CONCAT(Phone, ' , ', Fax) AS contact FROM Suppliers;
--6
-- SELECT SUM(UnitPrice*Quantity*(1-Discount)) FROM [Order Details] WHERE OrderID = 10250;
-- SELECT MAX([Order Details].UnitPrice*Quantity) FROM Products,[Order Details] GROUP BY  OrderID,Products.ProductID;
-- SELECT  MAX([Order Details].UnitPrice*Quantity),MIN([Order Details].UnitPrice*Quantity),Products.ProductID,OrderID FROM Products,[Order Details] GROUP BY  OrderID,Products.ProductID;
-- SELECT AVG(differencees)  FROM (SELECT  MAX(UnitPrice)-MIN(UnitPrice) AS differencees FROM [Order Details] GROUP BY  OrderID) as Średnia;
-- SELECT COUNT(*),ShipVia FROM Orders group by ShipVia;
-- SELECT Top 1 CompanyName,COUNT(*) AS price FROM Shippers S inner join Orders O on S.ShipperID = O.ShipVia WHERE YEAR(OrderDate) = 1997 group by CompanyName order by price desc;
-- SELECT OrderID FROM [Order Details] GROUP BY OrderID HAVING COUNT(*)  > 5;
-- SELECT CustomerID, COUNT(OrderID) AS OrderAmount, SUM(OrderValue) AS TotalValue FROM (SELECT [O D].OrderID, Orders.CustomerID, Orders.ShippedDate, SUM(([O D].UnitPrice * [O D].Quantity) * (1 - [O D].Discount)) AS OrderValue FROM Orders
/* LEFT JOIN [Order Details] [O D] on Orders.OrderID = [O D].OrderID
GROUP BY Orders.CustomerID, [O D].OrderID, Orders.ShippedDate) as OIOV
-- WHERE YEAR(ShippedDate)=1998
-- GROUP BY CustomerID
-- HAVING COUNT(OrderID) > 8
-- ORDER BY TotalValue DESC

--7
Wybierz nazwy i ceny produktów o cenie jednostkowej pomiędzy 20 a 30, dla każdego produktu podaj dane adresowe dostawcy
Wybierz nazwy produktów oraz informacje o stanie magazynu dla produktów dostarczanych przez firmę ‘Tokyo Traders'
Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe
Wybierz nazwy i numery telefonów dostawców, dostarczających produkty, których aktualnie nie ma w magazynie
Wybierz nazwy i ceny produktów (baza northwind) o cenie jednostkowej pomiędzy 20 a 30, dla każdego produktu podaj
                            dane adresowe dostawcy, interesują nas tylko produkty z kategorii ‘Meat/Poultry’
Wybierz nazwy i ceny produktów z kategorii ‘Confections’ dla każdego produktu podaj nazwę dostawcy.
Wybierz nazwy i numery telefonów klientów , którym w 1997 roku przesyłki dostarczała firma ‘United Package’
Wybierz nazwy i numery telefonów klientów, którzy kupowali produkty z kategorii ‘Confections’

                                                                                                     */
-- SELECT ProductName,UnitPrice,Address FROM Products P LEFT JOIN Suppliers SU ON SU.SupplierID = P.ProductID  WHERE UnitPrice BETWEEN 20 AND 30;
-- SELECT ProductName, UnitsInStock FROM Suppliers LEFT JOIN Products P on Suppliers.SupplierID = P.SupplierID WHERE CompanyName LIKE 'Tokyo Traders';
-- SELECT C.CustomerID FROM (SELECT * FROM Orders WHERE YEAR(OrderDate) = 1997) as [O*] right join Customers C on [O*].CustomerID = C.CustomerID WHERE OrderID IS NULL;
-- SELECT CompanyName,Phone from Suppliers inner join Products P on Suppliers.SupplierID = P.SupplierID WHERE UnitsInStock = 0;
--SELECT ProductName,UnitPrice,Address
--FROM Suppliers INNER JOIN (SELECT * From Products P inner join (SELECT * FROM Categories WHERE CategoryName = 'Meat/Poultry') as [PC*] ON P.CategoryID= [PC*].CategoryID) as [PP**]
--ON Suppliers.SupplierID = [PP**].SupplierID
--WHERE UnitPrice BETWEEN 20 and 30;
-- SELECT ProductName,UnitPrice,CompanyName
-- FROM (SELECT SupplierID,ProductID,UnitPrice,ProductName From Products P inner join (SELECT CategoryID FROM Categories WHERE CategoryName = 'Confections') as [PC*] ON P.CategoryID = [PC*].CategoryID) as [PP**] INNER JOIN (SELECT CompanyName,SupplierID FROM Suppliers) as SCN
-- ON SCN.SupplierID = [PP**].SupplierID
-- SELECT C.CompanyName,C.Phone,OrderDate FROM (SELECT * FROM Orders INNER JOIN  Shippers S ON S.ShipperID = Orders.ShipVia WHERE year(OrderDate) = 1997 and CompanyName lIKE 'United Package') as [OS*] LEFT JOIN Customers C on c.CustomerID = [OS*].CustomerID;
-- SELECT CompanyName,Phone,CategoryName
-- FROM Customers S inner join (((Select SupplierID,ProductID,CategoryName from Products P inner join Categories C on P.CategoryID = C.CategoryID WHERE CategoryName = 'Confections') as [PC*] inner join [Order Details] [O D] on [O D].ProductID = [PC*].ProductID) INNER JOIN Orders ON Orders.OrderID = [O D].OrderID) ON Orders.CustomerID = S.CustomerID GROUP BY CompanyName, Phone, CategoryName;



--1
-- SELECT Cu.CompanyName,Cu.Phone FROM Customers Cu
-- inner join (SELECT Sh.CompanyName,YEAR(ShippedDate) as Orderdate,Orders.CustomerID
-- from (Shippers Sh inner join Orders on Sh.ShipperID = Orders.ShipVia)) as SO
-- on Cu.CustomerID = SO.CustomerID where SO.CompanyName = 'United Package' and Orderdate = 1997;

--2
-- SELECT CompanyName,Phone,CategoryName
-- FROM Customers S inner join
-- (((Select SupplierID,ProductID,CategoryName from Products P
-- inner join Categories C on P.CategoryID = C.CategoryID
-- WHERE CategoryName = 'Confections') as [PC*] inner join [Order Details] [O D]
-- on [O D].ProductID = [PC*].ProductID)
-- INNER JOIN Orders ON Orders.OrderID = [O D].OrderID) ON Orders.CustomerID = S.CustomerID
-- GROUP BY CompanyName, Phone, CategoryName;

--3
-- SELECT CompanyName,Phone,CategoryName
-- FROM Customers S left join
-- (((Select SupplierID,ProductID,CategoryName from Products P
-- inner join Categories C on P.CategoryID = C.CategoryID
-- WHERE CategoryName = 'Confections') as [PC*] inner join [Order Details] [O D]
-- on [O D].ProductID = [PC*].ProductID)
-- INNER JOIN Orders ON Orders.OrderID = [O D].OrderID) ON Orders.CustomerID = S.CustomerID
-- where CategoryName is NULL
-- GROUP BY CompanyName, Phone, CategoryName;

--4
-- SELECT ProductName,Max(Quantity)
-- FROM Products P inner join [Order Details] [O D] on P.ProductID = [O D].ProductID
-- group by ProductName;

-- --5
-- SELECT price,ProductName,UnitPrice
-- FROM (SELECT AVG(UnitPrice) as price
--  FROM Products) as Pp, Products
-- where price >UnitPrice;


--6
-- SELECT ProductName,UnitPrice,średnia
-- FROM Products P inner join
-- (SELECT C.CategoryID,AVG(UnitPrice) as średnia FROM Products PO
-- inner join Categories C on C.CategoryID = PO.CategoryID
-- group by C.CategoryID) as CIś on P.CategoryID = CIś.CategoryID  where średnia > UnitPrice;

-- -- 7
-- SELECT price,ProductName,UnitPrice,price-UnitPrice as róznica
-- FROM (SELECT AVG(UnitPrice) as price
--  FROM Products) as Pp, Products
-- where price >UnitPrice;

--8
-- SELECT Products.ProductName,Products.UnitPrice,price-Products.UnitPrice as róznica
-- FROM (SELECT AVG(UnitPrice) as price,CategoryID
-- FROM Products group by CategoryID) as Pp
-- inner join Products on Pp.CategoryID = Products.CategoryID
-- inner join Categories C on C.CategoryID = Products.CategoryID;

-- --9
-- SELECT SUM(Quantity*[O D].UnitPrice - (Quantity*[O D].UnitPrice)*Discount) from Products
-- inner join [Order Details] [O D] on Products.ProductID = [O D].ProductID
-- where OrderID = 10250;
--
-- --10
-- SELECT O.OrderID,SUM(Quantity*[O D].UnitPrice - (Quantity*[O D].UnitPrice)*Discount) + O.Freight from Orders O
-- inner join [Order Details] [O D] on O.OrderID = [O D].OrderID
-- GROUP BY O.OrderID, O.Freight;







