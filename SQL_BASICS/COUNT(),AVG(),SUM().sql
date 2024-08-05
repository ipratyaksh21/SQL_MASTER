SELECT * FROM "CUSTOMER";
---------------------------------------------------

SELECT SUM("OUTSTANDING_AMT") AS "TOTAL_OUTSTANDING",SUM("PAYMENT_AMT") AS "TOTAL_PAYMENT_AMT" 
FROM "CUSTOMER";
---------------------------------------------------

---------------------------------------------------

SELECT AVG("PAYMENT_AMT"),AVG("OPENING_AMT"),AVG("RECEIVE_AMT")
FROM "CUSTOMER";

---------------------------------------------------

SELECT COUNT(DISTINCT "CUST_CITY"),COUNT(DISTINCT"CUST_COUNTRY")
FROM "CUSTOMER";
