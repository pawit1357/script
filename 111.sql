select * from [dbo].[APS_APPL_MASTER] where APPL_STATUS=15 and GEN_CLK_FILE_DATE is null;

-- select * from [dbo].[APS_APPL_MASTER] where APPL_STATUS=15 order by UPDATE_DATE desc;

-- update [dbo].[APS_APPL_MASTER] set GEN_CLK_FILE_DATE = null where APPL_ID in ('C620000119','C620000117')