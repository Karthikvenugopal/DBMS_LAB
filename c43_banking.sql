create database Banking;
use Banking;
create table branch(branchname varchar(20) primary key, branchcity varchar(15), assets float);
create table BankAccount(accno int primary key,branchname varchar(20), balance int ,foreign key(branchname) references branch(branchname));
create table BankCustomer(customername varchar(20) primary key, customerstreet varchar(30), customercity varchar(30));
create table Depositer(customername varchar(20), accno int, foreign key(customername) references BankCustomer(customername));
create table Loan(loan_number int primary key, branchname varchar(20), Amount float, foreign key(branchname) references Branch(branchname));
show tables;
insert into branch values("SBI_Chamrajpet", "Bangalore", "50000");
insert into branch values("SBI_ResidencyRoad", "Bangalore", "10000");
insert into branch values("SBI_ShivajiRoad", "Bombay", "20000");
insert into branch values("SBI_ParliamentRoad", "Delhi", "10000");
insert into branch values("SBI_Jantarmantar", "Delhi", "20000");
insert into BankAccount values(1, "SBI_Chamrajpet", 2000);
insert into BankAccount values(2, "SBI_ResidencyRoad", 5000);
insert into BankAccount values(3, "SBI_ShivajiRoad", 6000);
insert into BankAccount values(4, "SBI_ParliamentRoad", 9000);
insert into BankAccount values(5, "SBI_Jantarmantar", 8000);
insert into BankAccount values(6, "SBI_ShivajiRoad", 8000);
insert into BankAccount values(8, "SBI_ResidencyRoad", 4000);
insert into BankAccount values(9, "SBI_ParliamentRoad", 3000);
insert into BankAccount values(10, "SBI_ResidencyRoad", 5000);
insert into BankAccount values(11, "SBI_Jantarmantar", 2000);
insert into BankCustomer values("Avinash", "Bull_Temple_Road", "Bangalore");
insert into BankCustomer values("Dinesh", "Bannergatta_Road", "Bangalore");
insert into BankCustomer values("Mohan", "NationalCollege_Road", "Bangalore");
insert into BankCustomer values("Nikil", "Akbar_Road", "Delhi");
insert into BankCustomer values("Ravi", "Prithviraj_Road", "Delhi");

insert into Depositer values("Avinash", 1);
insert into Depositer values("Dinesh", 2);
insert into Depositer values("Nikil", 4);
insert into Depositer values("Ravi", 5);
insert into Depositer values("Avinash", 8);
insert into Depositer values("Nikil", 9);
insert into Depositer values("Dinesh", 10);
insert into Depositer values("Nikil", 11);




insert into Loan values(1, "SBI_Chamrajpet",1000);
insert into Loan values(2, "SBI_ResidencyRoad",2000);
insert into Loan values(3, "SBI_ShivajiRoad",3000);
insert into Loan values(4, "SBI_ParliamentRoad",4000);
insert into Loan values(5, "SBI_Jantarmantar",5000);
delete from branch where branchname = "SBI_Parliament";
select * from branch;
select * from BankAccount;
select * from BankCustomer;
select * from Loan;
update BankAccount set balance = 4000 where accno = 6;

























