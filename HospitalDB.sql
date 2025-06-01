-- Create HospitalDB

CREATE DATABASE HospitalDB;

USE HospitalDB;

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);
   
-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME,
    Reason NVARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


-- Insert sample data into Departments
INSERT INTO Departments (DepartmentName)
VALUES 
('Cardiology'),
('Neurology'),
('Pediatrics'),
('Orthopedics');

-- Insert sample data into Doctors
INSERT INTO Doctors (FirstName, LastName, DepartmentID)
VALUES
('Salim', 'Al-Muqbali', 1),
('Aisha', 'Al-Harthy', 2),
('Muna', 'Al-Lawati', 3),
('Hassan', 'Al-Balushi', 4);

-- Insert sample data into Patients
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender)
VALUES
('Ahmed', 'Al-Hinai', '1982-04-12', 'Male'),
('Fatma', 'Al-Zadjali', '1993-08-23', 'Female'),
('Layla', 'Al-Kalbani', '2005-10-17', 'Female'),
('Yusuf', 'Al-Nabhani', '1978-02-03', 'Male');

