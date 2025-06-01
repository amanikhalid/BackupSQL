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


