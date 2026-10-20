use college;

/*indexes*/

select * from employee;
create index demoindex on employee(first_name,lastname);

create index demoindex2 on employee(first_name,lastname);

drop index demoindex2 on employee;

show indexes from employee;

create table person(
personid int not null auto_increment,
lastname varchar(20) not null,
firstname varchar(20) ,
age int,
primary key(personid)
);

insert into person (lastname,firstname,age)
values('kamthe','saurav',22);

select * from person;


