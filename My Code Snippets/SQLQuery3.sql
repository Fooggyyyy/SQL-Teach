--SELECT AVG(DISTINCT Price) AS Average_Price, --DISTINCT - �� ��������� ������������� ��������
--SUM(Price) AS Sum_Price ,
--MIN(Price) AS Min_Price,
--MAX(Price) AS Max_Price,
--COUNT(Price) AS Count_Price
--FROM Products --�������� ������� ����


--SELECT * FROM Products

--AVG: ������� ������� ��������
--SUM: ������� ����� ��������
--MIN: ������� ���������� ��������
--MAX: ������� ���������� ��������
--COUNT: ������� ���������� ����� � �������

--SELECT Manufacturer, COUNT(*) AS ModelsCount
--FROM Products
--GROUP BY Manufacturer

--SELECT Manufacturer, ProductCount, COUNT(*) AS ModelsCount
--FROM Products
--GROUP BY Manufacturer, ProductCount

--SELECT Manufacturer, COUNT(*) AS ModelsCount
--FROM Products
--WHERE Price > 30000
--GROUP BY Manufacturer HAVING COUNT(*) > 1 HAVING ����������, ��� ������ ���������� � �������
--ORDER BY ModelsCount DESC

