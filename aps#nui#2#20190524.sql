/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [apsweb2].[dbo].[APS_DOC_CHKLST_CRITERIA]
WHERE DocumentCheckListId IN (2,3) AND ProductType = 'RL';