-- Insert data into STUDENT table
INSERT INTO STUDENT (Student_id, First_name, Last_name, Major)
VALUES 
    ('17', 'Smith', 'CS', '1'),
    ('8', 'Brown', 'CS', '2');

-- Insert data into COURSE table
INSERT INTO COURSE (Course_name, Course_number, Credit_hours, Department)
VALUES 
    ('Intro to Computer Science', 'CS1310', 4, 'CS'),
    ('Data Structures', 'CS3320', 4, 'CS'),
    ('Discrete Mathematics', 'MATH2410', 3, 'MATH'),
    ('Database', 'CS3380', 3, 'CS');

-- Insert data into SECTION table
INSERT INTO SECTION (Section_identifier, Course_number, Semester, Year, Instructor)
VALUES 
    ('85', 'MATH2410', 'Fall', 07, 'King'),
    ('92', 'CS1310', 'Fall', 07, 'Anderson'),
    ('102', 'CS3320', 'Spring', 08, 'Knuth'),
    ('112', 'MATH2410', 'Fall', 08, 'Chang'),
    ('119', 'CS1310', 'Fall', 08, 'Anderson'),
    ('135', 'CS3380', 'Fall', 08, 'Stone');

-- Insert data into GRADE_REPORT table
INSERT INTO GRADE_REPORT (Student_id, Section_identifier, Grade)
VALUES 
    ('17', '112', 'B'),
    ('17', '119', 'C'),
    ('8', '85', 'A'),
    ('8', '92', 'A'),
    ('8', '102', 'B'),
    ('8', '135', 'A');

-- Insert data into PREREQUISITE table
INSERT INTO PREREQUISITE (Course_number, Prerequisite_number)
VALUES 
    ('CS3380', 'CS3320'),
    ('CS3380', 'MATH2410'),
    ('CS3320', 'CS1310');
