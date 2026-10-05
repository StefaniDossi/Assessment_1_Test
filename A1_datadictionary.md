create data dictionary



### DATA DICTIONARY

#### Hospitals

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|hospital\_id|INT|Hospital unique identifier|Primary Key, NOT NULL|
|name|VARCHAR(150)|Hospital's name|NOT NULL|
|address|VARCHAR(150)|Hospital's address|NOT NULL|
|size|INT|Number of beds|NOT NULL|
|type|VARCHAR(150)|Type|NOT NULL|
|accreditation\_status|VARCHAR(150)|Accreditation status|NOT NULL|

#### Doctors

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|person_id|INT|Doctor unique identifier|Primary Key, NOT NUll|
|name|VARCHAR(150)|Doctor's name||
|date_of_birth||||
|address|VARCHAR(150)|||
|role|VARCHAR(150)|||
|hospital_id|INT|Hospital unique identifier|Foreign Key, NOT NULL|



#### Patients

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|||||
|||||
|||||
|||||
|||||
|||||



#### Prescriptions

|**Field**|**Data\_Type**|**Description**|**Constraints**|
|-|-|-|-|
|||||
|||||
|||||
|||||
|||||



