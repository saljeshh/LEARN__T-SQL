-- partition by
-- like group by 

select * from EmployeeDemographics
select * from EmployeeSalary


select firstName, LastName, gender, salary, count(gender) OVER (PARTITION BY Gender) as TotalGender
from EmployeeDemographics as dem
join EmployeeSalary as sal
on sal.EmployeeID = dem.EmployeeID


-- if it was group by
select firstName, lastName, gender, salary, count(gender) as genderCount
from EmployeeDemographics as dem
join EmployeeSalary as sal
on sal.EmployeeID = dem.EmployeeID
group by firstName, lastName, gender, salary

-- but problem is we are not getting count proper in up one 
-- we use partition by to see detail of group by of this tala wala
select gender,count(gender) as genderCount
from EmployeeDemographics as dem
join EmployeeSalary as sal
on dem.EmployeeID = sal.EmployeeID
group by gender

select firstName, lastName, gender, salary, count(gender) OVER (PARTITION BY gender) as genderCount
from EmployeeDemographics as dem
join EmployeeSalary as sal
on dem.EmployeeID = sal.EmployeeID
