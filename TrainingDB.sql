--Create Training Database

CREATE DATABASE TrainingDB;

USE TrainingDB;

-- Create Students Table

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    EnrollmentDate DATE
);


--Insert Data into Students table
INSERT INTO Students VALUES  
(1, 'Sara Ali', '2023-09-01'), 
(2, 'Mohammed Nasser', '2023-10-15');


-- Perform Backup Operations

-- 1. Full Backup
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_Full.bak';

-- 2. Insert New Record
INSERT INTO Students VALUES (3, 'Fatma Said', '2024-01-10');

-- 3. Differential Backup
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_Full.bak' WITH DIFFERENTIAL;

-- 4. Transaction Log Backup
ALTER DATABASE TrainingDB SET RECOVERY FULL;
BACKUP LOG TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_Full.bak';





