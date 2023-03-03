/*
	CTEs
*/
-- CTE is like a virtual table so that we dont have to write these query again and again many times

WITH CTE_Employee as (
	SELECT firstName, lastName, gender, salary,
	count(gender) OVER (partition by gender) as TotalGender,
	AVG(salary) OVER (partition by gender) as AvgSalary
	FROM EmployeeDemographics as emp
	join EmployeeSalary as sal
	on emp.EmployeeID = sal.EmployeeID
	where salary > 45000)

select * from CTE_Employee

-- we need to run these all code at once otherwise it wont work
-- And we cant write selct from cte after another query otherwise it wont work
