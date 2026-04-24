-- 1. Total patients
SELECT COUNT(*) AS TotalPatients FROM Patients;

-- 2. Readmitted patients count
SELECT COUNT(*) AS ReadmittedCount
FROM Admissions
WHERE Readmitted30Days = 'Yes';

-- 3. Readmission rate
SELECT 
    COUNT(CASE WHEN Readmitted30Days = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS ReadmissionRate
FROM Admissions;

-- 4. Patients above age 60
SELECT * FROM Patients WHERE Age > 60;

-- 5. Most common diagnosis
SELECT Diagnosis, COUNT(*) AS Count
FROM Admissions
GROUP BY Diagnosis
ORDER BY Count DESC;

-- 6. Join patients + admissions
SELECT P.PatientName, A.Diagnosis, A.Readmitted30Days
FROM Patients P
JOIN Admissions A ON P.PatientID = A.PatientID;

-- 7. Patients readmitted within 30 days
SELECT P.PatientName, A.Diagnosis
FROM Patients P
JOIN Admissions A ON P.PatientID = A.PatientID
WHERE A.Readmitted30Days = 'Yes';
