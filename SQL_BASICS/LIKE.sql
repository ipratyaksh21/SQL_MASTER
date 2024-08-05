SELECT * 
FROM "CUSTOMER";
-----------------------------------------
-- Finds any values that start with "J"

SELECT * 
FROM "CUSTOMER"
WHERE "CUST_NAME" LIKE 'J%' ;
-----------------------------------------

-- Finds any values that end with "n"

SELECT * 
FROM "CUSTOMER"
WHERE "CUST_NAME" LIKE '%n' 
-----------------------------------------

-- Finds any values that have "ev" in any position

SELECT * 
FROM "CUSTOMER"
WHERE "CUST_NAME" LIKE '%ev%' 

-----------------------------------------

-- Finds any values that start with "F" and ends with "g"


SELECT * 
FROM "CUSTOMER"
WHERE "CUST_NAME" LIKE 'F%g'

------------------------------------------

SELECT * 
FROM "CUSTOMER"
WHERE "CUST_NAME" LIKE 'St%'



	



