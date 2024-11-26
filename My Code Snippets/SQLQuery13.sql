--����������:
DECLARE @name NVARCHAR(20), @age INT --DECLARE �������� ����� ��� ���������� ����������

--SET ��� ������������ ��
SET @name='Tom';
SET @age = 18;

--PRINT �������
PRINT 'Name: ' + @name;
PRINT 'Age: ' + CONVERT(CHAR, @age);

SELECT @name, @age;

--� ��������:
DECLARE @maxPrice MONEY, 
    @minPrice MONEY, 
    @dif MONEY, 
    @count1 INT
 
SET @count1 = (SELECT SUM(ProductCount) FROM Orders);
 
SELECT @minPrice=MIN(Price), @maxPrice = MAX(Price) FROM Products
 
SET @dif = @maxPrice - @minPrice;
 
PRINT N'����� �������: ' + STR(@count1, 5) + N' �����a(��)';
PRINT N'������� ����� ������������ � ����������� �����: ' + STR(@dif)

--IF ELSE
DECLARE @lastDate DATE, @count INT, @sum MONEY
 
SELECT @lastDate = MAX(CreatedAt), 
        @count = SUM(ProductCount) ,
        @sum = SUM(ProductCount * Price)
FROM Orders
 
IF @count > 0
    BEGIN
        PRINT N'���� ���������� ������: ' + CONVERT(NVARCHAR, @lastDate) 
        PRINT N'������� ' + CONVERT(NVARCHAR, @count) + N' ������(�)'
        PRINT N'�� ����� ����� ' + CONVERT(NVARCHAR, @sum)
    END;
ELSE
    PRINT N'������ � ���� ������ �����������'

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
        PRINT N'����� ��������'
    END;

--TRY CATCH
--CATCH: 
--ERROR_NUMBER(): ���������� ����� ������
--ERROR_MESSAGE(): ���������� ��������� �� ������
--ERROR_SEVERITY(): ���������� ������� ����������� ������.
--������� ����������� ������������ �������� ��������. 
--� ���� ��� ����� 10 � ������, �� ����� ������ ��������������� ��� ��������������
--� �� �������������� ������������ TRY...CATCH.
--���� �� ��� �������� ����� 20 � ����, �� ����� ������ �������� � �������� ����������� � ���� ������, 
--���� ��� �� �������������� ������������ TRY...CATCH.

--ERROR_STATE(): ���������� ��������� ������

CREATE TABLE Accounts (FirstName NVARCHAR NOT NULL, Age INT NOT NULL)
 
BEGIN TRY
    INSERT INTO Accounts VALUES(NULL, NULL)
    PRINT '������ ������� ���������!'
END TRY
BEGIN CATCH
    PRINT 'Error ' + CONVERT(VARCHAR, ERROR_NUMBER()) + ':' + ERROR_MESSAGE()
END CATCH