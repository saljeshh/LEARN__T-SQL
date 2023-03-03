select gender, count(gender) as number
from EmployeeDemographics
group by gender


select gender, age, count(gender) as number
from EmployeeDemographics
group by gender, age;

-- basically we are grouping according to the gender
-- in group by we cant use count(gender) as it is derived column not real in db
select gender, count(gender) as genders
from EmployeeDemographics
where age > 30
group by gender

select * from EmployeeDemographics


-- order by - by default sql has ascending

select * 
from EmployeeDemographics
order by age DESC


select age, count(age) as TYPESOFAge
from EmployeeDemographics
group by age
order by TYPESOFAge

-- here age will be first as descending and in gender it will be according to ascending
-- age 32 and 32 then age will be in ascending
SELECT *
FROM EmployeeDemographics
order by age desc, 5 asc -- 5 means column 5 i.e gender itself