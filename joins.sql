-- Inner Join, Full/Left/Right/Outer Joins



insert into EmployeeSalary values
(1002,'Data Analyst',45000),
(1003,'Data Engineer',70000),
(1004,'Database Admin',67000),
(1005,'Web Developer', 85000),
(1006,'Backend Engineer',46000),
(1007,'Mobile Developer',90430)

select * from EmployeeSalary

select *
from EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select * from EmployeeDemographics

select *
from EmployeeDemographics
Full Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select *
from EmployeeDemographics
Left outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select * 
from EmployeeDemographics
right outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID