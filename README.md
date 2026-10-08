# A HOSPITAL DATABASE :hospital:

This repository contains the deliverables completed as part of Assessment 1 of Module 1 of the Master of Health Data Science, University of Exter.

The assessment focuses on:
- code planning with Entity Relationship Diagram (ERD) and pseudocode
- creating MySQL databases
- writing MySQL queries
- using GitHub to track and control projects


#### Overview Repository Content
|File Name|Short Description|File Type|
|-|-|-|
|[Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md)|Description of code planning activities using ERD and pseudocode|.md|
|[Tables](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/tables_mysql.sql)|Code for creating MySQL tables|.sql|
|[Queries](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/queries_mysql.sql)|SQL queries developed for the assignment tasks|.sql|
||Export of the MySQL database containing all tables|.sql|

#### General Information
The goal of this assessment is to create a database using four different entities, Hospitals, Doctors, Patients and Prescriptions.
To do so, ERD, pseudocode and datadictionary have been used to plan the database.
To create the structure of the database, table in MySQL were created, this statement have been saved in the respective file (queriex_mysql.sql).
To explore the database specific queries have been made, that can be foun in queries.mysl slq file
The database have been also saved as a .sql file as hospital-database.



#### Detailed Information 

##### Database Planning 
ERD have been created using [Draw.io](https://app.diagrams.net/) and saved as .png file and then incorporated to the overall code_planning Markdown File.
Additional this files contains the structure of pseudocode and data dictionary.
Compared to the pseudocode structure that we learnt during the module, this text is a bit more descriptive, as, in my opinion, the assessment and tasks did not allowed for a more code-style pseudocode writing.

##### Codes for Tables
Doctors and patients were implemented as separate tables to simplify relationships and improve readability of the database structure.
The table creation code was saved as a .sql file rather than a .txt file, as SQL formatting improves readability and clearly distinguishes database commands.

Four tables were created from the four provided `.csv` files.

 

##### Codes for MySQL Queries
When writing the MySQL queries, I considered whether to use direct SELECT statements or CREATE VIEW statements. As the assignment did not require query reuse, I chose to use direct SELECT queries. This keeps the script concise and avoids creating unnecessary database objects.

In several queries, additional descriptive fields such as patient names, doctor names, and hospital names were included in the output to provide context and improve readability. While some of these fields are technically redundant because the records are already identified through filtering conditions or relationships, they make the query results more self-explanatory and easier to interpret. A more minimalistic approach would be to return only the essential fields required to answer each query.

in query 5 limit 1 to have the doctor with most prescription, possible ot increse this number, or delete LIMIT completly to have a comparison with other doctors

##### MySQL Database
Contains the 4️⃣ tables: hospitals, doctors, patients, and prescriptions.

**Important note:**
* When When importing data from the `.csv` files into the table, the file paths may need to be adapted to match the local system configuration.
* The original .csv files provided for the assessment have intentionally not been uploaded to GitHub. Although the dataset contains fictional information, healthcare datasets are generally considered sensitive and should be handled carefully. If access to the source files is required for assessment purposes, please contact me at sd1023@exeter.ac.uk.


#### Online Resources used for Troubleshooting
For troubleshooting and getting some inspirations :bulb: I used the following online resources
* [W3Schools](https://www.w3schools.com/)
* [MySQL](https://dev.mysql.com/doc/refman/9.7/en/preface.html)
* [Stack Overflow](https://stackoverflow.com/)
* [DataCamp](https://www.datacamp.com/)
