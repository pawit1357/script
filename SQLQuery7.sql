/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [APPL_ID]
      ,[USER_ID]
      ,[USER_NAME]
      ,[STATUS]
      ,[STATUS_DATE]
      ,[MEMO]
      ,[UPDATE_BY]
      ,[CREATE_DATE]
      ,[UPDATE_DATE]
  FROM [apsweb1].[dbo].[APS_APP_INQUIRY_HISTORY] WHERE APPL_ID='C610000165' 