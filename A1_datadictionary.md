### DATA DICTIONARY

#### Hospitals

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|hospital\_id|INT|Hospital unique identifier|Primary Key, NOT NULL|
|name|VARCHAR(150)|Hospital name|NOT NULL|
|address|VARCHAR(150)|Hospital address|NOT NULL|
|size|INT|Number of beds|NOT NULL|
|type|VARCHAR(150)|Type|NOT NULL|
|accreditation\_status|VARCHAR(150)|Accreditation status|NOT NULL|

#### Doctors

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|person_id|INT|Doctor unique identifier|Primary Key, NOT NULL|
|name|VARCHAR(150)|Doctor name|NOT NULL|
|date_of_birth|DATE|Doctor date of birth||NOT NULL|
|address|VARCHAR(150)|Doctor address|NOT NULL|
|role|VARCHAR(150)|Person role (i.e. Doctor)|NOT NULL|
|hospital_id|INT|Hospital unique identifier|Foreign Key, NOT NULL|



#### Patients

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|person_id|INT|Patient unique identifier|Primary Key, NOT NULL|
|name|VARCHAR(150)|Patient name|NOT NULL|
|date_of_birth|DATE|Patients date of birth||NOT NULL|
|address|VARCHAR(150)|Patient address|NOT NULL|
|role|VARCHAR(150)|Person role (i.e. Patient)|NOT NULL|
|doctor_id|INT|Doctor unique identifier|Foreign Key, NOT NULL|



#### Prescriptions

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|prescription_id|INT|Prescription unique identifier|Primary Key, NOT NULL|
|patient_id|INT|Patient unique identifier|Foreign Key, NOT NULL|
|doctor_id|INT|Doctor unique identifier|Foreign Key, NOT NULL|
|medication|VARCHAR(150)|Name prescribed medication|NOT NULL|
|prescription_date|DATE|Date of prescription|NOT NULL|



