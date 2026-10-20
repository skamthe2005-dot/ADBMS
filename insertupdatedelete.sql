create database college;
use college;

create table employee(emp_id int,first_name varchar(20));
alter table employee add(lastname varchar(20),emp_age int,empzone varchar(20));

-- single row insertion
insert into employee values(4,'shivam','saw',22,NULL);

-- multiple row insertion
insert into employee(emp_id,first_name,lastname,emp_age,empzone)
values(2,'mahesh','kakade',23,'west'),
(3,'vinay','shet',22,'south');

update employee set empzone='north' where emp_id=4;

desc employee;

delete from employee where emp_id=2;

update employee set first_name='vedant'
where emp_id=3;

-- delete all thwe rows from table
truncate employee;

select * from employee;
