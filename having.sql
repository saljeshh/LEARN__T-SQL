-- having

select jobtitle, count(jobtitle)
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--where count(jobtitle) > 1 -- this will give error An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.
-- having count(jobtitle) > 1  -- Incorrect syntax near the keyword 'group'.
group by jobtitle
having count(jobtitle) > 1 


-- get avg salary of group of distinct jobs having avg salary 45K above ordered by avg salary.
select jobtitle, avg(salary) as avgSalary
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where jobtitle is not null
group by jobtitle 
having jobtitle = 'Receptionist'
order by avg(salary)

