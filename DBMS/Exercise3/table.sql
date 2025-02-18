create database school;
use school;
CREATE TABLE COURSE (
    Course_name VARCHAR(50),
    Course_number VARCHAR(10) PRIMARY KEY,
    Credit_hours INT,
    Department VARCHAR(10)
);
CREATE TABLE SECTION (
    Section_identifier VARCHAR(10) PRIMARY KEY,
    Course_number VARCHAR(10),
    Section_number INT,
    Semester VARCHAR(10),
    Year INT,
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number)
);
CREATE TABLE PREREQUISITE (
    Course_number VARCHAR(10),
    Prerequisite_number VARCHAR(10),
    PRIMARY KEY (Course_number, Prerequisite_number),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number),
    FOREIGN KEY (Prerequisite_number) REFERENCES COURSE(Course_number)
);
-- Step 1: Add an index to the Department column
CREATE INDEX idx_department ON COURSE(Department);
CREATE TABLE STUDENT (
    Student_id VARCHAR(10) PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Date_of_birth DATE,
    Major VARCHAR(10),
    FOREIGN KEY (Major) REFERENCES COURSE(Department)
);
CREATE TABLE GRADEREPORT (
    Report_id VARCHAR(10) PRIMARY KEY,
    Student_id VARCHAR(10),
    Section_identifier VARCHAR(10),
    Grade CHAR(1),
    FOREIGN KEY (Student_id) REFERENCES STUDENT(Student_id),
    FOREIGN KEY (Section_identifier) REFERENCES SECTION(Section_identifier)
);

