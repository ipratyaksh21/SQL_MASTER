SELECT * 
FROM "CUSTOMER"
WHERE "GRADE" IS  NULL;

-- " WILL RETURN ROWS WITH NULL ENTRIES "

-----------------------------------------------

UPDATE "CUSTOMER"
SET "GRADE" = NULL
WHERE "CUST_CODE" = 'C00013'; 

---------------------------------------------------

UPDATE "CUSTOMER"
SET "CUST_NAME" = 'Pratyaksh'
WHERE "CUST_CODE" = 'C00020'
ORDER BY "CUST_CODE" ; 

---------------------------------------------------
UPDATE "CUSTOMER"
SET "CUST_NAME" = 'Pratyaksh'
WHERE "CUST_CODE" = 'C00020'
ORDER BY "CUST_CODE" ; 

---------------------------------------------------

UPDATE "CUSTOMER"
SET "CUST_NAME" = 'Samip',"CUST_COUNTRY" = 'INDIA'
WHERE "CUST_CODE" = 'C00002';
-- ORDER BY "CUST_CODE"; 

---------------------------------------------------


UPDATE "CUSTOMER"
SET "CUST_COUNTRY" = 'India'
WHERE "CUST_CODE" = 'C00002';
-- ORDER BY "CUST_CODE"; 

---------------------------------------------------

SELECT * FROM "CUSTOMER"
WHERE "CUST_COUNTRY" = 'INDIA' OR "CUST_COUNTRY" = 'India'
ORDER BY "CUST_CODE";
