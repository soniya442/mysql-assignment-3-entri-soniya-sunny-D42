create database manager ;

CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 18),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')), -- 'O' for Other
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES
    (1, 'John', 'Doe', '1980-05-15', 43, 'M', 'Sales', 75000.00),
    (2, 'Jane', 'Smith', '1975-08-22', 48, 'F', 'Marketing', 85000.00),
    (3, 'Robert', 'Brown', '1982-11-05', 41, 'M', 'IT', 95000.00),
    (4, 'Emily', 'Davis', '1988-02-17', 36, 'F', 'HR', 72000.00),
    (5, 'Michael', 'Wilson', '1990-10-10', 33, 'M', 'Finance', 88000.00),
    (6, 'Sarah', 'Johnson', '1983-12-14', 40, 'F', 'Operations', 92000.00),
    (7, 'Chris', 'Taylor', '1979-09-08', 44, 'M', 'Customer Support', 68000.00),
    (8, 'Laura', 'Moore', '1992-03-25', 31, 'F', 'Sales', 78000.00),
    (9, 'David', 'Anderson', '1985-06-30', 38, 'M', 'IT', 94000.00),
    (10, 'Sophia', 'Thomas', '1987-07-19', 36, 'F', 'HR', 73000.00);
set sql_safe_updates=0 ;    

SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT Manager_Id, First_name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

UPDATE Managers
SET First_name = 'Aaliya'
WHERE Manager_Id = 5;

SELECT *
FROM Managers
WHERE First_name <> 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;






