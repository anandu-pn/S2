INSERT INTO COURSE (Course_name, Course_number, Credit_hours, Department)
VALUES ('Intro to Computer Science', 'CS1310', 4, 'CS'),
       ('Data Structures', 'CS3320', 4, 'CS'),
       ('Discrete Mathematics', 'MATH2410', 3, 'MATH'),
       ('Database', 'CS3380', 3, 'CS');
INSERT INTO SECTION (Section_identifier, Course_number, Semester, Year, Instructor)
VALUES (85, 'MATH2410', 'Fall', 2007, 'King'),
       (92, 'CS1310', 'Fall', 2007, 'Anderson'),
       (102, 'CS3320', 'Spring', 2008, 'Knuth'),
       (112, 'MATH2410', 'Fall', 2008, 'Chang'),
       (119, 'CS1310', 'Fall', 2008, 'Anderson'),
       (135, 'CS3380', 'Fall', 2008, 'Stone');
INSERT INTO STUDENT (Student_number, Name, Class, Major)
VALUES (17, 'Smith', 1, 'CS'),
       (8, 'Brown', 2, 'CS');
INSERT INTO PREREQUISITE (Course_number, Prerequisite_number)
VALUES ('CS3380', 'CS3320'),
       ('CS3380', 'MATH2410'),
       ('CS3320', 'CS1310');
INSERT INTO GRADEREPORT (Report_id, Student_number, Section_identifier, Grade)
VALUES (1, 17, 112, 'B'),
       (2, 17, 119, 'C'),
       (3, 8, 85, 'A'),
       (4, 8, 92, 'A'),
       (5, 8, 102, 'B'),
       (6, 8, 135, 'A');
