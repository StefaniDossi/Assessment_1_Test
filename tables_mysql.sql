-------------------------------------
-- MySQL TABLE creation code
-------------------------------------

-- Hospital Table
CREATE TABLE hospitals (
	hospital_id INT unsigned NOT NULL PRIMARY KEY,
	name VARCHAR (150) NOT NULL,
	address VARCHAR (150) NOT NULL,
	size INT unsigned NOT NULL,
	type VARCHAR (150) NOT NULL,
	accreditation_status VARCHAR (150) NOT NULL
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/hospitals.csv' INTO TABLE hospitals FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status);


-- Doctor Table

CREATE TABLE doctors (
	person_id INT unsigned NOT NULL PRIMARY KEY,
	name VARCHAR (150) NOT NULL,
	date_of_birth DATE NOT NULL,
	address VARCHAR (150) NOT NULL,
	role VARCHAR (150) NOT NULL,
	hospital_id INT unsigned NOT NULL,
	FOREIGN KEY (hospital_id) REFERENCES hospitals (hospital_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/doctors.csv' INTO TABLE doctors FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (person_id, name, date_of_birth, address, role, hospital_id);


-- Patient Table

CREATE TABLE patients(
	person_id INT unsigned NOT NULL PRIMARY KEY,
	name VARCHAR (150) NOT NULL,
	date_of_birth DATE NOT NULL,
	address VARCHAR (150) NOT NULL,
	role VARCHAR (150) NOT NULL,
	doctor_id INT unsigned NOT NULL,
	FOREIGN KEY (doctor_id) REFERENCES doctors (person_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/patients.csv' INTO TABLE patients FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (person_id, name, date_of_birth, address, role, doctor_id);


-- Prescription Table

CREATE TABLE prescriptions(
	prescription_id INT unsigned NOT NULL PRIMARY KEY,
	patient_id INT unsigned NOT NULL,
	doctor_id INT unsigned NOT NULL,
	medication VARCHAR (150) NOT NULL,
	prescription_date DATE NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES patients (person_id)
	FOREIGN KEY (doctor_id) REFERENCES doctors (person_id)
);


LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/prescriptions.csv' INTO TABLE prescriptions FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (prescription_id, patient_id, doctor_id, medication, prescription_date);
