--Переменные:
DECLARE @name NVARCHAR(20), @age INT --DECLARE ключевое слово для объявления переменных

--SET для иницилизации их
SET @name='Tom';
SET @age = 18;

--PRINT выводит
PRINT 'Name: ' + @name;
PRINT 'Age: ' + CONVERT(CHAR, @age);

SELECT @name, @age;

--В запросах:
DECLARE @maxPrice MONEY, 
    @minPrice MONEY, 
    @dif MONEY, 
    @count1 INT
 
SET @count1 = (SELECT SUM(ProductCount) FROM Orders);
 
SELECT @minPrice=MIN(Price), @maxPrice = MAX(Price) FROM Products
 
SET @dif = @maxPrice - @minPrice;
 
PRINT N'Всего продано: ' + STR(@count1, 5) + N' товарa(ов)';
PRINT N'Разница между максимальной и минимальной ценой: ' + STR(@dif)

--IF ELSE
DECLARE @lastDate DATE, @count INT, @sum MONEY
 
SELECT @lastDate = MAX(CreatedAt), 
        @count = SUM(ProductCount) ,
        @sum = SUM(ProductCount * Price)
FROM Orders
 
IF @count > 0
    BEGIN
        PRINT N'Дата последнего заказа: ' + CONVERT(NVARCHAR, @lastDate) 
        PRINT N'Продано ' + CONVERT(NVARCHAR, @count) + N' единиц(ы)'
        PRINT N'На общую сумму ' + CONVERT(NVARCHAR, @sum)
    END;
ELSE
    PRINT N'Заказы в базе данных отсутствуют'

--WHILE BREAK CONTINUE
DECLARE @number INT
SET @number = 1
 
WHILE @number < 10
    BEGIN
        PRINT CONVERT(NVARCHAR, @number)
        SET @number = @number + 1
        IF @number = 7
            BREAK;
        IF @number = 4
            CONTINUE;
        PRINT N'Конец итерации'
    END;

--TRY CATCH
--CATCH: 
--ERROR_NUMBER(): возвращает номер ошибки
--ERROR_MESSAGE(): возвращает сообщение об ошибке
--ERROR_SEVERITY(): возвращает степень серьезности ошибки.
--Степень серьезности представляет числовое значение. 
--И если оно равно 10 и меньше, то такая ошибка рассматривается как предупреждение
--и не обрабатывается конструкцией TRY...CATCH.
--Если же это значение равно 20 и выше, то такая ошибка приводит к закрытию подключения к базе данных, 
--если она не обрабатывается конструкцией TRY...CATCH.

--ERROR_STATE(): возвращает состояние ошибки

CREATE TABLE Accounts (FirstName NVARCHAR NOT NULL, Age INT NOT NULL)
 
BEGIN TRY
    INSERT INTO Accounts VALUES(NULL, NULL)
    PRINT 'Данные успешно добавлены!'
END TRY
BEGIN CATCH
    PRINT 'Error ' + CONVERT(VARCHAR, ERROR_NUMBER()) + ':' + ERROR_MESSAGE()
END CATCH