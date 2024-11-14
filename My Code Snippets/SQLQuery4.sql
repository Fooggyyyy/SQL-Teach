CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Department NVARCHAR(50)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department)
VALUES 
(1, 'Иван', 'Иванов', 30, 'IT'),
(2, 'Мария', 'Петрова', 25, 'HR'),
(3, 'Алексей', 'Сидоров', 35, 'Finance'),
(4, 'Ольга', 'Кузнецова', 28, 'IT'),
(5, 'Дмитрий', 'Смирнов', 40, 'HR')

INSERT INTO Employees (FirstName, LastName, Age, Department)
VALUES ('Иван', 'Иванов', 30, 'IT');

SELECT FirstName, LastName, Age, Department
FROM Employees;

SELECT FirstName, LastName, Age, Department
FROM Employees
ORDER BY LastName ASC;

SELECT TOP 5 FirstName, LastName, Age, Department
FROM Employees
ORDER BY Age DESC;

SELECT FirstName, LastName, Age, Department
FROM Employees
ORDER BY LastName ASC
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE Age > 25;

SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE Department = 'IT';

SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE Age BETWEEN 25 AND 35;

SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE Department IN ('IT', 'HR');

SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE LastName LIKE 'Ив%';

