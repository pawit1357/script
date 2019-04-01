create view vw_m_sla as (
---------- # NON-FU # ----------
-- #Standard Form# (ไม่มีทีม Form)	
select * from (
select 'non-fu' as typ1,'Standard Form' as typ2,x._DATE,x._TYP,count(x._TYP) as _VAL from (
select MONTH(CreateDatetime) _DATE,--TxnId,
(case when DATEDIFF(Hour,min(CreateDatetime),max(CreateDatetime)) >3 then 'MISS SLA' else 'SLA' end) _TYP
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
		and lGWorkFlow.LGTeam in ('LG Branch','LG ECU','LG Follow Up','LG Setup','LG Issue','LG Confirm','LG Cancel','LG Vault')
		)
group by MONTH(CreateDatetime),TxnId
) x group by x._DATE,x._TYP
) tt 
-- #Non-Standard Form# (ไม่มีทีม Form)	
union
select * from (
select 'non-fu' as typ1,'Non-Standard Form' as typ2,x._DATE,x._TYP,count(x._TYP) as _VAL from (
select MONTH(CreateDatetime) _DATE,--TxnId,
(case when DATEDIFF(Hour,min(CreateDatetime),max(CreateDatetime)) >3 then 'MISS SLA' else 'SLA' end) _TYP
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
		and lGWorkFlow.LGTeam in ('LG Branch','LG ECU','LG Follow Up','LG Form','LG Setup','LG Issue','LG Confirm','LG Cancel','LG Vault')
		)
group by MONTH(CreateDatetime),TxnId
) x group by x._DATE,x._TYP
) tt 
---------- # FU # ----------
-- #Standard Form# (ไม่มีทีม Form)	
union
select * from (
select 'fu' as typ1,'Standard Form' as typ2,x._DATE,x._TYP,count(x._TYP) as _VAL from (
select MONTH(CreateDatetime) _DATE,--TxnId,
(case when DATEDIFF(Hour,min(CreateDatetime),max(CreateDatetime)) >3 then 'MISS SLA' else 'SLA' end) _TYP
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
		and lGWorkFlow.LGTeam in ('LG Branch','LG ECU','LG Follow Up','LG Setup','LG Issue','LG Confirm','LG Cancel','LG Vault')
		)
group by MONTH(CreateDatetime),TxnId
) x group by x._DATE,x._TYP
) tt 
-- #Non-Standard Form# (ไม่มีทีม Form)	
union
select * from (
select 'fu' as typ1,'Non-Standard Form' as typ2,x._DATE,x._TYP,count(x._TYP) as _VAL from (
select MONTH(CreateDatetime) _DATE,--TxnId,
(case when DATEDIFF(Hour,min(CreateDatetime),max(CreateDatetime)) >3 then 'MISS SLA' else 'SLA' end) _TYP
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
		and lGWorkFlow.LGTeam in ('LG Branch','LG ECU','LG Follow Up','LG Form','LG Setup','LG Issue','LG Confirm','LG Cancel','LG Vault')
		)
group by MONTH(CreateDatetime),TxnId
) x group by x._DATE,x._TYP
) tt 
)