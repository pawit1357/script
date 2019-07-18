--- 1)
select OCName,LGStockNoStart,LGStockNoEnd,ID,LotStatus,Total,Issued,Spoil,(Total-(Issued+Spoil)) as remain,OCCode 
from (

SELECT  
Ref_OCCode.OCName,
M_LGStockControl.LGStockNoStart,
M_LGStockControl.LGStockNoEnd,
M_LGStockControl.ID,
M_LGStockControl.LotStatus,
Ref_OCCode.OCCode,
CAST(M_LGStockControl.LGStockNoEnd as int)-CAST(M_LGStockControl.LGStockNoStart as int)+1 as Total,
(select count(LGStockNo) from [dbo].[M_LGStock] where Branch=M_LGStockControl.Branch and CAST(LGStockNo as int) between  CAST(M_LGStockControl.LGStockNoStart as int) and CAST(M_LGStockControl.LGStockNoEnd as int) and Status='I') as Issued,
(select count(LGStockNo) from [dbo].[M_LGStock] where Branch=M_LGStockControl.Branch and CAST(LGStockNo as int) between  CAST(M_LGStockControl.LGStockNoStart as int) and CAST(M_LGStockControl.LGStockNoEnd as int) and Status IN ('S','C')) as Spoil 
FROM M_LGStockControl 
left join Ref_OCCode on M_LGStockControl.Branch = Ref_OCCode.OCCode 
) x where 1=1 and OCCode='0007'


--- 2)

select 
M_LGStock.Branch,
M_LGStock.LGStockNo,
M_LGStock.LGNo,
refOCCode.OCName,
(case when M_LGStock.Status = 'I' then 'Issued' when M_LGStock.Status = 'S' then 'Spoil' when M_LGStock.Status = 'C' then 'Cancel' end) as stockStatus, 
isnull(M_LGStock.Remark, '') as remark, 
isnull(Ref_LGSpoil.SpoilName, '') as spoilName 
from M_LGStock 
left join Ref_LGSpoil on M_LGStock.SpoilID = Ref_LGSpoil.SPoilID 
left join Ref_OCCode refOCCode on refOCCode.OCCode = M_LGStock.Branch 
where 1=1 and M_LGStock.LGStockNo >=00001 and M_LGStock.LGStockNo <=00100 
and M_LGStock.Branch='0007'


select * from M_LGStockControl where Branch='0007';
select * from [M_LGStock]



select * from [dbo].[M_LGStock] where Branch='0007' and LGStockNo between  CAST('00001' as int) and CAST('00100' as int) and Status='I'