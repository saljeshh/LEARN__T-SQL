-- updating and deleting

select *
from EmployeeDemographics

update EmployeeDemographics
set EmployeeID = 111
where firstName = 'holly' and lastname='flax'

update EmployeeDemographics
set age = '31', gender = 'female'
where firstname = 'Holly' and lastName = 'Flax'

delete from EmployeeDemographics
where EmployeeID = 105

-- deleting without where may delete every data here
-- so before deleting evertime first select that row and display confirm it then only delete it
select *
from EmployeeDemographics
where EmployeeID = 113

delete from EmployeeDemographics
where EmployeeID = 113
