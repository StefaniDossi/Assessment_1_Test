-------------------------------------
-- Queries MySQL for database "A hosptial database"
------------------------------------

-- Query 1: print a list of all doctors based at a particular hospital



-- Query 2: print a list of all prescriptions for a particular patient, ordered by the prescription date 





-- Query 3: print a list of all prescription that a particular doctor has prescribed 





-- Query 4: add a new patient to the database, including bein registered with one of the doctors

-- a) verify first last used id for patients

SELECT * FROM patients
        WHERE person_id = (
                SELECT MAX(person_id) FROM patients);

-- b) execute query

INSERT INTO patients (person_id, name, date_of_birth, address, role, doctor_id)
VALUES (701, "Peter Griffin", '1960-10-28', "7569 Frame Apt. 671, New Patricia, OH 98749", 'Patient', 1);



-- Query 5: identify which doctors has made the most prescriptions 

CREATE vw_top_prescribing_doctors VIEW
SELECT doctors.name, prescriptions.doctor_id, COUNT(*) FROM prescriptions
	INNER JOIN doctors
	ON prescriptions.doctor_id = doctors.person_id
	GROUP BY prescriptions.doctor_id, doctors.name
	ORDER BY COUNT(*) DESC
	LIMIT 10 -- not the full output is needed


-- Query 6: print a list of all doctors at the hospital with biggest size (number of beds)

CREATE VIEW vw_doctors_largest_hospital AS
SELECT doctors.name AS Doctor, hospitals.name AS Hospital, hospitals.size AS "Hospital Beds(N)" FROM doctors
	INNER JOIN hospitals
	ON doctors.hospital_id = hospitals.hospital_id
	WHERE hospitals.size =
	(SELECT MAX(hospitals.size) FROM hospitals);
