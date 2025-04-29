--table creating demo

create table Employee
(
EmployeeId int, 
Name varchar(20),
City varchar(20),
Gender varchar(6)
)

--to execute the code
select EmployeeId, Name, City, Gender from Employee

select * from Employee

--drop table
Drop table Employee

--insert records
insert into Employee (EmployeeId, Name, City, Gender)
values  ( 1, 'ashok', 'solapur', 'male' ),
		( 2, 'manisha', 'mambai', 'female' ),
		( 3, 'suhas', 'barshi', 'male' ),
		( 4, 'sonali', 'pune', 'female' );

--one record delete
delete from Employee where EmployeeId = 4


select EmployeeId, Name from Employee

--alter table record
alter table Employee
add email varchar(100)


alter table Employee
drop column Gender


alter table Employee
alter column Name varchar(35)

--deleting all records at once time in table
--1. delete is a DML command data manupulation language
delete from Employee

--or

-- 1.truncate is a DDLcommand data defination language
truncate table Employee