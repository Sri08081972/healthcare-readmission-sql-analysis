CREATE DATABASE HealthcareReadmission;
GO

USE HealthcareReadmission;
GO

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50)
);

CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    AdmitDate DATE,
    DischargeDate DATE,
    Diagnosis VARCHAR(100),
    Readmitted30Days VARCHAR(3),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
