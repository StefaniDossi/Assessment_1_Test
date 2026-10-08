# A HOSPITAL DATABASE :hospital:

This repository contains the deliverables completed as part of Assessment 1 of Module 1 of the Master of Health Data Science, University of Exter.

The assessment focuses on:
- code planning with Entity Relationship Diagram (ERD) and pseudocode
- creating MySQL databases
- writing MySQL queries
- using GitHub to track and control projects


### Overview Repository Content
|File Name|Short Description|File Type|
|-|-|-|
|:brain:[Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md)|Description of code planning activities using ERD and pseudocode|.md|
|:clipboard:[Tables](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/tables_mysql.sql)|Code for creating MySQL tables|.sql|
|:question:[Queries](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/queries_mysql.sql)|SQL queries developed for the assignment tasks|.sql|
|:floppy_disk:[Hospital Database](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/hospital_database.sql)|Export of the MySQL database containing all tables|.sql|

### General Information
The goal of this assessment is to create a database consisting of four different entities: Hospitals, Doctors, Patients and Prescriptions.
1. To support the database design, an Entity Relationship Diagram (ERD), pseudocode, and a data dictionary were developed during the planning phase (see [Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md)).
2. The database structure was implemented in MySQL using `CREATE TABLE` statements, which are documented in the [Tables](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/tables_mysql.sql) file.
3. To explore the database, a series of SQL queries were written and exectued. These queries can be found in the [Queries](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/queries_mysql.sql).
4. The complete database was exported and can be accessed through the [Hospital Database](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/hospital_database.sql) file.



### Detailed Information 

##### Database Planning 
* The ERD have been created using [Draw.io](https://app.diagrams.net/) and saved as .png file, which was subsequently incorporated into the  and then incorporated into the [Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md).
* In addition, the file contains the pseudocode and data dictionary used to support the database design.
* Compared with the pseudocode examples presented during the module, the pseudocode that I used for the assessment is more descriptive. I chose this approach because I felt that a more code-oriented pseudocode format would not be appropriate for this task. 

##### Codes for Tables
* Four tables were created based on the four provided .csv files.
* Doctors and patients were implemented as separate tables to simplify relationships and improve readability of the database structure.
* The table creation code was saved as a .sql file rather than a .txt file, as .sql format improves readability and clearly distinguishes database commands.


##### Codes for MySQL Queries
* When writing the MySQL queries, I considered whether to use direct `SELECT` statements or `CREATE VIEW` statements. As the assignment did not require query reuse, I chose to use direct `SELECT` queries. This keeps the script concise and avoids creating unnecessary database objects.
* In several queries, additional descriptive fields such as patient names, doctor names, and hospital names were included in the output to provide context and improve readability. While some of these fields are technically redundant because the records are already identified through filtering conditions or relationships, they make the query results more self-explanatory and easier to interpret. A more minimalistic approach would be to return only the essential fields required to answer each query.
* In query :five:,  `LIMIT =  1` was used to return only the doctor with the highest number of prescriptions. Depending on desired level of details, this limit could be increased or removed entirely to display the prescribing activity of all doctors. 
* The queries creation code was saved as a .sql file rather than a .txt file, as .sql format improves readability and clearly distinguishes database commands.

##### MySQL Database
The database consist of :four: tables: hospitals, doctors, patients, and prescriptions.

---

> [!IMPORTANT]
>* When importing data from the `.csv` files into the table, the file paths may need to be adapted to match the local system configuration.
>* The original .csv files provided for the assessment have intentionally not been uploaded to GitHub. Although the dataset contains fictional information, healthcare datasets are generally considered sensitive and should be handled carefully. If access to the source files is required for assessment purposes, please contact me at sd1023@exeter.ac.uk.


>[!TIP]
>* Small formatting mistakes, such as unintended spaces in commands, can cause SQL scripts or database exports to fail. Check syntax and spacing when troubleshooting.
>* Avoid overengineering queries. If a simple `SELECT` statement is sufficient to answer the question, prefer the simpler solution.
>* When executing commands, verify first that commands are being executed in the correct environment. SQL statements belong in MySQL, whereas commands such as `mysqldump` must be run from the Linux terminal.
>* Keep your remote environment clean. When running tests, delete unused objects to avoid confusion and reduce the risk of errors.
>* Check AI-generated GitHub commit messages before committing. They may not always be specific enough to clearly describe the changes made.
---

### Online Resources used for Troubleshooting
For inspiration :bulb: and troubleshooting, I used the following online resources:
* [W3Schools](https://www.w3schools.com/)
* [MySQL](https://dev.mysql.com/doc/refman/9.7/en/preface.html)
* [Stack Overflow](https://stackoverflow.com/)
* [DataCamp](https://www.datacamp.com/)
* [MD Formatting](https://markdownformatting.com/color)
