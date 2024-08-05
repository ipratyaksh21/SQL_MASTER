                                                                                                                        -- ADDDATE() FUNCTION

-- To find DateOfBirth of Respecive Persons
select  first_name,dob AS DateOfBirth
from Persons;

-- To find BirthYear and BirthMonth and BirthDay of Respecive Persons with FullName
select  concat(first_name," ",last_name) as FullName,year(dob) as BirthYear, monthname(dob) as BirthMonth, dayofmonth(dob) as BirthDay
from Persons
order by 2;

-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- To add Day in the given Date
select  concat(first_name," ",last_name) as FullName, dob, adddate(dob, interval 10 day ) as DayAdded
from Persons
order by 1;

-- To add Month in the given Date
select  concat(first_name," ",last_name) as FullName, dob, adddate(dob, interval 3 month ) as MonthAdded
from Persons
order by 1;

-- To add Year in the given Date
select  concat(first_name," ",last_name) as FullName, dob, adddate(dob, interval 5  year ) as YearAdded
from Persons
order by 1;

-- To add hour in the given Date
select  concat(first_name," ",last_name) as FullName, dob, adddate(dob, interval 10 hour ) as HourAdded
from Persons
order by 1;

 -- The Same can be achived for the following : (These are called addunits)
 -- MICROSECOND
-- SECOND
-- MINUTE
-- HOUR
-- DAY
-- WEEK
-- MONTH
-- QUARTER
-- YEAR
-- SECOND_MICROSECOND
-- MINUTE_MICROSECOND
-- MINUTE_SECOND
-- HOUR_MICROSECOND
-- HOUR_SECOND
-- HOUR_MINUTE
-- DAY_MICROSECOND
-- DAY_SECOND
-- DAY_MINUTE
-- DAY_HOUR
-- YEAR_MONTH

-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- To subtract the above addunits we can use minus(-) before the addunits

-- Let's subtract 10 months 
select  first_name,dob AS DateOfBirth, adddate(dob, interval -11 month) as SubtractedMonths
from Persons;

-- ---------------------------------------------------------------------------------------------------------------------------------------------

