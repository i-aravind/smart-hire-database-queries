CREATE DATABASE IF NOT EXISTS smarthire_db;
USE smarthire_db;
CREATE TABLE IF NOT EXISTS candidate(candidate_db_id INT AUTO_INCREMENT PRIMARY KEY,email VARCHAR(100) UNIQUE NOT NULL, password VARCHAR(50) NOT NULL, candidate_name VARCHAR(100) NOT NULL, dob DATE NOT NULL, role VARCHAR(50) NOT NULL, years_of_experience DECIMAL(2,1) NOT NULL, candidate_qualification VARCHAR(10) NOT NULL);

CREATE TABLE IF NOT EXISTS ASSESSMENT (assessment_db_id INT AUTO_INCREMENT PRIMARY KEY, ASSESSMENT_NAME VARCHAR(50) NOT NULL);
CREATE TABLE IF NOT EXISTS CANDIDATE_ASSESSMENT_REF(CANDIDATE_ASSESSMENT_REF_DB_ID INT AUTO_INCREMENT PRIMARY KEY, candidate_db_id INT NOT NULL, assessment_db_id INT NOT NULL, ASSIGNED_DATE DATE NOT NULL, EXPIRY_DATE DATE, STATUS VARCHAR(10) NOT NULL, RECRUITER_DB_ID INT NOT NULL);
CREATE TABLE IF NOT EXISTS RECRUITER(RECRUITER_DB_ID INT AUTO_INCREMENT PRIMARY KEY, RECRUITER_NAME VARCHAR(100) NOT NULL, RECRUITER_EMAIL VARCHAR(100) UNIQUE NOT NULL, PASSWORD VARCHAR(100) NOT NULL);
ALTER TABLE CANDIDATE_ASSESSMENT_REF ADD FOREIGN KEY (candidate_db_id) REFERENCES CANDIDATE(candidate_db_id);
ALTER TABLE CANDIDATE_ASSESSMENT_REF ADD FOREIGN KEY (assessment_db_id) REFERENCES ASSESSMENT(assessment_db_id);
ALTER TABLE CANDIDATE_ASSESSMENT_REF ADD FOREIGN KEY (recruiter_db_id) REFERENCES RECRUITER(recruiter_db_id);

CREATE TABLE IF NOT EXISTS CANDIDATE_ASSESSMENT_REF(CANDIDATE_ASSESSMENT_REF_DB_ID INT AUTO_INCREMENT PRIMARY KEY, candidate_db_id INT NOT NULL, assessment_db_id INT NOT NULL, ASSIGNED_DATE DATE NOT NULL, EXPIRY_DATE DATE, STATUS VARCHAR(10) NOT NULL,SCORE INT , RECRUITER_DB_ID INT NOT NULL);

INSERT INTO ASSESSMENT(ASSESSMENT_NAME) VALUES('Big Data Developer');
INSERT INTO ASSESSMENT(ASSESSMENT_NAME) VALUES('Java Developer');
INSERT INTO ASSESSMENT(ASSESSMENT_NAME) VALUES('Agile Developer');
INSERT INTO ASSESSMENT(ASSESSMENT_NAME) VALUES('Linux Admin');

INSERT INTO RECRUITER(RECRUITER_NAME,RECRUITER_EMAIL,PASSWORD) VALUES('Mathew','mathew.s@bnpparibas.com','QWERTYUI');

CREATE TABLE QUESTIONAIRE (QUESTIONAIRE_DB_ID INT AUTO_INCREMENT PRIMARY KEY, ASSESSMENT_DB_ID INT ,QUESTION_ID INT NOT NULL, QUESTION_DESCRIPTION VARCHAR(500) NOT NULL,OPTION1 VARCHAR(500) NOT NULL,OPTION2 VARCHAR(500) NOT NULL,OPTION3 VARCHAR(500) NOT NULL,OPTION4 VARCHAR(500) NOT NULL,ANSWER VARCHAR(500) NOT NULL);
ALTER TABLE QUESTIONAIRE ADD FOREIGN KEY (assessment_db_id) REFERENCES ASSESSMENT(assessment_db_id);

INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,1,'Which is called the unary operator in Java?','--','++','?:','*','?:');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,2,'Which of the following is not a Java features?','Dynamic','Architecture Neutral','Use of pointers','Object-oriented','Use of pointers');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,3,'What is the abbrevation of JVM?','Java Virtual Monitor','Java Virtual Machine','Java Visual Machine','Java Visual Monitor','Java Virtual Machine');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,4,'The \u0021 article referred to as a','Unicode escape sequence','Octal escape','Hexadecimal','Line feed','Unicode escape sequence');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,5,'_____ is used to find and fix bugs in the Java programs.','JVM','JRE','JDK','JDB','JDB');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,6,'Evaluate the following Java expression, if x=3, y=5, and z=10: then ++z + y - y + z + x++ ?','24','23','20','25','25');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,7,'Which of the following creates a List of 3 visible items and multiple selections abled?','new List(false, 3)','new List(3, true)','new List(true, 3)','new List(3, false)','new List(3, true)');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,8,'Which of the following for loop declaration is not valid?','for ( int i = 99; i >= 0; i / 9 )','for ( int i = 7; i <= 77; i += 7 )','for ( int i = 20; i >= 2; - -i )','for ( int i = 2; i <= 20; i = 2* i )','for ( int i = 99; i >= 0; i / 9 )');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,9,'Which of the following is true about the anonymous inner class?','It has only methods','Objects cannot be created','It has a fixed class name','It has no class name','It has no class name');
INSERT INTO QUESTIONAIRE(ASSESSMENT_DB_ID,QUESTION_ID,QUESTION_DESCRIPTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER) VALUES(1,10,'What do you mean by nameless objects?','An object created by using the new keyword.','An object of a superclass created in the subclass.','An object without having any name but having a reference.','An object that has no reference.','An object that has no reference.');

