use B24DB  --first ise execute kre 
go

drop table Student --ise table delete hota hai
go

create table Student
(
RollNumber int,
Name varchar(50),
Email varchar(50)
)
go				

insert into Student values (1,'samarth','samarth24@gmail.com')

select * from student  --execute
delete from Student where RollNumber = 1


select RollNumber,Name,Email from Student --execute
go
insert into Student (RollNumber,Email) values (3, 'ad@FG.com')

--new

drop table Student
go


create table Student
(
RollNumber int,
Name varchar(50) not null, -- not null se jha pr name na ho to null ata hai
Email varchar(50)
)
go

insert into Student values (1,'samarth','samarth24@gmail.com')

select * from student
delete from Student where RollNumber = 1


select RollNumber,Name,Email from Student
go
insert into Student (RollNumber,Email) values (3, 'ad@FG.com')--error


insert into Student (RollNumber,Name) values (3, 'rohit') --humne jisko not null apply kiya hai wo hi syntax likhe

select RollNumber,Name,Email from Student

insert into Student values (2,'pari','pari235@gmail.com')
insert into Student values (4,'dhiraj','dhru89@gmail.com')
insert into Student values (5,'yashoda','yashoda964@gmail.com')



drop table Student
go

--primary key

create table Student
(
RollNumber int primary key, --number double na aye is liye primary key apply kre
Name varchar(50) not null,
Email varchar(50)
)
go

insert into Student values (1,'samarth','samarth24@gmail.com')
insert into Student values (2,'pari','pari235@gmail.com')
insert into Student (RollNumber,Name) values (3, 'rohit')
insert into Student values (2,'dhiraj','dhru89@gmail.com')
insert into Student values (5,'yashoda','yashoda964@gmail.com')

select * from Student


drop table Student
go

--unique key

create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Email varchar(50) unique --isme unique ek hi bar likha ja skta hai double likhoge to error msg ata hai
)
go

insert into Student values (1,'samarth','samarth24@gmail.com')
insert into Student values (2,'pari','pari235@gmail.com')
insert into Student (RollNumber,Name) values (3, 'rohit')
insert into Student values (4,'dhiraj',null)
insert into Student values (5,'yashoda','yashoda964@gmail.com')
insert into Student values (6,'datta',null)  -- unique key double execute nahi hoti hai

select * from Student


drop table Student
go

--default constraints

create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Email varchar(50) unique,      
Course varchar(50) default 'Dot Net'
)
go

insert into Student values (1,'samarth','samarth24@gmail.com', 'pythan')
insert into Student values (2,'pari','pari235@gmail.com','react')
insert into Student (RollNumber,Name,Email) values (3, 'rohit','rohit35@gmail.com')
insert into Student values (4,'dhiraj','dhiru964@gmail.com',null)

select * from Student

drop table Student
go

-- check constraints

create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Email varchar(50) unique,
Course varchar(50) default 'Dot Net' --isme hmne jo default diya hai wohi waha pr auto ata hai
)
go

insert into Student values (1,'samarth','samarth24@gmail.com', 'pythan')
insert into Student values (2,'pari','pari235@gmail.com','react')
insert into Student (RollNumber,Name,Email) values (3, 'rohit','rohit35@gmail.com')
insert into Student values (4,'dhiraj','dhiru964@gmail.com',null)

select * from Student

drop table Student
go

-- check constraints

create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Email varchar(50) unique,
Course varchar(50) default 'Dot Net',
Gender varchar (10) check (Gender = 'male' or Gender = 'female') --  error kyo ki hmne waha pr uski value diye hai dusre value execute nhi hoti
)
go

insert into Student values 
(1,'samarth','samarth24@gmail.com', 'pythan','male')

insert into Student values 
(2,'parth','parth235@gmail.com','react','bond') 

insert into Student (RollNumber,Name,Email,Gender) values
(3, 'rohini','rohini35@gmail.com','female')

insert into Student values (4,'dhiraj','dhiru964@gmail.com',null) -- aur yha pr hme uske kon se value liye hai wo btana pdta hai

select * from Student


