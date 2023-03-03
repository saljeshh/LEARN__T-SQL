/*Aliasing*/
select firstName + ' ' + lastName AS FullName
from EmployeeDemographics

select avg(age) as AVgAge
from EmployeeDemographics

select demo.employeeID, sal.salary, ware.age
from EmployeeDemographics as demo
join EmployeeSalary as sal
on demo.EmployeeID = sal.EmployeeID
left outer join WareHouseEmployeeDemographics as ware
on ware.EmployeeID = demo.EmployeeID
