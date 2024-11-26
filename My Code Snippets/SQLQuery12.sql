--����������� CASE 
SELECT ProductName, Manufacturer,
    CASE ProductCount
        WHEN 1 THEN 'Product end'
        WHEN 2 THEN 'Small Product'
        WHEN 3 THEN 'Product Have'
        ELSE 'Big Product'
    END AS EvaluateCount
FROM Products

--��������� IIF
SELECT ProductName, Manufacturer,
    IIF(ProductCount>3, 'Big Product', 'Small Product')
FROM Products

--NEWID() ������� ���������� ID
--ISNULL(���������, ��������) ��������� NULL ���������, ���� ��, ���� ��������
--COALESCE(���������_1, ���������_2, ���������_N) ��������� ������ �� NULL