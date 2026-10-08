-------------------------------------
-- Queries MySQL for database "A hospital database"
------------------------------------

-- QUERY 1: List all doctors based at a specific hospital

SELECT doctors.name AS Doctors, hospitals.name AS Hospital FROM doctors
	INNER JOIN hospitals
	ON doctors.hospital_id = hospitals.hospital_id
	WHERE doctors.hospital_id = 19;

-- QUERY 2: List all prescriptions for a specific patient ordered by prescription date

SELECT patients.name, prescriptions.prescription_id, prescriptions.medication, prescriptions.prescription_date FROM prescriptions
	INNER JOIN patients
	ON prescriptions.patient_id = patients.person_id
	WHERE patients.person_id = 230
	ORDER BY prescriptions.prescription_date;

-- QUERY 3: List all prescriptions issued by a specific doctor

SELECT doctors.name, prescriptions.medication, prescriptions.prescription_id, prescriptions.prescription_date   FROM prescriptions
	INNER JOIN doctors
	ON prescriptions.doctor_id = doctors.person_id
	WHERE doctors.person_id = 3;

-- QUERY 4: Add a new patient and assign the patient to a doctor
-- a) Verify the highest existing patient ID
SELECT MAX(person_id) AS highest_patient_id FROM patients;

-- b) Insert new patient record
INSERT INTO patients (person_id, name, date_of_birth, address, role, doctor_id)
VALUES (701, "Peter Griffin", '1960-10-28', "7569 Frame Apt. 671, New Patricia, OH 98749", 'Patient', 1);


-- QUERY 5: Identify the doctors with the highest number of prescriptions 

SELECT doctors.name, COUNT(*) AS number_prescriptions FROM prescriptions
	INNER JOIN doctors
	ON prescriptions.doctor_id = doctors.person_id
	GROUP BY prescriptions.doctor_id, doctors.name
	ORDER BY COUNT(*) DESC
	LIMIT 1;


-- QUERY 6: List all doctors working at the hospital with biggest size (number of beds)

SELECT doctors.name AS Doctor, hospitals.name AS Hospital, hospitals.size AS "Hospital Beds(N)" FROM doctors
	INNER JOIN hospitals
	ON doctors.hospital_id = hospitals.hospital_id
	WHERE hospitals.size =
	(SELECT MAX(hospitals.size) FROM hospitals);
