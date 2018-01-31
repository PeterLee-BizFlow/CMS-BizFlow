
SET DEFINE OFF;




--------------------------------------------------------
--  DDL for VW_ELIGQUAL
--------------------------------------------------------
CREATE OR REPLACE VIEW VW_ELIGQUAL
AS
SELECT
	R.REQ_ID
	, R.REQ_JOB_REQ_NUMBER
	, R.REQ_JOB_REQ_CREATE_DT
	, R.REQ_STATUS_ID
	, R.REQ_CANCEL_DT
	, R.REQ_CANCEL_REASON

	, EQ.ELIGQUAL_ID
	, EQ.PROCID
	, EQ.ADMIN_CD AS ADMIN_CD
	, LU_AC.AC_ADMIN_CD_DESCR AS ADMIN_CD_DSCR
	, EQ.RT_ID
	, LU_RT.TBL_LABEL AS RT_DSCR
	, EQ.AT_ID
	, LU_AT.TBL_LABEL AS AT_DSCR
	, EQ.VT_ID
	, LU_VT.TBL_LABEL AS VT_DSCR
	, EQ.SAT_ID
	, LU_SAT.TBL_LABEL AS SAT_DSCR
	, EQ.CT_ID
	, LU_CT.TBL_LABEL AS CT_DSCR
	, EQ.SO_ID
	, LU_MEMSO.NAME AS SO_NAME
	, EQ.SO_TITLE
	, EQ.SO_ORG
	, EQ.XO_ID
	, LU_MEMXO.NAME AS XO_NAME
	, EQ.XO_TITLE
	, EQ.XO_ORG
	, EQ.HRL_ID
	, LU_MEMHL.NAME AS HL_NAME
	, EQ.HRL_TITLE
	, EQ.HRL_ORG
	, EQ.SS_ID
	, LU_MEMSS.NAME AS SS_NAME
	, EQ.CS_ID
	, LU_MEMCS.NAME AS CS_NAME
	, CASE WHEN EQ.SO_AGREE = '1' THEN 'Yes' ELSE 'No' END AS SO_AGREE
	, EQ.OTHER_CERT
	, FN_GET_MEMBER_DSCR(EQ.OTHER_CERT) AS OTHER_CERT_DSCR

	, EQ.CNDT_LAST_NM
	, EQ.CNDT_FIRST_NM
	, EQ.CNDT_MIDDLE_NM
	, CASE WHEN EQ.BGT_APR_OFM = '1' THEN 'Yes' WHEN EQ.BGT_APR_OFM = '0' THEN 'No' ELSE 'N/A' END AS BGT_APR_OFM
	, EQ.SPNSR_ORG_NM
	, EQ.SPNSR_ORG_FUND_PC
	, EQ.POS_TITLE
	, EQ.PAY_PLAN_ID
	, LU_PYPL.TBL_NAME AS PAY_PLAN_DSCR
	, EQ.SERIES
	, EQ.POS_DESC_NUMBER_1
	, EQ.CLASSIFICATION_DT_1
	, EQ.GRADE_1
	, EQ.POS_DESC_NUMBER_2
	, EQ.CLASSIFICATION_DT_2
	, EQ.GRADE_2
	, EQ.POS_DESC_NUMBER_3
	, EQ.CLASSIFICATION_DT_3
	, EQ.GRADE_3
	, EQ.POS_DESC_NUMBER_4
	, EQ.CLASSIFICATION_DT_4
	, EQ.GRADE_4
	, EQ.POS_DESC_NUMBER_5
	, EQ.CLASSIFICATION_DT_5
	, EQ.GRADE_5
	, EQ.MED_OFFICERS_ID
	, LU_MO.TBL_LABEL AS MED_OFFICERS_DSCR
	, EQ.PERFORMANCE_LEVEL
	, EQ.SUPERVISORY
	, LU_SUP.TBL_LABEL AS SUPERVISORY_DSCR
	, EQ.SKILL
	, EQ.LOCATION
	, LU_LOC.LOC_CITY || ', ' || LU_LOC.LOC_STATE AS LOCATION_DSCR
	, EQ.VACANCIES
	, EQ.REPORT_SUPERVISOR
	, LU_MEMRS.NAME AS REPORT_SUPERVISOR_NAME
	, EQ.CAN
	, CASE WHEN EQ.VICE = '1' THEN 'Yes' ELSE 'No' END AS VICE
	, EQ.VICE_NAME
	, EQ.DAYS_ADVERTISED
	, EQ.TA_ID
	, LU_ADT.TBL_LABEL AS TA_DSCR
	, EQ.NTE
	, EQ.WORK_SCHED_ID
	, LU_WSCHD.TBL_LABEL AS WORK_SCHED_DSCR
	, EQ.HOURS_PER_WEEK
	, CASE WHEN EQ.DUAL_EMPLMT = '1' THEN 'Yes' WHEN EQ.DUAL_EMPLMT = '0' THEN 'No' ELSE NULL END AS DUAL_EMPLMT
	, EQ.SEC_ID
	, LU_SEC.TBL_LABEL AS SEC_DSCR
	, CASE WHEN EQ.CE_FINANCIAL_DISC = '1' THEN 'Yes' ELSE 'No' END AS CE_FINANCIAL_DISC
	, EQ.CE_FINANCIAL_TYPE_ID
	, LU_FNTP.TBL_LABEL AS CE_FINANCIAL_TYPE_DSCR
	, CASE WHEN EQ.CE_PE_PHYSICAL = '1' THEN 'Yes' ELSE 'No' END AS CE_PE_PHYSICAL
	, CASE WHEN EQ.CE_DRUG_TEST = '1' THEN 'Yes' ELSE 'No' END AS CE_DRUG_TEST
	, CASE WHEN EQ.CE_IMMUN = '1' THEN 'Yes' ELSE 'No' END AS CE_IMMUN
	, CASE WHEN EQ.CE_TRAVEL = '1' THEN 'Yes' ELSE 'No' END AS CE_TRAVEL
	, EQ.CE_TRAVEL_PER
	, CASE WHEN EQ.CE_LIC = '1' THEN 'Yes' ELSE 'No' END AS CE_LIC
	, EQ.CE_LIC_INFO
	, EQ.REMARKS
	, EQ.PROC_REQ_TYPE
	, EQ.RECRUIT_OFFICE_ID
	, EQ.ASSOC_DESCR_NUMBERS
	, EQ.PROMOTE_POTENTIAL
	, EQ.VICE_EMPL_ID
	, EQ.SR_ID
	, EQ.GR_ID
	, CASE WHEN EQ.GA_1  = '1' THEN 'Yes' ELSE 'No' END AS GA_1
	, CASE WHEN EQ.GA_2  = '1' THEN 'Yes' ELSE 'No' END AS GA_2
	, CASE WHEN EQ.GA_3  = '1' THEN 'Yes' ELSE 'No' END AS GA_3
	, CASE WHEN EQ.GA_4  = '1' THEN 'Yes' ELSE 'No' END AS GA_4
	, CASE WHEN EQ.GA_5  = '1' THEN 'Yes' ELSE 'No' END AS GA_5
	, CASE WHEN EQ.GA_6  = '1' THEN 'Yes' ELSE 'No' END AS GA_6
	, CASE WHEN EQ.GA_7  = '1' THEN 'Yes' ELSE 'No' END AS GA_7
	, CASE WHEN EQ.GA_8  = '1' THEN 'Yes' ELSE 'No' END AS GA_8
	, CASE WHEN EQ.GA_9  = '1' THEN 'Yes' ELSE 'No' END AS GA_9
	, CASE WHEN EQ.GA_10 = '1' THEN 'Yes' ELSE 'No' END AS GA_10
	, CASE WHEN EQ.GA_11 = '1' THEN 'Yes' ELSE 'No' END AS GA_11
	, CASE WHEN EQ.GA_12 = '1' THEN 'Yes' ELSE 'No' END AS GA_12
	, CASE WHEN EQ.GA_13 = '1' THEN 'Yes' ELSE 'No' END AS GA_13
	, CASE WHEN EQ.GA_14 = '1' THEN 'Yes' ELSE 'No' END AS GA_14
	, CASE WHEN EQ.GA_15 = '1' THEN 'Yes' ELSE 'No' END AS GA_15

	, FN_GET_GRADE_ADVRT(EQ.GA_1, EQ.GA_2, EQ.GA_3, EQ.GA_4, EQ.GA_5
		 , EQ.GA_6, EQ.GA_7, EQ.GA_8, EQ.GA_9, EQ.GA_10
		 , EQ.GA_11, EQ.GA_12, EQ.GA_13, EQ.GA_14, EQ.GA_15)
	AS GA

	, EQ.CNDT_ELIGIBLE
	, EQ.INELIG_REASON
	, EQ.CNDT_QUALIFIED
	, EQ.DISQUAL_REASON

	, EQ.SEL_DETERM
	, LU_SD.TBL_LABEL AS SEL_DETERM_DSCR
	
	, EQ.DCO_CERT
	, EQ.DCO_NAME
	, EQ.DCO_SIG
	, EQ.DCO_SIG_DT

FROM
	REQUEST R
	LEFT OUTER JOIN ELIG_QUAL EQ ON EQ.REQ_ID = R.REQ_ID

	LEFT OUTER JOIN ADMIN_CODES LU_AC ON LU_AC.AC_ADMIN_CD = EQ.ADMIN_CD
	LEFT OUTER JOIN TBL_LOOKUP LU_RT ON LU_RT.TBL_ID = EQ.RT_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_CT ON LU_CT.TBL_ID = EQ.CT_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_AT ON LU_AT.TBL_ID = EQ.AT_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_VT ON LU_VT.TBL_ID = EQ.VT_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_SAT ON LU_SAT.TBL_ID = EQ.SAT_ID
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMSO ON LU_MEMSO.MEMBERID = EQ.SO_ID
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMXO ON LU_MEMXO.MEMBERID = EQ.XO_ID
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMHL ON LU_MEMHL.MEMBERID = EQ.HRL_ID
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMSS ON LU_MEMSS.MEMBERID = EQ.SS_ID
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMCS ON LU_MEMCS.MEMBERID = EQ.CS_ID

	LEFT OUTER JOIN TBL_LOOKUP LU_PYPL ON LU_PYPL.TBL_ID = EQ.PAY_PLAN_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_MO ON LU_MO.TBL_ID = EQ.MED_OFFICERS_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_SUP ON LU_SUP.TBL_ID = EQ.SUPERVISORY
	LEFT OUTER JOIN LOCATION LU_LOC ON LU_LOC.LOC_ID = EQ.LOCATION
	LEFT OUTER JOIN BIZFLOW.MEMBER LU_MEMRS ON LU_MEMRS.MEMBERID = EQ.REPORT_SUPERVISOR
	LEFT OUTER JOIN TBL_LOOKUP LU_ADT ON LU_ADT.TBL_ID = EQ.TA_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_WSCHD ON LU_WSCHD.TBL_ID = EQ.WORK_SCHED_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_SEC ON LU_SEC.TBL_ID = EQ.SEC_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_FNTP ON LU_FNTP.TBL_ID = EQ.CE_FINANCIAL_TYPE_ID
	LEFT OUTER JOIN TBL_LOOKUP LU_SD ON LU_SD.TBL_ID = EQ.SEL_DETERM
;

/
