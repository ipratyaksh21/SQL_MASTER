																									-- ADDTIME() FUNCTION

-- To find DateOfBirth of Respecive Persons
select  first_name,dob AS DateOfBirth
from Persons;
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- To add Seconds in the given Date
select  first_name,dob, addtime(dob,  "2") as SecondsAdded
from Persons
order by 1;

-- To add Minutes in the given Date
select  first_name,dob, addtime(dob,  "0:20:0") as MinutesAdded
from Persons
order by 1;

-- To add Hours in the given Date
select  first_name,dob, addtime(dob,  "3:0:0") as HoursAdded
from Persons
order by 1;

-- To add Microseconds in the given Date
select  first_name,dob, addtime(dob,  "0:0:0.29") as MicrosecondsAdded
from Persons
order by 1;


-- --------------------------------------------------------------------------------------------------------------------------------------------------------------


--  Let's add 11 days  10 Minutes, 33 Seconds, 55 Microseconds

select first_name, dob, addtime(dob,"11 07:10:33.55") as updatedDOB
from Persons;


