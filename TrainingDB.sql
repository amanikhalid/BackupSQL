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
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_Diff.bak' WITH DIFFERENTIAL;

-- 4. Transaction Log Backup
ALTER DATABASE TrainingDB SET RECOVERY FULL;
BACKUP LOG TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_Log.trn';

-- 5. Copy-Only Backup
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\TrainingDB_CopyOnly.bak' WITH COPY_ONLY;

---------------------------------------------

-- Part 3: Real-World Scenario Simulation 
BACKUP DATABASE HospitalDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB_Full.bak';

-- FULL BACKUP - Run Every Sunday at 12:00 AM
BACKUP DATABASE HospitalDB
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB_Full_20250525_0000.bak'
WITH FORMAT, INIT, NAME = 'Full Backup of HospitalDB';

-- DIFFERENTIAL BACKUP - Run Monday to Saturday at 12:00 AM
BACKUP DATABASE HospitalDB
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB_Diff_20250529_0000.bak'
WITH DIFFERENTIAL, INIT, NAME = 'Differential Backup of HospitalDB';

-- TRANSACTION LOG BACKUP - Run Every Hour
BACKUP LOG HospitalDB
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB_Log_20250529_1300.trn'
WITH INIT, NAME = 'Transaction Log Backup of HospitalDB';












