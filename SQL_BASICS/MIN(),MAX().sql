SELECT * FROM "CUSTOMER";
---------------------------------------------------

SELECT MAX("PAYMENT_AMT") AS HIGH_PAY_AMT,MAX("OUTSTANDING_AMT") AS HIGH_OUTSTANDING_AMT
FROM "CUSTOMER";
---------------------------------------------------

SELECT MIN("PAYMENT_AMT") AS "LOW_PAY_AMT",MIN("OUTSTANDING_AMT") AS "LOW_OUTSTANDING_AMT"
FROM "CUSTOMER";
---------------------------------------------------