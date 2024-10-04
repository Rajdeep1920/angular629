show databases;
create database Farmer12;

create table Farm1(F_Id int primary key, F_Name varchar(255) NOt Null, F_Address varchar(255));
create table Farm2(F_SrNo int primary key, F_Id int, F_code int Not Null, F_Total int);

desc Farm1;
desc Farm2;

insert into Farm1 values (1,'mahesh','kapuskhed');
insert into Farm1 values (2,'shree','nilpan'); 
insert into Farm1 values (3,'amit','shindewadi');

insert into Farm2 values (101,1,1072,5);
insert into Farm2 values (102,1,1073,7);
insert into Farm2 values (103,1,1074,10);
insert into Farm2 values (104,2,1085,3);
insert into Farm2 values (105,3,852,4);
insert into Farm2 values (106,3,853,9);

select * from Farm1;
select * from Farm2;
alter table Farm2 add constraint foreign key (F_Id) references Farm1 (F_Id);

