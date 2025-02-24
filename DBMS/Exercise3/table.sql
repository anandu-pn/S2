create database school;
use school;
CREATE TABLE COURSE (
    Course_name VARCHAR(50),
    Course_number VARCHAR(10) PRIMARY KEY,
    Credit_hours INT,
    Department VARCHAR(10)
);
CREATE TABLE SECTION (
    Section_identifier INT PRIMARY KEY,
    Course_number VARCHAR(10),
    Semester VARCHAR(10),
    Year year,
    Instructor varchar(20),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number)
);
CREATE TABLE PREREQUISITE (
    Course_number VARCHAR(10),
    Prerequisite_number VARCHAR(10),
    PRIMARY KEY (Course_number, Prerequisite_number),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number),
    FOREIGN KEY (Prerequisite_number) REFERENCES COURSE(Course_number)
);
/* this is  comment-- Step 1: Add an index to the Department column
CREATE INDEX idx_department ON COURSE(Department);  */
CREATE TABLE STUDENT (
	Student_number int  PRIMARY KEY,
    Name VARCHAR(50),
    Class int ,
    Major VARCHAR(10)
);
CREATE TABLE GRADEREPORT (
    Report_id int PRIMARY KEY,
    Student_number int,
    Section_identifier int,
    Grade CHAR(1),
    FOREIGN KEY (Student_number) REFERENCES STUDENT(Student_number),
    FOREIGN KEY (Section_identifier) REFERENCES SECTION(Section_identifier)
);

