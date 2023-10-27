create database if not exists Salary;
use Salary;

create table if not exists Salary(
	Salary_ID varchar(100) primary key,
    Job_ID varchar(100) not null,
    amount int not null,
    annual int not null,
    bonus int default 0
);

create table if not exists Job_Dept(
    Job_ID varchar(100) primary key,
    job_dept varchar(100) not null,
    job_desc varchar(500),
    salary_range ENUM('Low', 'Medium', 'High', 'Very High') NOT NULL
);

create table if not exists Employee(
    employee_ID varchar(100) primary key,
    fname varchar(200), 
	lname varchar(200),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    address varchar(1000),
    email varchar(100)
);

create table if not exists Leaving(
    leave_ID varchar(100) primary key,
    employee_ID varchar(200) not null, 
	date_of_leave date,
    reason varchar(300)
);

create table if not exists Payroll(
    Payroll_ID varchar(100) primary key,
	employee_ID varchar(200) not null, 
	Job_ID varchar(100) not null,
    Salary_ID varchar(100) not null,
    leave_ID varchar(100) not null,
    date_of_payroll date,
    total_amt decimal
);

-- Insert dummy data into the Salary table
INSERT INTO Salary (Job_ID, amount, annual, bonus)
VALUES
    (1, 50000, 600000, 2000),
    (2, 60000, 720000, 2500),
    (3, 75000, 900000, 3000),
    (4, 85000, 1020000, 3500);

-- Insert data into the Job_Dept table
INSERT INTO Job_Dept (job_dept, job_desc, salary_range)
VALUES
    ('HR', 'Human Resources', 'Medium'),
    ('IT', 'Information Technology', 'High'),
    ('Sales', 'Sales Department', 'High'),
    ('Finance', 'Finance Department', 'Very High');

-- Insert data into the Employee table
INSERT INTO Employee (fname, lname, gender, date_of_birth, address, email)
VALUES
    ('John', 'Doe', 'Male', '1990-03-15', '123 Main St, City, Country', 'john.doe@example.com'),
    ('Jane', 'Smith', 'Female', '1988-05-20', '456 Elm St, City, Country', 'jane.smith@example.com'),
    ('Bob', 'Johnson', 'Male', '1995-11-10', '789 Oak St, City, Country', 'bob.johnson@example.com'),
    ('Alice', 'Brown', 'Female', '1992-08-02', '101 Pine St, City, Country', 'alice.brown@example.com');

-- Insert data into the Leaving table
INSERT INTO Leaving (employee_ID, date_of_leave, reason)
VALUES
    (1, '2023-10-15', 'Resigned'),
    (3, '2023-09-20', 'Retired'),
    (2, '2023-08-05', 'New Job Opportunity'),
    (4, '2023-07-01', 'Personal Reasons');

-- Insert data into the Payroll table
INSERT INTO Payroll (employee_ID, Job_ID, Salary_ID, leave_ID, date_of_payroll, total_amt)
VALUES
    (1, 1, 1, 1, '2023-10-15', 52000.00),
    (2, 2, 2, 3, '2023-10-15', 62500.00),
    (3, 3, 3, 2, '2023-10-15', 78000.00),
    (4, 4, 4, 4, '2023-10-15', 89250.00);
