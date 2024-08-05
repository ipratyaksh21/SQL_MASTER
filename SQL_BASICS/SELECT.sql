SELECT * 
FROM "CUSTOMER";

-----------------------------------------------

SELECT DISTINCT "CUST_CITY"
FROM "CUSTOMER";

-----------------------------------------------

SELECT COUNT ("WORKING_AREA") AS WORKING_AREA, COUNT (DISTINCT "WORKING_AREA") AS DIS_WORKING_AREA
FROM "CUSTOMER";

-----------------------------------------------

SELECT * 
FROM "CUSTOMER"
ORDER BY "CUST_CODE"
LIMIT 5;

-----------------------------------------------

SELECT "CUST_NAME","CUST_CODE","GRADE", "OUTSTANDING_AMT"
FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" BETWEEN 3000 AND 9000
ORDER BY "CUST_NAME";





