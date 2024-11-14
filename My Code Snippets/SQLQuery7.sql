--INSERT Products VALUES ('iPhone 7', 'Apple', 5, 52000)

--INSERT INTO Products (ProductName, Manufacturer, Price, ProductCount) 
--VALUES
--('iPhone 6', 'Apple', 36000, 4),
--('Galaxy S8', 'Samsung', 46000, 3),
--('Galaxy S8 Plus', 'Samsung', 5600, 20)

--SELECT ProductName, Price FROM Products

--SELECT ProductName + ' (' + Manufacturer + ')', Price, Price * ProductCount 
--FROM Products

--SELECT
--ProductName + ' (' + Manufacturer + ')' AS ModelName, 
--Price,  
--Price * ProductCount AS TotalSum
--FROM Products

--SELECT DISTINCT ProductName FROM Products

--SELECT ProductName + ' (' + Manufacturer + ')' AS ModelName, Price
--INTO ProductSummary
--FROM Products
 
--SELECT * FROM ProductSummary

--SELECT *
--FROM Products
--ORDER BY ProductCount ASC --По возрастанию(default)

--SELECT ProductName
--FROM Products
--ORDER BY ProductCount DESC --По убыванию

--Сначало сортируется по Manufacturer, Если они равны, то эта часть сортируется по ProductName
--SELECT ProductName, Price, Manufacturer
--FROM Products
--ORDER BY Manufacturer DESC, ProductName ASC

--SELECT ProductName, Price, ProductCount
--FROM Products
--ORDER BY ProductCount * Price

--SELECT TOP 4 *
--FROM Products
--ORDER BY Price

--SELECT TOP 50 PERCENT *
--FROM Products
--ORDER BY Price * ProductCount DESC

--SELECT * FROM Products
--ORDER BY Id 
	--OFFSET 2 ROWS -- Пропускает первые 2 строки таблицы
	--FETCH FIRST	5 ROWS ONLY; --Без OFFSET не будетт действовать. Выбирает до 5 строк

--SELECT * FROM Products
--WHERE Manufacturer = 'sAMsung' AND Price > 20000
--ORDER BY Price DESC

--SELECT * FROM Products
--WHERE Id > 10 OR Manufacturer <> 'Apple'

--SELECT * FROM Products
--WHERE Manufacturer IN ('Samsung', 'Xiaomi', 'Huawei')

--SELECT * FROM Products
--WHERE Manufacturer NOT IN ('Samsung', 'Apple')

--SELECT * FROM Products
--WHERE Price BETWEEN 20000 AND 40000

--SELECT * FROM Products
--WHERE Price NOT BETWEEN 20000 AND 60000

--SELECT * FROM Products
--WHERE ProductName LIKE 'iPhone [6-8]%'

--SELECT * FROM Products
--WHERE ProductName LIKE 'Galaxy S_'

--SELECT * FROM Products
--WHERE ProductName LIKE 'iPhone [789]'

--SELECT * FROM Products
--WHERE ProductName LIKE 'iPhone [^789]%'