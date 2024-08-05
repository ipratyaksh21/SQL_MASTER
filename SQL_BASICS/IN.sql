SELECT *
FROM "CUSTOMER"
WHERE "WORKING_AREA" IN ('London','Brisban','Chennai')
ORDER BY "CUST_CITY";

--------------------------------------------------------------------

SELECT *
FROM "CUSTOMER"
WHERE "WORKING_AREA" NOT IN ('London','Brisban','Chennai')
ORDER BY "CUST_CITY";

--------------------------------------------------------------------

SELECT *
FROM "CUSTOMER"
WHERE "WORKING_AREA" IN (SELECT "WORKING_AREA" FROM "AGENTS")
ORDER BY "CUST_NAME";

--------------------------------------------------------------------



