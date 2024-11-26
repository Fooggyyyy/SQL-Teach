--Стандартный CASE 
SELECT ProductName, Manufacturer,
    CASE ProductCount
        WHEN 1 THEN 'Product end'
        WHEN 2 THEN 'Small Product'
        WHEN 3 THEN 'Product Have'
        ELSE 'Big Product'
    END AS EvaluateCount
FROM Products

--Тернарный IIF
SELECT ProductName, Manufacturer,
    IIF(ProductCount>3, 'Big Product', 'Small Product')
FROM Products

--NEWID() Генерит уникальный ID
--ISNULL(выражение, значение) проверяет NULL выражение, если да, дает значение
--COALESCE(выражение_1, выражение_2, выражение_N) возращает первое не NULL