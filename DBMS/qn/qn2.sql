use school;
select student_number number from student where name='smith';
select course.course_name,gradereport.grade
from student
JOIN gradereport ON student.student_number = gradereport.student_number
join section on gradereport.section_identifier=section.section_identifier
join course on section.course_number=course.course_number
where student.name='Smith';
select student.name,gradereport.Grade
from course 
join course on section.course_number=course.course_number
join gradereport on  gradereport.Section_identifier=Section_identifier
join student on gradereport.student_number=student.Student_number
where course.Course_name='Database' and section.year=08 AND section.semester = 'Fall';
