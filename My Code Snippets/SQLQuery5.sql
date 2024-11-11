USE userdb

CREATE TABLE TestTable
(
	ID INT PRIMARY KEY IDENTITY(1, 1), --������� ��������� ������ + �������������. ���������� � 1, ������ ��� �� +1
	--PRIMARY KEY(ID, ID2) �� ��� ��� ������� ��� ���������. 
	Email VARCHAR(30) UNIQUE, --�������������� ��������
	FirstName NVARCHAR(20) NOT NULL, --�� ����� ��������� NULL
    Phone VARCHAR(20) NULL, --����� ��������� NULL
	Age INT DEFAULT 18 CHECK(Age >0 AND Age < 100), --��������� �������� 18. ��������, ��� �������� ������ ���� � ��������� �� 0 �� 100 �� ������������
)

SELECT * FROM TestTable