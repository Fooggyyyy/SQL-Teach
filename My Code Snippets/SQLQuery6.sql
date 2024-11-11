--C������ �������
CREATE TABLE Customers
(
    Id INT PRIMARY KEY IDENTITY(1,1), --PRIMARY KEY ������ ��������� ������, IDENTITY(1,1) ������ ������������� � ��������� 1, ����� ������ ������ +1
    Age INT DEFAULT 18 CHECK(Age >0 AND Age < 100), --�� ������� ����� �������� 11, ����� ���� �������� � ������� CHECK
    FirstName NVARCHAR(20) NOT NULL, --�� ��������� NULL
    LastName NVARCHAR(20) NOT NULL,
    Email VARCHAR(30) UNIQUE, --UNIQUE ��������� ���� ����������
    Phone VARCHAR(20) UNIQUE,
);
 
 GO --���� ������ ���� �� ��������, ���� ��� �� ������

CREATE TABLE Orders
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    CreatedAt Date,
	--Orders - ���������, Customes - ������������
    FOREIGN KEY (CustomerId) REFERENCES Customers (Id) ON DELETE SET DEFAULT ON UPDATE SET NULL--��������� ������� ����, ��� �������� ������������� ��������� ��������, ��� ���������� ������������� NULL

	--ON DELETE - �������� �� �������� � ������������ �������
	--ON UPDATE - �������� �� ���������� � ������������ �������


	--CASCADE �������/��������� �������� � ����������� �� ON DELETE � ON UPDATE
	--NO ACTION ������������� ����� ���� �������� ��� ��������/����������
	--SET NULL ������������� NULL
	--SET DEFAULT ������������� DEFAULT ��������

)

ALTER TABLE Customers --��������� � �������
ADD Address NVARCHAR(50) NOT NULL DEFAULT '����������'; --��������� �������

ALTER TABLE Customers
DROP COLUMN Address; --������� �������

ALTER TABLE Customers WITH NOCHECK --���� �� ������ ��������, ��� �� �� ���� ������
ADD CHECK (Age > 21);

--�������
DROP TABLE Customers
DROP TABLE Orders