UPDATE Products -- Изменяем таблицу
SET Price = Price + 5000

UPDATE Products
SET Manufacturer = 'Samsung Inc.'
WHERE Manufacturer = 'Samsung'

DELETE Products --Удаляем строки
WHERE Id > 10

DELETE Products
WHERE Manufacturer='Xiaomi' AND Price < 15000

DELETE Products

SELECT * FROM Products