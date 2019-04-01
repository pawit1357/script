SELECT 
--M.REGISTER_TYPE,
--M.PRODUCT_TYPE,
--P.BORROWER_TYPE,
--P.TRANSACTION_FLAG,
(CASE WHEN INC.INCOME_TO_CALCULATE is NULL THEN 
	(CASE 
		WHEN PDPG.PARAM_REL_CODE = '01' THEN INC.FINAL_MNTH_INC_AMT 
		WHEN PDPG.PARAM_REL_CODE = '02' THEN INC.DEP_REF_AMT
		ELSE INC.DEP_PLEDGE_AMT 
	END)
ELSE
	(CASE 
		WHEN PDPG.PARAM_REL_CODE = '01' THEN INC.INCOME_TO_CALCULATE
		WHEN PDPG.PARAM_REL_CODE = '02' THEN INC.DEP_REF_AMT
		ELSE INC.DEP_PLEDGE_AMT 
	END) 
END) AS INC_AMT,
(
	CASE 
	WHEN M.REGISTER_TYPE IN (1,2) THEN 
	(
		CASE WHEN M.BILLING_CUST_TYPE IS NULL THEN 0 
		ELSE 
		(
			CASE 
			WHEN P.SUP_CARD_ORDER = 0 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 1 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP1_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 2 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP2_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 3 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP3_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 4 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP4_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			END
		)
		END
	)
	WHEN M.REGISTER_TYPE = 3 THEN 
	(
		CASE WHEN ACCOUNT.USERCODE IS NULL THEN 0 
		ELSE 
		(
			CASE 
			WHEN P.SUP_CARD_ORDER = 0 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 1 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP1_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 2 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP2_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 3 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP3_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			WHEN P.SUP_CARD_ORDER = 4 THEN (CASE WHEN ISNULL(APPROVAL_MEMO.SUP4_CA2_APPL_RESULT_CODE,0) IN (2,5) THEN 1 ELSE 0 END)
			END
		)
		END
	)
END
) AS GEN_STATUS,
-- XXXXXX-BILLING_CYCLE-XXXXXX
(CASE 
	WHEN M.REGISTER_TYPE = 3 THEN PLASTIC.CYCLE 
	ELSE (
		CASE 
			WHEN M.PRODUCT_TYPE ='CC' THEN 
			(
			CASE 
				WHEN P.BORROWER_TYPE = 'P' THEN 
				(
				CASE 
					WHEN P.TRANSACTION_FLAG = 'A' THEN '-1' 
					ELSE ISNULL(MAIN_CUST.BILLINGCYC,31) 
				END
				)
			ELSE '0' END
			)
		ELSE 
		(
			SELECT BILLING_DAY FROM APS_BILLING_CYCLE_CONFIG 
			WHERE BILLING_CUST_TYPE=M.BILLING_CUST_TYPE 
			AND PRODUCT_TYPE_CODE=M.PRODUCT_TYPE 
			AND BORROWER_TYPE=P.BORROWER_TYPE 
			AND CARD_TYPE_CODE = APPROVAL_MEMO.CA2_RCMND_CARD_TYPE_CODE
		)
		END
	)
END) AS BILLING_CYCL,
(CASE 
	WHEN P.SUP_CARD_ORDER = 0 THEN ISNULL(APPROVAL_MEMO.CA2_CARD_LIMIT_AMT,0)
	WHEN P.SUP_CARD_ORDER = 1 THEN ISNULL(APPROVAL_MEMO.SUP1_CA2_CARD_LIMIT_AMT,0)
	WHEN P.SUP_CARD_ORDER = 2 THEN ISNULL(APPROVAL_MEMO.SUP1_CA2_CARD_LIMIT_AMT,0)
	WHEN P.SUP_CARD_ORDER = 3 THEN ISNULL(APPROVAL_MEMO.SUP3_CA2_CARD_LIMIT_AMT,0)
	WHEN P.SUP_CARD_ORDER = 4 THEN ISNULL(APPROVAL_MEMO.SUP4_CA2_CARD_LIMIT_AMT,0)
END) AS ca2CardLimitAmt,
-- (PLT) GC1D0036
'D' AS Detailflag,
MAP_CL_PROD_ORG.ORG AS PltOrg,
MAP_CL_PROD_ORG.CARD_TYPE_CODE_CLK  AS PltType,
'#CAL#' AS PltNo,
'A' AS TransactionFlag,
P.BORROWER_TYPE AS Relationship,
P.EMBOSS_MESSAGE_NAME AS EmbosserName1,
'#' AS EmbosserName2,
1 AS CardAction,
1 AS NmbrRequested,
1 AS ActivationCd,


-- XXXXXX-END BILLING_CYCLE-XXXXXX
-- M.BILLING_CUST_TYPE,
--M.APPL_ID,
--M.PRODUCT_TYPE,
--P.BORROWER_TYPE,
--P.SUP_CARD_ORDER,
--P.CID 
FROM APS_APPL_MASTER AS M
LEFT JOIN APS_APPL_PROFILE AS P ON M.APPL_ID = P.APPL_ID
LEFT JOIN APS_APPL_APPROVAL_MEMO AS APPROVAL_MEMO ON M.APPL_ID = APPROVAL_MEMO.APPL_ID
LEFT JOIN APS_CL_PLASTIC AS PLASTIC ON PLASTIC.CARDNMBR = M.CARD_NUMBER
LEFT JOIN APS_CL_ACCOUNT AS ACCOUNT ON PLASTIC.ACCT1NMBR = ACCOUNT.CARDNMBR
LEFT JOIN APS_CL_MAIN_CUSTOMER AS MAIN_CUST ON MAIN_CUST.IC = P.CID AND MAIN_CUST.ORGNBR='001'
LEFT JOIN APS_PARAMETER_LIST AS PDPG WITH (NOLOCK) ON PDPG.PARAM_GROUP_ID = 2 AND PDPG.PARAM_CODE = M.PRODUCT_PROGRAM
LEFT JOIN APS_APPL_INCOME AS INC WITH (NOLOCK) ON INC.APPL_ID = M.APPL_ID
LEFT JOIN APS_MAP_CL_PROD_ORG AS MAP_CL_PROD_ORG ON MAP_CL_PROD_ORG.PRODUCT_TYPE_CODE=M.PRODUCT_TYPE AND CARD_TYPE_CODE=APPROVAL_MEMO.CA2_RCMND_CARD_TYPE_CODE
WHERE M.GEN_CLK_FILE_DATE IS NULL AND M.APPL_STATUS IN (15);


