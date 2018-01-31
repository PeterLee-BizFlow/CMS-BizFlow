
INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (721, 0, 'DisqualificationReason', 'NOT_SPECIAL_EXPR', 'The candidate does not meet the specialized experience required for this position.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (722, 0, 'DisqualificationReason', 'NOT_SPECIAL_EXPR_LENGTH', 'The candidate does not possess the length of specialized experience required for this position.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (723, 0, 'DisqualificationReason', 'NOT_GENERAL_EXPR', 'The candidate does not meet the general experience required for this position.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (724, 0, 'DisqualificationReason', 'NOT_EDUCATION_REQ', 'The candidate does not meet the education requirement(s) for this position.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (725, 0, 'DisqualificationReason', 'NOT_MET_SKILL', 'The candidate''s application does not demonstrate having met the typing skills requirement of this position.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO HHS_CMS_HR.TBL_LOOKUP (TBL_ID, TBL_PARENT_ID, TBL_LTYPE, TBL_NAME, TBL_LABEL, TBL_ACTIVE, TBL_MANDATORY, TBL_EFFECTIVE_DT, TBL_EXPIRATION_DT)
VALUES (726, 0, 'DisqualificationReason', 'NOT_QUAL_RESUME', 'Unable to determine candidate qualifications based on the resume provided.', '1', 'N', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2050-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));


COMMIT;
