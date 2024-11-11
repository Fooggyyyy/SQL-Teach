--Cоздаем таблицы
CREATE TABLE Customers
(
    Id INT PRIMARY KEY IDENTITY(1,1), --PRIMARY KEY Делает первичным ключом, IDENTITY(1,1) делает индификатором с начальным 1, после каждую строку +1
    Age INT DEFAULT 18 CHECK(Age >0 AND Age < 100), --По дефолту будет значение 11, после чего проверка с помощью CHECK
    FirstName NVARCHAR(20) NOT NULL, --Не допускает NULL
    LastName NVARCHAR(20) NOT NULL,
    Email VARCHAR(30) UNIQUE, --UNIQUE обязывает быть уникальным
    Phone VARCHAR(20) UNIQUE,
);
 
 GO --Если запрос выше не выполнен, ниже оно не пойдет

CREATE TABLE Orders
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    CreatedAt Date,
	--Orders - зависимая, Customes - родительская
    FOREIGN KEY (CustomerId) REFERENCES Customers (Id) ON DELETE SET DEFAULT ON UPDATE SET NULL--Добавляет внешний ключ, При удалении устанавливает дефолтное значение, При обновлении устанавливает NULL

	--ON DELETE - действие на удаление в родительской таблице
	--ON UPDATE - действие на обновлении в родительской таблице


	--CASCADE Удаляет/Обновляет значение в зависимости от ON DELETE и ON UPDATE
	--NO ACTION Предотвращает какие либо действия при удалении/обновлении
	--SET NULL Устанавливает NULL
	--SET DEFAULT Устанавливает DEFAULT значение

)

ALTER TABLE Customers --Изменения в таблице
ADD Address NVARCHAR(50) NOT NULL DEFAULT 'Неизвестно'; --Добавляет столбец

ALTER TABLE Customers
DROP COLUMN Address; --Удаляет столбец

ALTER TABLE Customers WITH NOCHECK --Если не прошло проверку, что бы не было ошибок
ADD CHECK (Age > 21);

--Удаляем
DROP TABLE Customers
DROP TABLE Orders