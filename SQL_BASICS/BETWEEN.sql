SELECT DISTINCT "OUTSTANDING_AMT" 
FROM "CUSTOMER";
-- LIMIT 10; 
-----------------------------------------------

SELECT "CUST_NAME", "OUTSTANDING_AMT"
FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" BETWEEN 4000 AND 11000;

-----------------------------------------------
SELECT * FROM "CUSTOMER";
-----------------------------------------------

SELECT "CUST_NAME", "CUST_CODE","OUTSTANDING_AMT"
FROM "CUSTOMER"
WHERE "CUST_NAME" BETWEEN 'Cook' AND 'Winston' AND "OUTSTANDING_AMT" >='9000'
ORDER BY "CUST_NAME";

-----------------------------------------------
SELECT "ORD_NUM","ORD_AMOUNT","ORD_DATE","AGENT_CODE"
FROM "ORDERS"
WHERE "ORD_AMOUNT" BETWEEN 1000 AND 4000 AND (NOT "ORD_AMOUNT" = 2500) AND "AGENT_CODE" NOT IN ('A002','A003')
ORDER BY "AGENT_CODE";

------------------------------------------------

SELECT * FROM






