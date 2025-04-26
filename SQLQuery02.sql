use B24DB

create table Student(
	Id int,
	name varchar (50),
	gender varchar (10),
	city varchar (20)
)
insert into student values (1, 'ajay', 'male', 'pune'),
							(2, 'datta', 'male', 'latur'),
							(3, 'pranita', 'female', 'solapur'),
							(4, 'pratik', 'male', 'barshi');


alter table student add age int 

update  student set age=30 where id=1;
update  student set age=24 where id=2;
update  student set age=20 where id=3;
update  student set age=21 where id=4;

select *  from Student



