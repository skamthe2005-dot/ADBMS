create database CompanyDB;
use CompanyDB;
create table employee(empid int primary key,empname varchar(30),salary int ,join_data date);

create table department(empid int primary key,deptname varchar(30));

alter table employee add column email varchar(100);

alter table department add column dept_location varchar(100);

alter table employee add column phone int not null;

alter table employee modify empname varchar(100);

alter table department drop primary key;

alter table department add primary key(empid);

alter table employee add foreign key (empid)
references department(deptid);

alter table employee
rename column empname to employeename;

ALTER TABLE employee
ADD COLUMN age INT CHECK (age > 20);

drop table employeedetails;
drop table department;

drop database CompanyDB;

alter table employee drop column phone;

rename table employee to employeedetails;

alter table employee drop constraint check_age (age>20);

select * from department;
select * from employee;
desc department;
desc employee;
show databases;