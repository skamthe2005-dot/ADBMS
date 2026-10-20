-- NOT NULL CONSTRAINT

create database company;
use company;

create table employee(emp_id int not null,firstname varchar(20),lastname varchar(20),empage int);

insert into employee values(1,null,'kumar','25');
insert into employee values(1,'ravi','kumar','25');

-- unique key constraint
create table employee1(emp_id int not null,firstname varchar(20),lastname varchar(20), unique (emp_id),empage int);
insert into employee1 values(1,null,'kumar','25');
insert into employee1 values(2,'ravi','kumar','25');

-- check constraint while creating table 
create table employee3(empid int not null,firstname varchar(10),lastname varchar(10),empage int,check(empage>20));
insert into employee3 values (1,'saurav','kamthe',21);

alter table employee3 add column salary int,add check(salary>=50000);

alter table employee3 drop check employee3_chk_2;
insert into employee3 values (2,'om','shinde',22,40000);

show create table employee3;

create table employee6(empid int not null,firstname varchar(10),lastname varchar(10),empage int,check(empage>20),primary key(empid));

insert into employee6 values(1,'ravi','kumar','25');
insert into employee6 values(1,'ravi','kumar','25');

create table employee7(empid int primary key,firstname varchar(10),lastname varchar(10),empage int , salary int);
alter table employee7 add constraint chk_empage_salary
check(empage >20 and salary >= 5000);
insert into employee7 values (1,'saurav','kamthe',21,100000);

insert into employee7(empid,firstname,lastname)
values(2,'ravi','kumar');

select * from employee7;
-- create table employee8empid (empid int primary key,firstname varchar(10),lastname varchar(10),empage int , salary int);
-- alter table employee7 add constraint chk_empage_salary
-- check(empage >20 and salary >= 5000);

show create table employee7;




select * from employee6;