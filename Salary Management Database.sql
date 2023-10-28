create database if not exists Salary;
use Salary;

create table if not exists Salary(
	Salary_ID varchar(100) primary key,
    Job_ID varchar(100) not null,
    Amount int not null,
    Annual int not null,
    Bonus int default 0
);

create table if not exists Job_Dept(
    Job_ID varchar(100) primary key,
    Job_dept varchar(100) not null,
    Job_desc varchar(500),
    Salary_range ENUM('Low', 'Medium', 'High', 'Very High') NOT NULL
);

create table if not exists Employee(
    Employee_ID varchar(100) primary key,
    Fname varchar(200), 
	Lname varchar(200),
    Gender ENUM('Male', 'Female', 'Other'),
    Date_of_Birth DATE,
    Address varchar(1000),
    Email varchar(100)
);

create table if not exists Leaving(
    Leave_ID varchar(100) primary key,
    Employee_ID varchar(200) not null, 
	Date_of_Leave date,
    Reason varchar(300)
);

create table if not exists Payroll(
    Payroll_ID varchar(100) primary key,
	Employee_ID varchar(200) not null, 
	Job_ID varchar(100) not null,
    Salary_ID varchar(100) not null,
    Leave_ID varchar(100) not null,
    Date_of_Payroll date,
    Total_Amt decimal
);