SELECT "WORKING_AREA" 
FROM "AGENTS"
UNION
SELECT "WORKING_AREA"
FROM "CUSTOMER"
ORDER BY "WORKING_AREA";


---------------------------
SELECT  COUNT (DISTINCT "WORKING_AREA" )
FROM "AGENTS";

---------------------------
SELECT COUNT (DISTINCT "WORKING_AREA" )
FROM "CUSTOMER";

-------------------------------------------
SELECT  COUNT (DISTINCT "PHONE_NO" )
FROM "AGENTS";

---------------------------
SELECT COUNT (DISTINCT "PHONE_NO" )
FROM "CUSTOMER";

----------------------------------------

SELECT "PHONE_NO"
FROM "AGENTS"
UNION
SELECT "PHONE_NO"
FROM "CUSTOMER";



