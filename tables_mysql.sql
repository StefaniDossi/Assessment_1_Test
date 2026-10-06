
-- Hospital Table
CREATE TABLE hospitals (
    hospital_id INT unsigned NOT NULL PRIMARY KEY,
    name VARCHAR (150) NOT NULL,
    address VARCHAR (150) NOT NULL,
    size INT unsigned NOT NULL,
    type VARCHAR (150) NOT NULL,
    accreditation_status VARCHAR (150) NOT NULL
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/hospitals.csv' INTO TABLE hospitals FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status)

