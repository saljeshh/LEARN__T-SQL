CREATE TABLE EmployeeDemographics
(
	EmployeeID int,
	FirstName varchar(50),
	LastName varchar(50),
	Age int,
	Gender varchar(10)
)

CREATE TABLE EmployeeSalary
(
	EmployeeID int,
	JobTitle varchar(50),
	Salary int
)

INSERT INTO EmployeeDemographics VALUES
(1001,'saljesh','maharjan',21,'Male'),
(1002,'annika','maharjan',21,'Female'),
(1003,'Success', 'Maharjan',32,'Male')

select * from EmployeeDemographics

Insert into EmployeeSalary VALUES
(1001,'Machine Learning Engineer',98000);

select * from EmployeeSalary