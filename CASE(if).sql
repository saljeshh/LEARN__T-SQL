-- CASE statement

select firstName, lastName , age,
CASE 
	when age > 30 then 'Old'
	when age = 38 then 'stanley' -- this wont because only first condition is executed no override done
	when age between 27 and 30 then 'YOUNG'
	ELSE 'Teen'
END
from EmployeeDemographics
where age is not null
order by age



SELECT FirstName, LastName, JobTitle,Salary,
CASE 
	WHEN Jobtitle = 'salesman' THEN Salary + (salary*0.10)
	WHEN Jobtitle = 'Accountant' Then salary + (salary * .05)
	WHEN JobTitle = 'HR' THEN salary + (salary * .000001) 
	ELSE salary + (salary * .03)
END as New_Salary
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID