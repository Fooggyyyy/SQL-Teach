USE userdb

CREATE TABLE TestTable
(
	ID INT PRIMARY KEY IDENTITY(1, 1), --Сделать первичным ключом + индефикатором. Начинается с 1, каждый раз по +1
	--PRIMARY KEY(ID, ID2) Ну или так сделать его составным. 
	Email VARCHAR(30) UNIQUE, --Индевидуальное значение
	FirstName NVARCHAR(20) NOT NULL, --Не может принимать NULL
    Phone VARCHAR(20) NULL, --Может принимать NULL
	Age INT DEFAULT 18 CHECK(Age >0 AND Age < 100), --Дефолтное значение 18. Проверка, что значение должно быть в диапозоне от 0 до 100 не включительно
)

SELECT * FROM TestTable