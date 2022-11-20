# NOT NULL
create database Datas;    
use Datas;
create table students_details (id int not null, name varchar (15) not null, department varchar (15) not null, year int not null);
desc students_details;
select*from students_details; 
insert into students_details values(1,'nithya','bcom',2019),(2,'sathya','maths',2019),(3,'priya','bcom',2019),(4,'dharani','bba',2019),(5,'akshu','bba',2019),(6,'sri','maths',2019);

#CREATING A VIEW
create database sri_furniture;
use sri_furniture;
create table sales (id int auto_increment primary key, product_name varchar (10), price_per_unit int, quantity int);
insert into sales (product_name,price_per_unit,quantity) values('sofa',45000,300), ('wardrobe',70000,450), ('wing_chair',20000,200), ('table',25000,350);
select* from sales;
create view find as select product_name, price_per_unit * quantity as total from sales;
select*,total from find;




# SUM OF AGE
 create database harini;
 use harini;
 create table information (id int auto_increment primary key,name varchar(20),age int);
 insert into information (name,age) values ("bob",21),("sam",19),("jill",18),("jim",21),("sally",19),("jess",20),("will",21);
 select sum(age) from information;
 
 # GROUP BY AGE
 select age,count(age) from information group by age;
 
 
 # POSITIVE REVENUE
 create database priya;
use priya;
create table revenue (division_id int, year int, revenue int);
insert into revenue values (1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select * from revenue;
select division_id from revenue where revenue >0 and year = 2021;