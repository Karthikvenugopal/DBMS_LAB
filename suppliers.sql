show databases;
create database sup;
use sup;
create table supplier(sid int primary key, sname varchar(30), city varchar(20));
create table parts(pid int primary key, pname varchar(20), color varchar(20));
show tables;
drop table catalog;
create table catalog(sid int, pid int, cost int, foreign key(sid) references supplier(sid) on delete cascade, foreign key(pid) references parts(pid) on delete cascade, primary key(sid,pid));
insert into supplier values(10001, "Acme Widget", "Bangalore");
insert into supplier values(10002, "Johns", "Kolkata");
insert into supplier values(10003, "Vimal", "Mumbai");
insert into supplier values(10004, "Reliance", "Delhi");
insert into parts values(20001, "Book", "Red");
insert into parts values(20002, "Pen", "Red");
insert into parts values(20003, "Pencil", "Green");
insert into parts values(20004, "Mobile", "Green");
insert into parts values(20005, "Charger", "Black");
insert into catalog values(10001, 20001, 10);
insert into catalog values(10001, 20002, 10);
insert into catalog values(10001, 20003, 30);
insert into catalog values(10001, 20004, 10);
insert into catalog values(10001, 20005, 10);
insert into catalog values(10002, 20001, 10);
insert into catalog values(10002, 20002, 20);
insert into catalog values(10003, 20003, 30);
insert into catalog values(10004, 20003, 40);
select * from supplier;
update supplier set sname = 'Johns' where sid = 10002; 
select * from parts;
select * from catalog;
update catalog set cost = 30 where sid = 10003 and pid = 20003;
select supplier.sid from supplier, catalog, parts where parts.color in ("Green","Red");
select supplier.sid from supplier, catalog, parts where parts.color = "Red" or city = "Bangalore";
select c1.sid,c2.sid from catalog c1, catalog c2 where c1.cost>c2.cost;












