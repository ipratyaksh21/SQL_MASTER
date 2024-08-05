-- Working on Date functions

-- For an instance using one date example and
-- learn to get more information using date functions 

select year('1995-11-21');

select yearweek("1995-11-21");

select month("1995-11-21");

select monthname("1995-11-21");

select day("1995-11-21");

select dayname("1995-11-21");

select dayofmonth("1995-11-21");

select dayofyear("1995-11-21"); 

select dayofweek("1995-11-21");-- To find Day number of the week

select now(); -- To find current Date and Timestamp

select curdate(); -- To find current Date

select current_time(); -- To find current Time

select current_timestamp(); -- To find current Timestamp /Same as now()

select curtime(); -- To find current Time / Same as current_time()



