--SELECT AVG(DISTINCT Price) AS Average_Price, --DISTINCT - не учитывает повторяющиеся элементы
--SUM(Price) AS Sum_Price ,
--MIN(Price) AS Min_Price,
--MAX(Price) AS Max_Price,
--COUNT(Price) AS Count_Price
--FROM Products --Получаем среднюю цену


--SELECT * FROM Products

--AVG: находит среднее значение
--SUM: находит сумму значений
--MIN: находит наименьшее значение
--MAX: находит наибольшее значение
--COUNT: находит количество строк в запросе

--SELECT Manufacturer, COUNT(*) AS ModelsCount
--FROM Products
--GROUP BY Manufacturer

--SELECT Manufacturer, ProductCount, COUNT(*) AS ModelsCount
--FROM Products
--GROUP BY Manufacturer, ProductCount

--SELECT Manufacturer, COUNT(*) AS ModelsCount
--FROM Products
--WHERE Price > 30000
--GROUP BY Manufacturer HAVING COUNT(*) > 1 HAVING определяет, что должно включиться в таблицу
--ORDER BY ModelsCount DESC

