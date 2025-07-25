-- Stored procedure to book a new appointment for a patient, mostly will done by the doctor or staff
CREATE OR REPLACE FUNCTION book_appointment(
    p_patient_id INT,
    p_doctor_id INT,
    p_datetime TIMESTAMP,
    p_reason TEXT
) RETURNS VOID AS $$
BEGIN
    INSERT INTO appointments(patient_id, doctor_id, appointment_date, reason)
    VALUES (p_patient_id, p_doctor_id, p_datetime, p_reason);
END;
$$ LANGUAGE plpgsql;