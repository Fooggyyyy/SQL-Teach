USE UEI;

--UNION, ���������� �� �� ������� � ���� ������
	--SELECT FirstName, LastName 
	--FROM Customers
	--UNION SELECT FirstName, LastName FROM Employees

--ALL ��������� ��� � ������������� ��������
	--SELECT FirstName, LastName
	--FROM Customers
	--UNION ALL SELECT FirstName, LastName 
	--FROM Employees

--EXCEPT ������� ������, ������� ���� � ������, �� ��� �� ������ �������
--���� � Customers, �� ��� � Employees
	--SELECT FirstName, LastName
	--FROM Customers
	--EXCEPT SELECT FirstName, LastName 
	--FROM Employees

--INTERSECT ������� ��� ����� ������
	--SELECT FirstName, LastName
	--FROM Employees
	--INTERSECT SELECT FirstName, LastName 
	--FROM Customers