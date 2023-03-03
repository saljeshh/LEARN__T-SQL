
Insert into EmployeeDemographics VALUES
(1004,'laxmi','maharjan',45,'Female'),
(1005,'Likhita','Shakya',32,'Female'),
(1006, 'Ram', 'Nepali', 42, 'Male'),
(1007, 'Hari', 'Ramu', 34, 'Male')

SELECT * FROM 
EmployeeDemographics;

SELECT TOP 5 *
FROM EmployeeDemographics

SELECT TOP 5 EmployeeID, FirstName, Age, Gender
FROM EmployeeDemographics

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT * 
FROM EmployeeDemographics;

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
from EmployeeDemographics

SELECT MAX(SALARY) AS MaximumSalary
FROM EmployeeSalary


SELECT AVG(salary) As AverageSalary
FROM EmployeeSalary

-- this is only case when we are selected differnt db but still wanna access the table
SELECT * 
FROM ALEX.dbo.EmployeeDemographics

SELECT DISTINCT *
FROM ALEX.dbo.EmployeeDemographics

