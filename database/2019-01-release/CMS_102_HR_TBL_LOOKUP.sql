delete HHS_CMS_HR.TBL_LOOKUP where TBL_ID = 1666;

INSERT INTO TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_DISP_ORDER, TBL_MANDATORY, TBL_REGION, TBL_CATEGORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (1666, 0, 'ERLRPipFinDecision', 'No Action Taken (employee resigned, retired, transferred)', 'No Action Taken (employee resigned, retired, transferred)', '1', null, 'N', null, 'ERLR', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
;
