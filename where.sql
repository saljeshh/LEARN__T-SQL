SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'saljesh'


-- <> means doesnt equals to 
SELECT * 
FROM EmployeeDemographics
WhERE FirstName <> 'saljesh'

SELECT DISTINCT *
FROM EmployeeDemographics
WHERE Age <= 30 AND gender='male'

SELECT * 
FROM EmployeeDemographics
WHERE Age >=30 OR gender = 'male'

-- Wildcard

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 's%' -- last name starts with s

SELECT * 
FROM EmployeeDemographics
WHERE firstName LIKE '%s' -- firstname end with s

SELECT *
FROM EmployeeDemographics
WHERE firstName LIKE '%a%' -- a exits anywhere in firstName


-- firstName start with a and has h in it anywhere
SELECT *
FROM EmployeeDemographics
WHERE firstName LIKE 's%h%'


-- NULL , NOT NULL
SELECT *
FROM EmployeeDemographics
Where firstName is NULL

insert into EmployeeDemographics 
values (1010,NULL,'second',83,'female')

-- gives all talbe as there is no null value
SELECT *
FROM EmployeeDemographics
WHERE firstName is NOT NULL


-- IN
-- It is basically the equals to(=) for multiple values
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('saljesh', 'annika')



SELECT * 
FROM EmployeeDemographics
WHERE LastName In ('maharjan', 'shakya')
