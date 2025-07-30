--CREATING VIEWS 

--view to return patient with appointment of the current day
CREATE VIEW todays_appointments AS
SELECT
    a.appointment_id,
    p.first_name, p.last_name AS patient_name,
    d.first_name, d.last_name AS doctor,
    a.appointment_date,
    a.reason
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE DATE(a.appointment_date) = CURRENT_DATE;
