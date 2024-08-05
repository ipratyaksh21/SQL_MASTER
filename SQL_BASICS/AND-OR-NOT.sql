SELECT * 
FROM "AGENTS"
WHERE "AGENT_NAME" = 'Alex';
------------------------------------------------------------

SELECT "AGENT_NAME","COMMISSION"
FROM "AGENTS"
WHERE NOT "WORKING_AREA" = 'Chennai';


------------------------------------------------------------

SELECT *
FROM "AGENTS"
WHERE ("COMMISSION" = '0.12' OR  "COMMISSION" = '0.15') AND (NOT "WORKING_AREA"='Torento');
------------------------------------------------------------

SELECT "AGENT_NAME","AGENT_CODE","PHONE_NO"
FROM "AGENTS"
WHERE ("COMMISSION" = '0.12' OR  "COMMISSION" = '0.15') AND (NOT "WORKING_AREA"='Torento');




