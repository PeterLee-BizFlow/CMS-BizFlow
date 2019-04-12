-- SELECT * FROM VW_INCENTIVES_PDP2;
CREATE OR REPLACE FORCE VIEW HHS_CMS_HR.VW_INCENTIVES_COM (
        PROC_ID
        , INCEN_TYPE
        , REQ_NUM
        , REQ_TYPE
        , REQ_DATE
        , ADMIN_CODE
        , ORG_NAME
        , CANDI_NAME
        , CANDI_FIRST
        , CANDI_MIDDLE
        , CANDI_LAST
        , SO_NAME
        , SO_EMAIL
        , SO_ID
        , XO1_NAME
        , XO1_EMAIL
        , XO1_ID
        , XO2_NAME
        , XO2_EMAIL
        , XO2_ID
        , XO3_NAME
        , XO3_EMAIL
        , XO3_ID
        , HRL1_NAME
        , HRL1_EMAIL
        , HRL1_ID
        , HRL2_NAME
        , HRL2_EMAIL
        , HRL2_ID
        , HRL3_NAME
        , HRL3_EMAIL
        , HRL3_ID
        , HRS1_NAME
        , HRS1_EMAIL
        , HRS1_ID
        , HRS2_NAME
        , HRS2_EMAIL
        , HRS2_ID
        , DGHO_NAME
        , DGHO_EMAIL
        , DGHO_ID
        , TABG_NAME
        , TABG_EMAIL
        , TABG_ID
        , POS_TITLE
        , PAY_PLAN
        , SERIES
        , GRADE
        , POS_DESC_NUM
        , TYPE_OF_APPT
        , DS_STATE
        , DS_CITY
        , CANCEL_RESAON
        , CANCEL_USER_NAME
        , CANCEL_USER_ID
        , SO_TITLE
        , SS_NAME
        , SS_EMAIL
        , SS_ID
        , VACANCY_NUMBER
) AS 
SELECT 
        PROC_ID
        , INCEN_TYPE
        , REQ_NUM
        , REQ_TYPE
        , TO_CHAR(REQ_DATE, 'yyyy/mm/dd')
        , ADMIN_CODE
        , ORG_NAME
        , CANDI_NAME
        , CANDI_FIRST
        , CANDI_MIDDLE
        , CANDI_LAST
        , SO_NAME
        , SO_EMAIL
        , SO_ID
        , XO1_NAME
        , XO1_EMAIL
        , XO1_ID
        , XO2_NAME
        , XO2_EMAIL
        , XO2_ID
        , XO3_NAME
        , XO3_EMAIL
        , XO3_ID
        , HRL1_NAME
        , HRL1_EMAIL
        , HRL1_ID
        , HRL2_NAME
        , HRL2_EMAIL
        , HRL2_ID
        , HRL3_NAME
        , HRL3_EMAIL
        , HRL3_ID
        , HRS1_NAME
        , HRS1_EMAIL
        , HRS1_ID
        , HRS2_NAME
        , HRS2_EMAIL
        , HRS2_ID
        , DGHO_NAME
        , DGHO_EMAIL
        , DGHO_ID
        , TABG_NAME
        , TABG_EMAIL
        , TABG_ID
        , POS_TITLE
        , PAY_PLAN
        , SERIES
        , GRADE
        , POS_DESC_NUM
        , TYPE_OF_APPT
        , DS_STATE
        , DS_CITY
        , CANCEL_RESAON
        , CANCEL_USER_NAME
        , CANCEL_USER_ID
        , SO_TITLE
        , SS_NAME
        , SS_EMAIL
        , SS_ID
        , VACANCY_NUMBER
FROM HHS_CMS_HR.INCENTIVES_COM
;

    
    
