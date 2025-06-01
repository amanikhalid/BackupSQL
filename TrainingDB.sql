--Create Training Database

CREATE DATABASE TrainingDB;

USE TrainingDB;

-- Create Students Table

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    EnrollmentDate DATE
);

