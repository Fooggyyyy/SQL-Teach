USE UEI;

--UNION, объединяет те же столбцы с двух таблиц
	--SELECT FirstName, LastName 
	--FROM Customers
	--UNION SELECT FirstName, LastName FROM Employees

--ALL сохраняет еще и повторяющиеся значения
	--SELECT FirstName, LastName
	--FROM Customers
	--UNION ALL SELECT FirstName, LastName 
	--FROM Employees

--EXCEPT находит данные, которые есть в первой, но нет во второй таблице
--Есть в Customers, но нет в Employees
	--SELECT FirstName, LastName
	--FROM Customers
	--EXCEPT SELECT FirstName, LastName 
	--FROM Employees

--INTERSECT выводит все общие данные
	--SELECT FirstName, LastName
	--FROM Employees
	--INTERSECT SELECT FirstName, LastName 
	--FROM Customers