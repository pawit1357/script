
-- #Standard Form# (ไม่มีทีม Form)	
select * from (
select 'SLA' as _TYP,iMonth as _DATE,count(distinct(TxnID)) as _VAL from (
	select 
		MONTH(LGWorkFlow.Dateentry) as iMonth,
		txnLG.TxnID
		from TxnLG txnLG 
		left join LGWorkFlow lGWorkFlow on txnLG.TxnID = lGWorkFlow.TxnID
		left join FU_Request fuRequest on txnLG.TxnID = fuRequest.TxnID
	where txnLG.TxnStatus = 6
		and txnLG.ObjectiveID in (1,2)
		and (fuRequest.CodeFu is NULL or fuRequest.CodeFu in ('FU1','FU2','FU3'))
		and lGWorkFlow.LGTeam <> ('LG Form')
	group by MONTH(LGWorkFlow.Dateentry),txnLG.TxnID
	having (
			select DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime))
			from [dbo].[Txn_Logs] 
			where TxnID=txnLG.TxnID 
			and (Action like 'Assign Task:%' or Action like '%Send to branch%')
		) < = 3
) x
group by x.iMonth
union
select 'MISS SLA' as _TYP,iMonth as _DATE,count(distinct(TxnID)) as _VAL from (
	select 
		MONTH(LGWorkFlow.Dateentry) as iMonth,
		txnLG.TxnID
		from TxnLG txnLG 
		left join LGWorkFlow lGWorkFlow on txnLG.TxnID = lGWorkFlow.TxnID
		left join FU_Request fuRequest on txnLG.TxnID = fuRequest.TxnID
	where txnLG.TxnStatus = 6
		and txnLG.ObjectiveID in (1,2)
		and (fuRequest.CodeFu is NULL or fuRequest.CodeFu in ('FU1','FU2','FU3'))
		and lGWorkFlow.LGTeam <> ('LG Form')
	group by MONTH(LGWorkFlow.Dateentry),txnLG.TxnID
	having (
			select DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime))
			from [dbo].[Txn_Logs] 
			where TxnID=txnLG.TxnID 
			and (Action like 'Assign Task:%' or Action like '%Send to branch%')
		) > 3
) x
group by x.iMonth
) x 
--pivot (count (_DATE) for _TYP in ([SLA],[MISS SLA])) as AvgIncomePerDay



--PIVOT
--(
-- count(xx._SLA)
-- FOR xx._DATE IN ([1],[2], [3])
--) 

-- #Non-Standard Form# (มีทีม Form)	
--union
--select 'Non-Standard Form' as FRM,'SLA' as _TYP,iMonth as _DATE,count(distinct(TxnID)) as _SLA from (
--	select 
--		MONTH(LGWorkFlow.Dateentry) as iMonth,
--		txnLG.TxnID
--		from TxnLG txnLG 
--		left join LGWorkFlow lGWorkFlow on txnLG.TxnID = lGWorkFlow.TxnID
--		left join FU_Request fuRequest on txnLG.TxnID = fuRequest.TxnID
--	where txnLG.TxnStatus = 6
--		and txnLG.ObjectiveID in (1,2)
--		and (fuRequest.CodeFu is NULL or fuRequest.CodeFu in ('FU1','FU2','FU3'))
--		and lGWorkFlow.LGTeam = ('LG Form')
--	group by MONTH(LGWorkFlow.Dateentry),txnLG.TxnID
--	having (
--			select DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime))
--			from [dbo].[Txn_Logs] 
--			where TxnID=txnLG.TxnID 
--			and (Action like 'Assign Task:%' or Action like '%Send to branch%')
--		) < = 3
--) x
--group by x.iMonth
--union
--select 'Non-Standard Form' as FRM,'MISS SLA' as _TYP,iMonth as _DATE,count(distinct(TxnID)) as _SLA from (
--	select 
--		MONTH(LGWorkFlow.Dateentry) as iMonth,
--		txnLG.TxnID
--		from TxnLG txnLG 
--		left join LGWorkFlow lGWorkFlow on txnLG.TxnID = lGWorkFlow.TxnID
--		left join FU_Request fuRequest on txnLG.TxnID = fuRequest.TxnID
--	where txnLG.TxnStatus = 6
--		and txnLG.ObjectiveID in (1,2)
--		and (fuRequest.CodeFu is NULL or fuRequest.CodeFu in ('FU1','FU2','FU3'))
--		and lGWorkFlow.LGTeam = ('LG Form')
--	group by MONTH(LGWorkFlow.Dateentry),txnLG.TxnID
--	having (
--			select DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime))
--			from [dbo].[Txn_Logs] 
--			where TxnID=txnLG.TxnID 
--			and (Action like 'Assign Task:%' or Action like '%Send to branch%')
--		) < = 3
--) x
--group by x.iMonth











--SELECT DATENAME(month, GETDATE()) AS 'Month Name'

--select * from FU_Request where TxnID='CPSLG190200008';
--order by lGWorkFlow.Dateentry desc;

--select * from Ref_Fu_Code where FuCode in('FU1','FU2','FU3');
--select * from TxnLG where TxnID not in(select TxnID from FU_Request) and TxnStatus=6;
--select * from txn
--select * from SystemTeam;


--select * from [dbo].[Txn_Logs] where TxnID='CPSLG190200029';


--select * from TxnLG where TxnID ='CPSLG190200045';

--select * from LGWorkFlow where TxnID='CPSLG190200006' where Action ;


--select * -- DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime))
--from [dbo].[Txn_Logs] 
--where TxnID='CPSLG190200006' 
--and (Action like 'Assign Task:%' or Action like '%Send to branch%');



select TxnId,
(case when DATEDIFF(Hour,min(CreateDatetime),max(CreateDatetime)) >3 then 'MISS SLA' else 'SLA' end) typ,
DATEDIFF(HOUR,min(CreateDatetime),max(CreateDatetime)) as val
from [dbo].[Txn_Logs] 
where (Action like 'Assign Task:%' or Action like '%Send to branch%') 
and TxnId in (
	select 
		txnLG.TxnID
		from TxnLG txnLG 
		left join LGWorkFlow lGWorkFlow on txnLG.TxnID = lGWorkFlow.TxnID
		left join FU_Request fuRequest on txnLG.TxnID = fuRequest.TxnID
	where txnLG.TxnStatus = 6
		and txnLG.ObjectiveID in (1,2)
		and (fuRequest.CodeFu is NULL or fuRequest.CodeFu in ('FU1','FU2','FU3'))
		and lGWorkFlow.LGTeam <> ('LG Form')
		)
group by TxnId;
