--Union and Union

create table WareHouseEmployeeDemographics(
	EmployeeID int,
	FirstName varchar(30),
	LastName varchar(25),
	Age int,
	gender varchar(24)
)

insert into WareHouseEmployeeDemographics VALUES
(150,'Roy','Anderson',31,'Male'),
(151,'Hidetoshi','Hasagawa',40,'Male'),
(152,'Val','Johnson',31,'Female'),
(113,'Darryl','Philbin',NULL,'Male')

select * from WareHouseEmployeeDemographics

-- using joins
SELECT *
FROM EmployeeDemographics
FULL Outer Join WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

select *
from EmployeeDemographics
left outer join WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

select *
from EmployeeDemographics
right outer join WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

select *
from EmployeeDemographics
inner join WareHouseEmployeeDemographics
on EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID


--union same table column name with differnt information 
select *
from EmployeeDemographics
union
select *
from WareHouseEmployeeDemographics

-- it works because even though datatypes are not same , empid empid, firstname(text) vs jobtitle(title), age(numeric)vs salary(numeric)
select employeeID, firstName, Age 
from EmployeeDemographics
UNION
select employeeId,JobTitle,Salary
from EmployeeSalary
order by EmployeeID