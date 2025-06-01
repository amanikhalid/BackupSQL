-- Create HospitalDB

CREATE DATABASE HospitalDB;

USE HospitalDB;

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);
   
