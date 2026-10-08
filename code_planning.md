# HOSPITAL DATABASE CODE PLANNING 
## Entity Relationship Diagram (ERD)

<p align="center">
<img width="472" height="837" alt="database_erd" src="https://github.com/user-attachments/assets/1d9a3ae5-dd96-437c-8ee3-7e54bfd418e2" />
</p>

## PSEUDOCODE

### Input
INPUT hospitals.csv

INPUT doctors.csv

INPUT patients.csv

INPUT prescriptions.csv

---
### Create Tables
CREATE hospitals table

CREATE doctors table

CREATE patients table

CREATE prescriptions table

---
### Import Data
IMPORT .csv data into corresponding tables

---
### MySQL Queries
RETRIEVE doctors at specified hospital

RETRIEVE prescriptions for specified patient odered by prescription date

RETRIEVE prescriptions issued by specified doctor

ADD patient and assign doctor

IDENTIFY doctor with highest number of prescriptions

RETRIEVE doctors at largest hospital

---
### Output
OUTPUT query results
