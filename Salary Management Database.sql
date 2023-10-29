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

-- Insert data in Employee table
insert into Employee(Employee_ID, Fname, Lname, Gender, Date_of_Birth, Address, Email)
values
	(101, 'John', 'Wilson', 'Male', '1993-03-15', '122 Main St, City', 'john.wilson@email.com'),
	(102, 'Mary', 'Martin', 'Female', '1992-09-12', '356 Elm St, Town', 'mary.martin92@email.com'),
	(103, 'Michael', 'Short', 'Male', '1990-07-12', '569 Oak Rd, Village', 'michael.short@email.com'),
	(104, 'Sarah', 'Johnson', 'Female', '1988-07-02', '311 Pine Ave, City', 'sarah.johnson@email.com'),
	(105, 'Dean', 'Lee', 'Male', '1995-02-21', '212 Birch Ln, Town', 'dean.lee@email.com'),
	(106, 'David', 'Kim', 'Male', '1987-10-20', '527 Cedar Dr, City', 'david.kim@email.com'),
	(107, 'Kim', 'Anderson', 'Female', '1992-12-19', '860 Spruce Rd, Town', 'kim.anderson@email.com'),
	(108, 'Laura', 'Davis', 'Female', '1994-11-03', '121 Oak St, Village', 'laura.davis@email.com'),
	(109, 'Mary', 'Martin', 'Female', '1986-03-02', '363 Maple Ave, City', 'mary.martin2@email.com'),
(110, 'Emily', 'Broad', 'Female', '1991-02-19', '448 Pine Rd, Village', 'emily.broad@email.com');

-- Insert data in Job_Dept table
insert into Job_Dept (Job_ID, Job_dept, Job_desc, Salary_range)
values
    ('JD001', 'Human Resources', 'HR Manager', 'High'),
    ('JD002', 'Finance', 'Financial Analyst', 'Medium'),
    ('JD003', 'Information Technology', 'IT Specialist', 'High'),
    ('JD004', 'Sales', 'Sales Manager', 'High'),
    ('JD005', 'Marketing', 'Marketing Coordinator', 'Medium'),
    ('JD006', 'Customer Service', 'Customer Support Specialist', 'Low'),
    ('JD007', 'Operations', 'Operations Manager', 'High'),
    ('JD008', 'Research and Development', 'Research Scientist', 'Very High'),
    ('JD009', 'Quality Assurance', 'QA Specialist', 'Medium'),
    ('JD010', 'Legal', 'Legal Counsel', 'Very High'),
    ('JD011', 'Administration', 'Admin Assistant', 'Low'),
    ('JD012', 'Facilities and Maintenance', 'Maintenance Technician', 'Medium'),
    ('JD013', 'Supply Chain and Logistics', 'Logistics Coordinator', 'Medium'),
    ('JD014', 'Public Relations', 'PR Specialist', 'Medium'),
    ('JD015', 'Strategic Planning', 'Strategic Planner', 'High'),
    ('JD016', 'Project Management', 'Project Manager', 'High'),
    ('JD017', 'Procurement and Purchasing', 'Procurement Specialist', 'Medium'),
    ('JD018', 'Health and Safety', 'Safety Officer', 'Low'),
    ('JD019', 'Training and Development', 'Training Coordinator', 'Medium'),
    ('JD020', 'Environmental and Sustainability', 'Sustainability Specialist', 'High');


