-- revise all 


select * from EmployeeDemographics

delete 
from EmployeeDemographics

insert into EmployeeDemographics VALUES
(101,'Jim','Halpert',30,'Male'),
(102,'Pam','Beasley',30,'Female'),
(103,'Dwight','Schrute',29,'Male'),
(104,'Angela','Martin',31,'Female'),
(105,'Toby','Flenderson',32,'Male'),
(106,'Michael','Scott',35,'Male'),
(107,'Meredith','Palmer',32,'Female'),
(108,'Stanley','Hudson',38,'Male'),
(109,'Kevin','Malone',31,'Male'),
(110,'Ryan','Howard',26,'Male'),
(NULL,'Holly','Flax',Null,NUll),
(112,'Darry','Philbin',Null,'Male')

select * from EmployeeSalary

delete  
from EmployeeSalary
where EmployeeID = 1001

delete 
from EmployeeSalary

insert into EmployeeSalary Values
(101,'Salesman',45000),
(102,'Receptionist',36000),
(103,'Salesman',63000),
(104,'Accountant',47000),
(105,'HR',50000),
(106,'Regional',65000),
(107,'Supplier Retailer',41000),
(108,'Salesman',48000),
(109,'Accountant',42000),
(110,NULL,47000),
(NULL,'Salesman',43000)

insert into EmployeeDemographics VALUES
(113,'Check','ilbin',31,'Male')

select * 
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- distinct gender and group by gender works same
select distinct(gender)
from EmployeeDemographics

select gender
from EmployeeDemographics
group by gender


--now

update EmployeeDemographics
set gender = 'male'
where firstname = 'holly'

select gender, count(gender) as population
from EmployeeDemographics
group by gender

select gender, age, count(gender)
from EmployeeDemographics
group by gender, age 
order by age desc

select gender, age, count(gender) as Counter
from EmployeeDemographics
where age < 32
group by gender, age
order by Counter desc

select gender, count(gender) as Population
from EmployeeDemographics
where age < 33
group by gender

--order by
select *
from EmployeeDemographics
order by age desc

select *
from EmployeeDemographics
order by firstNaME 

select *
from EmployeeDemographics
where firstName = 'JIm'

select *
from EmployeeDemographics
order by gender

select *
from EmployeeDemographics
order by gender, age 

select *
from EmployeeDemographics
order by age, gender desc