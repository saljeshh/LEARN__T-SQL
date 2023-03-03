-- temp tables
-- take out top 100 of 10K rows of real table 
-- store it into new temp table so that we dont need to process again and again



CREATE TABLE #temp_Employee(
	EmployeeId int,
	JobTitle varchar(50),
	Salary int
)

select * from #temp_Employee

insert into #temp_Employee values
(1,'Data Analyst',45000),
(2,'Data Engineering',34000)

Insert into #temp_Employee
select top 5 *
from EmployeeSalary



/* Example 2 */

DROP TABLE IF EXISTS #temp_Employee2

CREATE TABLE #Temp_Employee2
(
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)

INSERT INTO #Temp_Employee2
select jobtitle,count(jobtitle),avg(age),avg(salary)
from EmployeeDemographics as emp
join EmployeeSalary as sal
on emp.EmployeeID = sal.EmployeeID
group by jobtitle

select * from #Temp_Employee2
-- now when you run this again you get error 
-- so to prevent it we use DROP TABLE IF EXISTS #NAME BEFORE TABLE CREATION