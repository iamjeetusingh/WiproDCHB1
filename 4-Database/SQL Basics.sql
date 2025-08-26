# list all the databases
show databases;

/*
	list of built-in databases
		- information_schema
        - sys
        - performance_schema
*/

# select the DB
use information_schema;
show tables;
select * from APPLICABLE_ROLES;

# creating a database
# create database <db-name>;
create database employee;

# select the DB to work on it.
# use <db-name>;
use employee;


/*
	data types used in SQL:
		- Numerical datatypes
			- int
            - float
            - decimal
		- String data type
			- varchar
            - char
            - text
		- data & time data types
			- date (yyyy-mm-dd)
            - time (hh:mm:ss)
*/

# create a table
create table emp(
	emp_id int primary key,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    emailid varchar(50) not null unique,
    salary decimal(7,2)
);

# show tables
show tables;

# display the table structure
desc emp;

# listing the contents of the table
select * from emp;

insert into emp (emp_id, firstname, lastname, emailid, salary) 
value (1,'Jitendra Singh', 'Tomar', 'jeetu.singh5591@hotmail.com', 10000.00);

# listing the contents of the table
select * from emp;

# to add/insert multiple rows in the table
insert into emp (emp_id, firstname, lastname, emailid, salary) value 
	(2,'Brijendra Singh', 'Tomar', 'tomar@gmail.com', 15000.00),
    (3,'Piyush', 'Mojanty', 'piyush.mohanty@gmail.com', 18000.00),
    (4,'Shalini', 'Mishra', 'Shalini.M@gmail.com', 19000.00),
    (5,'Ankita', 'P', 'Ankita.p@gmail.com', 15000.00)
;

# listing the contents of the table
select * from emp;

#adding another column to the table
alter table emp add Company varchar(20);
select * from emp;

# updating the column with single value
update emp set company = 'Wipro' where company is null;
select * from emp;

# listing only the first name
select firstname from emp;

# listing firstname of employees who has salary = 15000
select firstname from emp where salary = 15000;

# listing firstname of employees who has salary > 15000
select firstname from emp where salary > 15000;

# listing firstname of employees who has salary >= 15000
select firstname from emp where salary >= 15000;

# listing firstname of employees who has salary between 10000 & 15000
select firstname, salary from emp where salary between 10000 and 17000;
select * from emp;

# deletion of the data from the table. 
truncate table emp;
select * from emp;

# adding another column in the same table
alter table emp add department varchar(20);

# adding data to the table
insert into emp (emp_id, firstname, lastname, emailid, salary, Company, department) value 
	(1,'Jitendra Singh', 'Tomar', 'jeetu.singh5591@hotmail.com', 10000.00, 'Wipro', 'IT dept'),
	(2,'Brijendra Singh', 'Tomar', 'tomar@gmail.com', 15000.00, 'Wipro', 'sport'),
    (3,'Piyush', 'Mojanty', 'piyush.mohanty@gmail.com', 18000.00, 'Wipro', 'Manager'),
    (4,'Shalini', 'Mishra', 'Shalini.M@gmail.com', 19000.00, 'Wipro', 'Manager'),
    (5,'Ankita', 'P', 'Ankita.p@gmail.com', 15000.00, 'Wipro', 'IT dept')
;
select * from emp;

# list all the developer names
select firstname from emp where department = "IT dept";

# selecting data within a list
select * from emp where department in ('Manager','sport');

# pattern matching
select * from emp where department like "IT%";

# FUNCTIONS
############

# to count total number of rows:
select count(*) from emp;

# to count total number of rows using Alias
select count(*) as TotalEmployees from emp;

# listing average salary 
select count(*) as TotalEmployees, avg(salary) as AverageSalary from emp;

# listing average salaries department-wise
select department, count(*) as totalEmployees, sum(salary) as totalSalary from emp
group by department;

# FUNCTIONS
select upper('wipro') as result;
select lower('WIPRO') as result;
select length('wipro') as result;
select round(3.1412341,2) as result;
select now() as result;
select datediff('2025-08-26','1970-01-01') as result;
select datediff((current_date()),'1970-01-01') as result;

/*
	cloning a table:
		1. simple cloning
			- it clones only the table structure.
            - no data, no constraints, no indexes.
            - it just copies column names and data type.
            
		2. shallow cloning
			- it clones structure and data.
            - without copying dependent objects like foreign key, triggers or indexes
            
		3. deep cloning
			- it clones everything. 
            - it make a true replica of a table.
*/














