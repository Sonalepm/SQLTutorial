--From the students table, write a SQL query to interchange the adjacent student names.

--Note: If there are no adjacent student then the student name should stay the same.

--Table Structure:

drop table students;
create table students
(
id int primary key,
student_name varchar(50) not null
);
insert into students values
(1, 'James'),
(2, 'Michael'),
(3, 'George'),
(4, 'Stewart'),
(5, 'Robin');

select * from students;

select *, 
CASE 
	when id%2 =1 THEN lead(student_name,1,student_name) over(order by id)
	when id%2 =0 THEN lag(student_name) over(order by id)
END as new_studentname
from students;
		


