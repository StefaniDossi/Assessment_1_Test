### Assessment One Test README

To copy after this text

### Module 1 - Assessment 1 
Master of Health Data Science <br>
University of Exter <br>
Module: Computing Skills and Phython

#### Overview of Assessment Content
This repository contains the deliverables completed as part of Assessment 1.

The assessment focuses on:
- code planning with Entity Relationship Diagram (ERD) and pseudocode
- creating MySQL databases
- writing MySQL queries
- using GitHub to track and control projects

#### Overview Repository Content
|File Name|Short Description|File Type|
|-|-|-|
|[README.md](https://github.com/StefaniDossi/Assessment_1_Test/edit/main/README.md)|Overview document in repository|.md| DELETE README FILE 
||Description of entities, attributes, and their relationships|.png|
||Pseudocodes for planning Flow in database creation and respetive queries|.txt|
||Code for creating MySQL tables|.sql|
||SQL queries developed for the assignment tasks|.sql|
||Export of the MySQL database containing all tables|.sql|

#### General Information
The database was designed using four main entities:
- Hospitals
- Doctors
- Patients
- Prescriptions  <br>

Doctors and patients were implemented as separate tables to simplify relationships and improve readability of the database structure.

#### Details Repository 

##### Data Dictionary
##### Pseudocode File
##### Codes for Tables
The table creation code was saved as a .sql file rather than a .txt file, as SQL formatting improves readability and clearly distinguishes database commands.

Four tables were created from the four provided `.csv` files.

**Important note:** When importing data from the `.csv` files, the file paths may need to be adapted to match the local system configuration.

##### Codes for MySQL Queries
When writing the MySQL queries, I considered whether to use direct SELECT statements or CREATE VIEW statements. As the assignment did not require query reuse, I chose to use direct SELECT queries. This keeps the script concise and avoids creating unnecessary database objects.

In several queries, additional descriptive fields such as patient names, doctor names, and hospital names were included in the output to provide context and improve readability. While some of these fields are technically redundant because the records are already identified through filtering conditions or relationships, they make the query results more self-explanatory and easier to interpret. A more minimalistic approach would be to return only the essential fields required to answer each query.

in query 5 limit 1 to have the doctor with most prescription, possible ot increse this number, or delete LIMIT completly to have a comparison with other doctors

##### MySQL Database
Contains the four tables: hospitals, doctors, patients, and prescriptions.


#### Additional Information
The original .csv files provided for the assessment have intentionally not been uploaded to GitHub. Although the dataset contains fictional information, healthcare datasets are generally considered sensitive and should be handled carefully. If access to the source files is required for assessment purposes, please contact me at sd1023@exeter.ac.uk.

#### Instructions

#### Online Resources used for Troubleshooting
* [W3Schools](https://www.w3schools.com/)
* [MySQL](https://dev.mysql.com/doc/refman/9.7/en/preface.html)
* [Stack Overflow](https://stackoverflow.com/)
* [DataCamp](https://www.datacamp.com/)
