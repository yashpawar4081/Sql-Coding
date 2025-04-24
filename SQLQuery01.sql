use B24DB

drop table student


CREATE TABLE Student(
    StudentID int ,
    Name varchar(100),
    Age int,
    Gender varchar(10),
    Email varchar(100)
);


--Alter table Student drop column TrainerExperience;
select * from Student
--delete from Student where id =3;
insert into Student (StudentID ,Name , Age , Gender , Email ) values 
					(1,'Rohini',22,'female','Rohi12@gmail.com'),
					(2,'Sonali',21,'female','Sonal145@gmail.com'),
					(3,'Vaishal',23,'male','Vishal1@gmail.com');

alter table Student add City varchar(20);

