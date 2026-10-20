create database organization;
use organization;

create table employee(empid int not null primary key, first_name varchar(15),last_name varchar(15),gender char,role varchar(15),
dept varchar(15),manager_id varchar(10));

insert into  employee values(1,'john','allen','M','team leader','retail','M11');
insert into  employee values(2,'kim','hen','F','team leader','Finance','M12');
insert into  employee values(3,'mahesh','kakade','M','manager','retail','M13');
insert into  employee values(4,'om','shinde','M','manager','finance','M14');
insert into  employee values(5,'sunil','dhebe','M','team leader','retail','M15');

-- distinct keyword

select  distinct dept from employee order by dept;
select distinct role from employee order by role;

-- and operator is logoical operator that combines two or  mpore boolean expression and return 1,0 or null and operatoe is used for filtering data with where clause

select * from employee where role="team leader" and empid=1;

select * from employee where role="manager" and empid=3;

select * from employee where role in('team leader','manager');

select * from employee where role not in ('team leader','president');

alter table employee add column exprience int;

update employee set exprience=8 where empid=1;
update employee set exprience=5 where empid=2;
update employee set exprience=10 where empid=3;
update employee set exprience=6 where empid=4;
update employee set exprience=15 where empid=5;

select * from employee where exprience between 6 and 10;

select * from employee where exprience=5 or exprience=10; 

select * from employee where last_name like 'K%';

-- limit clause is used to limit no of rows

select * from employee order by exprience limit 3;

insert into employee values (7,'asha','joshi','F','president','HR','',null);

select * from employee where manager_id is null;

desc employee;
select * from employee;

