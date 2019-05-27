select ROW_NUMBER() OVER(ORDER BY p.APPL_ID, p.SUP_CARD_ORDER  DESC) AS ROW_ID 
			 ,p.CID, p.APPL_ID
			 , m.PRODUCT_TYPE as ProductType 
			 ,m.PRODUCT_PROGRAM as ProductProgram
			 , case m.REGISTER_TYPE when 3 then (case when c.RCMND_CARD_TYPE  IS NULL then m.CARD_TYPE else  c.RCMND_CARD_TYPE end)  else  c.RCMND_CARD_TYPE end as CardType 	 
			 ,p.BORROWER_TYPE as BorrowerType, m.CAMPAIGN_CODE as CampaignCode 
			 ,m.EMPLOYMENT_STATUS as EmploymentStatus, p.NATIONALITY_1 as A001_Nationality 
			 ,p.AGE as A002_Age, w.TIME_IN_JOB as A003_TimeInJob 
			 ,CASE w.EMPLOMENT_STATUS_CODE WHEN '2' then w.ESTIMATE_NET_INCOME ELSE isnull(i.FINAL_MNTH_INC_AMT, w.ESTIMATE_INCOME_PER_MONTH) end as A004_Income 
			 ,CASE pg.PARAM_REL_CODE  	WHEN '02' THEN i.DEP_REF_TYPE_ID  
				WHEN '03' THEN i.DEP_PLEDGE_TYPE_ID  	END AS A005_DepRefType  ,CASE pg.PARAM_REL_CODE  
				WHEN '02' THEN i.DEP_REF_AMT 	WHEN '03' THEN i.DEP_PLEDGE_AMT 	END AS A005_DepRefAmt 
			 ,c.EXIST_DTI_PERC as A006_ExistingDTI  ,c.TOT_DTI_PERC as A007_TotalDTI 
			 ,CASE p.BORROWER_TYPE WHEN 'P' then c.RCMND_CR_LIMIT_AMT ELSE c.RCMND_CARD_LIMIT_AMT END as A008_CreditLimit 
			 ,c.CR_LIMIT_INC_GMI as A009_CreditLimitGMI  ,c.CR_LIMIT_DEP_PERC as A010_CreditLimitDepRef 
			 ,c.TOT_EXPO_LIMIT_AMT as A011_TotalExposureLimitAmt 
			 ,c.TOT_EXPO_LIMIT_GMI as A012_TotalExposureLimitGMT  ,p.MAX_MAIN_CARD as A013_MaxMainCard 
			 ,p.MAX_SUP_CARD as A013_MaxSupCard   ,m.DUP_MAIN_CARD_TYPE as A014_DupCardType 
			 ,p.AML as A015_AML  ,p.KYC_RISK_LEVEL as A016_KYC  ,i.SLL_FLAG as A017_SLL 
			 ,e.WRITE_OFF_FLAG as A018_WriteOff  
			 --,[dbo].CheckFraud(p.APPL_ID,p.CID) as A022_Fraud 
			 ,i.BANKRUPTCY_FLAG as A023_Bankruptcy  ,n.NCB_ACCT_STATUS as A025_NCBAcctStatus 
			 ,n.NCB_ACCT_TYPE as A026_NCBAcctType  ,n.NCB_OPEN_DATE_MONTH as A026_NCBOpenDateMonth 
			 ,n.NCB_TDR_DATE_MONTH as A026_NCBTDRDateMonth 
			 ,n.NCB_OVERDUE_IN_CURRNT_MONTH as A027_NCBOverdueCurrMonth 
			 ,n.NCB_DLQ_IN_6_MONTHS as A028_NCBDlq6m  ,n.NCB_DLQ_IN_12_MONTHS as A029_NCBDlq12m 
			 ,n.NCB_DLQ_IN_24_MONTHS as A030_NCBDlq24m  ,n.NCB_OVERLIMIT_IN_6_MONTHS as A031_NCBOverLimit6m 
			 , m.OCCUPATION,w.ESTIMATE_NET_INCOME,w.ESTIMATE_INCOME_PER_MONTH,i.[DEP_REF_AMT]--,i.INCOME_TO_CALCULATE
			 ,a.ASCORE_GRADE as A033_AScoreGrade, ncbs.SCORE_GRADE as A032_NCBScoreGrade, (
				SELECT TOP 1 STATUS FROM [dbo].[APS_NCB_DATA] WHERE [dbo].[APS_NCB_DATA].APPL_ID = p.APPL_ID AND [dbo].[APS_NCB_DATA].ID_NUMBER = p.CID ORDER BY ID DESC 
			) as NCB_STATUS 
			 ,i.SALARY_AMT as TotalMonthlyIncome 
			 ,coalesce(ncbl.USAGE_LIMIT_OF_REVOLVING,0) as usageLimitOfRevolving 
			 ,coalesce(ncbl.CONSECUTIVE_OVER_LIMIT,0) as consecutiveOverLimit 
			 from [dbo].[APS_APPL_PROFILE] p WITH (NOLOCK) 
			 left outer join [dbo].[APS_APPL_MASTER] m WITH (NOLOCK) on m.APPL_ID = p.APPL_ID 
			 left outer join [dbo].[APS_APP_DET_WORKING] w WITH (NOLOCK) on w.APPL_ID = p.APPL_ID and w.CID = p.CID 
			 left outer join [dbo].[APS_APPL_INCOME] i WITH (NOLOCK) on i.APPL_ID = p.APPL_ID 
			 left outer join [dbo].[APS_APPL_SYS_CAL] c WITH (NOLOCK) on c.APPL_ID = p.APPL_ID and c.CID = p.CID 
			 left outer join [dbo].[APS_APPL_EXPO_SUM] e WITH (NOLOCK) on e.APPL_ID = p.APPL_ID 
			 left outer join [dbo].[APS_APPL_NCB] n WITH (NOLOCK) on n.APPL_ID = p.APPL_ID 
			 left outer join [dbo].[APS_PARAMETER_LIST] pg WITH (NOLOCK) on pg.PARAM_GROUP_ID = 2 and pg.PARAM_CODE = m.PRODUCT_PROGRAM 
			 left outer join [dbo].[APS_ASCORE_RESULT] a WITH (NOLOCK) on a.APPL_ID = p.APPL_ID and a.CID = p.CID 
			 left outer join [dbo].[APS_NCB_SCORE] ncbs WITH (NOLOCK) on ncbs.APPL_ID = p.APPL_ID 
			 left outer join [dbo].[APS_APPL_NCB] ncbl WITH (NOLOCK) on ncbl.APPL_ID = p.APPL_ID 
			 where M.APPL_STATUS in (21) and p.APPL_ID = 'R620167729' and p.CID = '1401000024576' order by BORROWER_TYPE

-- 
select * from APS_APPL_MASTER where appl_id in ('R620167729','R620168724');
select * from aps_appl_profile where appl_id in ('R620167729','R620168724');


select * from APS_PROCESS_RULE_RESULT where AppId='R620167729' and CitizendId='1401000024576';
select * from APS_PROCESS_RULE_RESULT_PRE where AppId='R620167729' and CitizenId='1401000024576';



select * from APS_PARAMETER_LIST where PARAM_GROUP_ID=1 and PARAM_CODE='RL';
select * from APS_PARAMETER_LIST where PARAM_GROUP_ID=2 and PARAM_CODE='N01';


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [VW_APS_SRC_CRITERIA] where APPL_ID='R620167729'; -- and cid='1401000024576';



select * from [dbo].[APS_CAMPAIGN_CONFIG];

select * from [dbo].[APS_APPL_SYS_CAL] where appl_id='R620167729' and cid='1401000024576';


R620000016
apsdr04