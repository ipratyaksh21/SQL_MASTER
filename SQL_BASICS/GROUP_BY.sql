SELECT COUNT("CUST_CODE"),"CUST_CITY"
FROM "CUSTOMER"
GROUP BY "CUST_CITY"
ORDER BY COUNT("CUST_CODE") DESC;

---------------------------------------------

SELECT COUNT("ORD_NUM"),"ORD_AMOUNT"
FROM "ORDERS"
GROUP BY "ORD_AMOUNT"
ORDER BY COUNT("ORD_NUM") DESC;

-------------------------------------

-- CROSS CHECK ABOVE QUERY

SELECT "ORD_NUM"
FROM "ORDERS"
WHERE "ORD_AMOUNT"= 500
ORDER BY "ORD_NUM" ;


-------------------------------------