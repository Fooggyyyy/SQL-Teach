--SELECT Customers.FirstName, Products.ProductName, Orders.CreatedAt  ������� ���������� 
--FROM Orders, Customers, Products
--WHERE Orders.CustomerId = Customers.Id AND Orders.ProductId=Products.Id

--SELECT Orders.CreatedAt, Orders.ProductCount, Products.ProductName  --����� ����������, ����������, ��������� �� ����������
--FROM Orders
--JOIN Products ON Products.Id = Orders.ProductId
--WHERE Products.Price < 45000


--����� ������� ����������, ��������� ���
--LEFT: ������� ����� ��������� ��� ������ �� ������ ��� ����� �������
--RIGHT: ������� ����� ��������� ��� ������ �� ������ ��� ������ �������
--FULL: ������� ����� ��������� ��� ������ �� ����� ������

--SELECT FirstName, CreatedAt, ProductCount, Price 
--FROM Customers LEFT JOIN Orders 
--ON Orders.CustomerId = Customers.Id
--WHERE Orders.CustomerId IS NOT NULL �������� ��� ��� �� �����������

--� inner join ��� �� ����������� �� ����������� ������ ���������
--� out join ��� �� ����������� ��� ����� ��������� �������� ������ �������, �� �� ����� ��������� ����� ������


--CROSS ������ ��������� �������� ��� �������
--SELECT * FROM Orders CROSS JOIN Customers
