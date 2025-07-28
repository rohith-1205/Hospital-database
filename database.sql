CREATE DATABASE IF NOT EXISTS hospitaldb;
USE hospitaldb;

CREATE TABLE IF NOT EXISTS patients(
    id INT PRIMARY KEY,
    patient_name VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    disease VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS doctors(
    id INT PRIMARY KEY,
    doctor_name VARCHAR(20),
    speciality VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS appoinments(
    id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

INSERT INTO patients VALUES
(1, 'Gokul', 'Male', 45, 'Diabetes'),
(2, 'JY', 'Male', 30, 'Flu'),
(3, 'Sanjay', 'Male', 60, 'Heart Disease'),
(4, 'Rohan', 'Male', 25, 'Migraine');

INSERT INTO doctors VALUES
(1, 'Dr. Saumya', 'Cardiology'),
(2, 'Dr. Rohith', 'General Physician'),
(3, 'Dr. Padhu', 'Neurology');

INSERT INTO appointments VALUES
(1, 1, 2, '2025-07-29'),
(2, 2, 2, '2025-08-01'),
(3, 3, 1, '2025-08-04'),
(4, 4, 3, '2025-08-10');