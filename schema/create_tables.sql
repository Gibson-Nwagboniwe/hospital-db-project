--CREATE RELEVANT TABLES


--DEPARTMENTS TABLE
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    floor INT
);

--PATIENTS TABLE
DROP TABLE IF EXISTS patients;
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10),
    contact VARCHAR(50)
);

--STAFFS TABLE
DROP TABLE IF EXISTS staffs;
CREATE TABLE staffs (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    username VARCHAR(50),
    password TEXT
);

--DOCTORS TABLE
DROP TABLE IF EXISTS doctors;
CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    specilaty VARCHAR(200),
    phone_number VARCHAR(20),
    department_id INT REFERENCES departments(department_id)
);



--APPOINTMENTS TABLE
DROP TABLE IF EXISTS appointments;
CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    appointment_date TIMESTAMP NOT NULL,
    reason TEXT
);

--PRESCRIPTIONS TABLE
DROP TABLE IF EXISTS prescriptions;
CREATE TABLE prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    appointment_id INT REFERENCES appointments(appointment_id),
    medication TEXT,
    dosage TEXT
);
