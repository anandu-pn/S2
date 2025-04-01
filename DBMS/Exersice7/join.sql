#before running this query use ex3
use school;
#qn1
SELECT 
    S.Name AS Student_Name,
    C.Course_name AS Course_Name,
    G.Grade AS Grade
FROM 
    STUDENT S
JOIN 
    GRADEREPORT G ON S.Student_number = G.Student_number
JOIN 
    SECTION Sec ON G.Section_identifier = Sec.Section_identifier
JOIN 
    COURSE C ON Sec.Course_number = C.Course_number
WHERE 
    S.Name = 'Smith';
