-- Insert departments
INSERT INTO departments (department_name, floor) VALUES
('Cardiology', 2),
('Neurology', 3),
('Pediatrics', 1),
('Oncology', 4);

-- Insert patients
INSERT INTO patients (first_name, last_name, dob, gender, contact) VALUES
('Alice', 'Johnson', '1985-03-12', 'Female', 'alice.johnson@example.com'),
('Bob', 'Smith', '1990-07-21', 'Male', 'bob.smith@example.com'),
('Clara', 'Nguyen', '1978-12-05', 'Female', 'clara.nguyen@example.com'),
('David', 'Lee', '2001-09-17', 'Male', 'david.lee@example.com'),
('Ella', 'Brown', '1995-11-30', 'Female', 'ella.brown@example.com');

-- Insert staffs
INSERT INTO staffs (first_name, last_name, role, username, password) VALUES
('Grace', 'Williams', 'Admin', 'gracew', 'admin123'),
('Henry', 'Olu', 'Receptionist', 'henryo', 'welcome1'),
('Isla', 'Kim', 'Lab Tech', 'islak', 'test456'),
('James', 'Moyo', 'Pharmacist', 'jamesm', 'pill987'),
('Kemi', 'Adebayo', 'Nurse', 'kemia', 'care321');

-- Insert doctors
INSERT INTO doctors (first_name, last_name, specilaty, phone_number, department_id) VALUES
('Dr. John', 'Smith', 'Cardiologist', '07111111111', 1),
('Dr. Maria', 'Lopez', 'Neurologist', '07222222222', 2),
('Dr. Ahmed', 'Khan', 'Pediatrician', '07333333333', 3),
('Dr. Linda', 'Osei', 'Oncologist', '07444444444', 4),
('Dr. Mike', 'Taylor', 'Cardiologist', '07555555555', 1);

-- Insert appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, reason) VALUES
(1, 1, '2025-07-21 10:00:00', 'Chest pain'),
(2, 2, '2025-07-22 11:30:00', 'Seizures'),
(3, 3, '2025-07-23 09:45:00', 'Fever'),
(4, 4, '2025-07-24 13:15:00', 'Cancer follow-up'),
(5, 5, '2025-07-25 15:00:00', 'Heart checkup');

-- Insert prescriptions
INSERT INTO prescriptions (appointment_id, medication, dosage) VALUES
(1, 'Aspirin', '100mg once daily'),
(2, 'Keppra', '500mg twice daily'),
(3, 'Paracetamol', '500mg every 6 hours'),
(4, 'Tamoxifen', '20mg once daily'),
(5, 'Atorvastatin', '10mg once daily');
