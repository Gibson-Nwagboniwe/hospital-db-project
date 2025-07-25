CREATE VIEW todays_appointments AS
SELECT
    a.appointment_id,
    p.first_name, p.last_name AS patient_name
    d.first_name, d.last_name AS doctor
    a.appointment_date
    a.reason
FROM appointments a
JOIN patient_id
JOIN doctors d
WHERE DATE(d.appointment_date) = CURRENT DATE;
