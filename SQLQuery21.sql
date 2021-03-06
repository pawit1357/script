USE [apsweb1]
GO

/****** Object:  View [dbo].[VW_APS_RPT_DLY_DTL_APIN]    Script Date: 8/7/2018 4:58:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER VIEW [dbo].[VW_APS_RPT_DLY_DTL_APIN]
AS
--CREATE BY:	THANYARAT A.
--CREATE DATE:	THANYARAT A. 05/10/2017 CHG170450 Improvement performance for Daily Report
--UPDATE DATE:	TEERASIN S.  26/07/2018 Fix Issue Sit
--UPDATE DATE:	TEERASIN S.  07/08/2018 Fix Issue Sit
SELECT  TOP (100) PERCENT 
MST.SALES_CHANNEL
		,MST.APPL_ID
		,PRF.CID
		,PRF.FIRST_NAME_TH + ' ' + PRF.LAST_NAME_TH AS CustomerName
		,V1.PARAM_DESC1 AS ProductType
		,V2.PARAM_DESC2 AS ProductProgram
		,V3.PARAM_DESC2 AS ProgramType
        ,MST.CAMPAIGN_CODE
		,CASE WHEN MST.APPL_STATUS = 15 THEN COALESCE (CT2.CARD_TYPE_NAME, '') ELSE COALESCE (CT.CARD_TYPE_NAME, '') END AS CardType
		--,V4.PARAM_DESC2 AS ApplicationType
		,CASE 
			WHEN MST.REGISTER_TYPE = 2 AND PRF.BORROWER_TYPE = 'S'
				THEN SUBSTRING(V4.PARAM_DESC2,CHARINDEX('+',V4.PARAM_DESC2,0)+2,LEN(V4.PARAM_DESC2)) 
			ELSE V4.PARAM_DESC2 
			END AS ApplicationType
		,CONVERT(CHAR(10),DATEADD(YEAR,543,MST.CREATE_DATE),103) AS CREATE_DATE
		,UC.CREATE_BY_NAME
		,APS.APPL_STATUS_NAME AS ApplicationStatusName
		,Us.first_name + ' ' + US.last_name  AS UserName
		,US.authority_name AS User_role
		,V5.PARAM_DESC2 AS Channel
		,MST.SALES_CODE ,MST.SALES_NAME
		,MST.GL_CODE ,MST.GL_NAME
		,MST.COST_CENTER ,MST.UNIT_OFFICER_NAME ,MST.UNIT_OFFICER_PHONE
		,MST.BRANCH_CODE ,MST.BRANCH_NAME
		,MST.ZONE_CODE ,MST.ZONE_NAME
		,MST.REGION_CODE ,MST.REGION_NAME
		,PRF.LEGAL_MOBILE_NUMBER
		,MST.SALES_CHANNEL
FROM	dbo.APS_APPL_MASTER AS MST WITH (NOLOCK) 
		LEFT OUTER JOIN dbo.APS_APPL_PROFILE AS PRF WITH (NOLOCK) ON MST.APPL_ID = PRF.APPL_ID 
		LEFT OUTER JOIN dbo.APS_APPL_STATUS AS APS WITH (NOLOCK) ON MST.APPL_STATUS = APS.APPL_STATUS 
		LEFT OUTER JOIN dbo.APS_APPL_APPROVAL_MEMO AS APM WITH (NOLOCK) ON PRF.APPL_ID = APM.APPL_ID 
		LEFT OUTER JOIN dbo.VW_PRODUCT_TYPE AS V1 WITH (NOLOCK) ON V1.PARAM_CODE = MST.PRODUCT_TYPE 
		LEFT OUTER JOIN dbo.VW_PRODUCT_PROGRAM AS V2 WITH (NOLOCK) ON V2.PARAM_CODE = MST.PRODUCT_PROGRAM 
		LEFT OUTER JOIN dbo.VW_PROGRAM_TYPE AS V3 WITH (NOLOCK) ON V3.l2_PARAM_CODE = MST.PRODUCT_PROGRAM 
		LEFT OUTER JOIN dbo.VW_APPLICATION_TYPE AS V4 WITH (NOLOCK) ON V4.PARAM_CODE = MST.REGISTER_TYPE 
		LEFT OUTER JOIN dbo.VW_CHANNEL AS V5 WITH (NOLOCK) ON V5.PARAM_CODE = MST.SALES_CHANNEL 
		LEFT OUTER JOIN dbo.APS_MAP_CL_PROD_ORG AS CT WITH (NOLOCK) ON CT.CARD_TYPE_CODE = MST.CARD_TYPE 
		LEFT OUTER JOIN dbo.APS_MAP_CL_PROD_ORG AS CT2 WITH (NOLOCK) ON CT2.CARD_TYPE_CODE = APM.CA2_RCMND_CARD_TYPE_CODE 
		LEFT OUTER JOIN (SELECT login,first_name,last_name,
                                (SELECT TOP (1) authority_name
                                 FROM   dbo.jhi_user_authority WITH (NOLOCK) 
                                 WHERE  (user_id = dbo.jhi_user.id)) AS authority_name
                         FROM    dbo.jhi_user) AS US ON US.login = MST.UPDATE_BY 
        LEFT OUTER JOIN (SELECT login, first_name+' '+last_name as CREATE_BY_NAME,
                                (SELECT TOP (1) authority_name
                                 FROM   dbo.jhi_user_authority WITH (NOLOCK) 
                                 WHERE  (user_id = dbo.jhi_user.id)) AS CREATE_BY_ROLE
                         FROM    dbo.jhi_user) AS UC ON UC.login = MST.CREATE_BY
--WHERE	CONVERT(DATE,MST.CREATE_DATE,111) = CONVERT(DATE,GETDATE(),111)
WHERE	CONVERT(DATE,MST.CREATE_DATE,111) >= DATEADD(dd,-365,GETDATE())
AND (MST.REGISTER_TYPE IN ('1','2') 
	OR (MST.REGISTER_TYPE = '3' AND PRF.BORROWER_TYPE = 'S')
	)
ORDER BY MST.APPL_ID,PRF.SUP_CARD_ORDER
GO


