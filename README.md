# A HOSPITAL DATABASE :hospital:

This repository contains the deliverables completed as part of Assessment 1 of Module 1 of the Master of Health Data Science, University of Exter.

The assessment focuses on:
- code planning with a Entity Relationship Diagram (ERD) and pseudocode
- creating a MySQL databases
- writing MySQL queries
- using GitHub to track and control projects


### Overview Repository Content
|File Name|Short Description|File Type|
|-|-|-|
|:brain:[Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md)|Description of code planning activities using ERD and pseudocode|.md|
|:clipboard:[Database Setup](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_setup.sql)|Code for the database setup|.sql|
|:question:[MySQL Queries](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/queries_mysql.sql)|SQL queries developed for the assignment tasks|.sql|
|:floppy_disk:[Hospital Database](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/hospital_database.sql)|Export of the MySQL database containing all tables|.sql|

### General Information
The goal of this assessment is to create a database consisting of four different entities: Hospitals, Doctors, Patients and Prescriptions.
1. To support the database design, an Entity Relationship Diagram (ERD), pseudocode, and a data dictionary were developed during the planning phase (see [Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md)).
2. The database structure was implemented in MySQL using `CREATE TABLE` statements, which are documented in the [Database Setup](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_setup.sql) file.
3. To explore the database, a series of SQL queries were written and exectued. These queries can be found in the [MySQL Queries](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/queries_mysql.sql).
4. The complete database was exported and can be accessed through the [Hospital Database](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/hospital_database.sql) file.



### Detailed Information 

##### 1. Database Planning 
* The ERD have been created using [Draw.io](https://app.diagrams.net/) and saved as .png file, which was subsequently incorporated into the [Database Planning](https://github.com/StefaniDossi/computing-skills-m1-a1/blob/main/database_planning.md) file.
* In addition, this file contains the pseudocode and data dictionary used to support the database design.
* Compared with the pseudocode examples presented during the module, the pseudocode that I used for the assessment is more descriptive. I chose this approach because I felt that a more code-oriented pseudocode format would not fully reflect the database development process. 

##### 2. Database Setup
* The code creates the hospital database, selects the database, creates the four tables, and imports the CSV data.
* When accessing MySQL, you can use `SOURCE database_setup.sql;` to execute the script directly.
* Four tables were created based on the four provided .csv files.
* Doctors and patients were implemented as separate tables to simplify relationships and improve readability of the database structure.
* Both the database setup code and the query code were saved as .sql files to enable direct execution in MySQL using the SOURCE command.

##### 3. MySQL Queries
* When accessing MySQL, you can use `SOURCE queries_mysql.sql;` to execute the script directly.
* When writing the MySQL queries, I considered whether to use direct `SELECT` statements or `CREATE VIEW` statements. As the assignment did not require query reuse, I chose to use direct `SELECT` queries. This keeps the script concise and avoids creating unnecessary database objects.
* In several queries, fields such as patient names, doctor names, and hospital names were included in the output to provide context and improve readability. While technically redundant, these fields make the query results more self-explanatory and easier to interpret. 
* In query :five:,  `LIMIT =  1` was used to return only the doctor with the highest number of prescriptions. Depending on desired level of details, this limit could be increased or removed entirely to display the prescribing activity of all doctors. 

##### 4. Hospital Database
The database consist of :four: tables: hospitals, doctors, patients, and prescriptions.

---

> [!IMPORTANT]
>* When importing data from the .csv files, the file paths in database_setup.sql may need to be adapted to match the local system configuration.
>* The original .csv files provided for the assessment have not been uploaded to GitHub. Although the dataset contains fictional information, healthcare-related datasets should be handled with care. Please contact me at sd1023@exeter.ac.uk if access to the original files is required.


>[!TIP]
>* Small formatting mistakes in MySQL, such as unintended spaces in commands, can cause unexpected errors. Check spacing when troubleshooting.
>* Avoid overengineering queries. If a simple `SELECT` statement is sufficient to answer the question, prefer the simpler solution.
>* When executing commands, verify first that commands are being executed in the correct environment. SQL statements belong in MySQL, whereas commands such as `mysqldump` must be run from the Linux terminal.
>* Keep your remote environment clean. When running tests, delete unused objects to avoid confusion and reduce the risk of errors.
>* Check AI-generated GitHub commit messages before committing. They may not always be specific enough to clearly describe the changes made.
>* GitHub Markdown supports some HTML formatting. Experiment with it to make your files look fancy, but do not get too attached to coloured headings, GitHub will not allow them (at least as far as I could tell).
---

### Online Resources used for Troubleshooting
For inspiration :bulb: and troubleshooting, I used the following online resources:
* [W3Schools](https://www.w3schools.com/)
* [MySQL](https://dev.mysql.com/doc/refman/9.7/en/preface.html)
* [Stack Overflow](https://stackoverflow.com/)
* [DataCamp](https://www.datacamp.com/)
* [MD Formatting](https://markdownformatting.com/color)
