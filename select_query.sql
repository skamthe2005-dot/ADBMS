create database user;
use user;

create table customer(c_id int , c_name varchar(15),city varchar(10),product varchar(15),price int);

insert into customer values(1,"om","pune","charger","2000");
insert into customer values(2,"vinay","pune","phone","40000");
insert into customer values(3,"mahesh","pune","charger","2000");
insert into customer values(4,"vedant","mumbai","charger","5000");

alter table customer add primary key(c_id);

select * from customer;

select c_id,c_name,price from customer;
select * from customer where c_id=2 and c_id=3;

create table clonetable as select * from customer;
select * from clonetable;  
drop table clonetable;

select c_name,price from customer where price>20000;
select * from customer where city="pune";

-- sorting data using order by single column

select * from customer order by price desc;

-- sorting data using order by multiple column

select * from customer order by price,city;

select * from customer order by city desc , price asc;

-- single row function
-- case conversion function

select upper(c_name),lower(product) from customer 
where c_id<=3;

alter table customer add column (lastname varchar(30));

update customer set lastname="shinde" where c_id =1;
update customer set lastname="shete" where c_id =2;
update customer set lastname="kakade" where c_id =3;
update customer set lastname="kamble" where c_id =4;

select * from customer;

select concat(c_name,' ',lastname) as fullname from customer;

-- use of substr and instr funnctions
select * from customer ;
select substr(c_name,1,3) from customer;
select substr(price,1,4) from customer;

select instr(c_name,'a') as position from customer;

insert into customer values(5,"anna","akluj","fridge",27000,"");

select substr(c_name,1,3),
instr(c_name,'a') from customer;

select substr(c_name,1,3),
instr(c_name,'a') as instring from customer;

select substr(c_name,1,3),
instr(c_name,'a') from customer where c_id =5;




