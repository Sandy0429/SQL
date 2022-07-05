/*Student and their Department Based on City

Write a query to display list of students name and their department name who are all from 'Coimbatore'. Sort the result based on students name  */

SELECT Student.student_name , Department.department_name 
FROM Student INNER JOIN Department 
ON (Student.department_id = Department.department_id )
WHERE Student.city ='Coimbatore' 
ORDER BY Student.student_name ASC;