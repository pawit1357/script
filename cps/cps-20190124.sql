/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [digitalsm_cpssit].[dbo].[M_LGStock];
-- select * from [dbo].[M_LGStockControl];
select LGStockNo,Printed,* from [dbo].[TxnLG] where TxnID in ('CPSLG190100002','CPSLG190100006');

-- update TxnLG set LGStockNo=null,Printed=null,PrintedByUser=null,PrintedDate=null where TxnID in ('CPSLG190100002','CPSLG190100006');
-- delete from M_LGStock where Branch='0620' and LGStockNo='30021';


SELECT  FROM [digitalsm_cpssit].[dbo].[M_LGStock]