--SELECT Customers.FirstName, Products.ProductName, Orders.CreatedAt  неявное соеденение 
--FROM Orders, Customers, Products
--WHERE Orders.CustomerId = Customers.Id AND Orders.ProductId=Products.Id

--SELECT Orders.CreatedAt, Orders.ProductCount, Products.ProductName  --явное соеденение, внутреннее, соеденяет по параметрам
--FROM Orders
--JOIN Products ON Products.Id = Orders.ProductId
--WHERE Products.Price < 45000


--явное внешнее соеденение, соеденяет все
--LEFT: выборка будет содержать все строки из первой или левой таблицы
--RIGHT: выборка будет содержать все строки из второй или правой таблицы
--FULL: выборка будет содержать все строки из обоих таблиц

--SELECT FirstName, CreatedAt, ProductCount, Price 
--FROM Customers LEFT JOIN Orders 
--ON Orders.CustomerId = Customers.Id
--WHERE Orders.CustomerId IS NOT NULL добавить это при не соотвествии

--В inner join при не соотвествии не добавляется строка полностью
--В out join при не соотвествии все равно добавится значение первой таблицы, но не будет добавлена часть правой


--CROSS просто соеденяет напрямую две таблицы
--SELECT * FROM Orders CROSS JOIN Customers
