--------------------------------------------------------
--  DDL for View ADMIN_CODES
--------------------------------------------------------

CREATE OR REPLACE FORCE VIEW HHS_CMS_HR.ADMIN_CODES
AS
SELECT
	ADMINISTRATIVE_CODE            AS AC_ADMIN_CD
	, DESCRIPTION                  AS AC_ADMIN_CD_DESCR
	, SUBSTR(ADMINISTRATIVE_CODE, 1, LENGTH(ADMINISTRATIVE_CODE) -1) AS AC_PARENT_CD
FROM
	HHS_CMS_HR.ADMINISTRATIVE_CODE
WHERE
	ADMINISTRATIVE_CODE = 'F' OR ADMINISTRATIVE_CODE LIKE 'FC%';

/

------------------------------------
--Backout Script
------------------------------------
/*
DROP VIEW HHS_CMS_HR.ADMIN_CODES;
*/
