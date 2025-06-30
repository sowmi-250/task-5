use data;

Create table department (
Department_ID int Primary key,
Department_Name varchar(30)
);

use data;
Create table Employees (
Employee_ID Int Primary key,
Employee_Name varchar (50),
Department_ID int,
Salary numeric,
Foreign key (Department_ID) References department (Department_ID)
);

insert into department values (1,'Mathematics');
insert into department values (2,'English');
insert into department values (3,'Psychology');

insert into Employees values (101,'Amala Binisha',1,80000);
insert into Employees values (102,'Anupama',1,90000);
insert into Employees values (103,'Hamlin BOby',3,70000);
insert into Employees values (104,'Sharon Adlin',2,80000);
insert into Employees values (105,'Lumina Lorin',NULL,60000);
insert into Employees values (106,'Issarra',2,80000);
insert into Employees values (107,'Sihaam',NULL,NULL);

Select * from Employees;
Select * from department;

-- UsING INNER,LEFT,RIGHT,FULL JOIN
Select * from department inner join Employees on department.Department_ID = Employees.Department_ID;
Select * from department left join Employees on department.Department_ID = Employees.Department_ID;
select * from department right join Employees on department.Department_ID = Employees.Department_ID;
select * from department left join Employees on department.Department_ID = Employees.Department_ID 
union select * from department right join Employees on department.Department_ID = Employees.Department_ID;
