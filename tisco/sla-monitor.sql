 select TxnID,(case when (_OverDue - remainMinute) <0 then (_OverDue - remainMinute) else '' end) OverDue,
 DateEntryStart,
 CAST( CAST((remainMinute)AS int) / 60 AS varchar) +':' + right('0' + CAST(CAST((remainMinute)AS int) % 60 AS varchar(2)), 2) remainHHMM,
 remainMinute,
 StatusDescription,
 TxnStatus
 from(
 select txnLG.TxnID, txnLG.DateEntryStart,
 (case when txnLG.TxnStatus = 6
 then  DATEDIFF(MINUTE, txnLG.DateEntryStart, txnLG.DateEntryEnd)
 else  DATEDIFF(MINUTE, txnLG.DateEntryStart, GETDATE())
 end) remainMinute,
 (select top 1 tm from (
 select  
	(case
	 when lGWorkFlow.LGTeam = 'LG ECU' then(select SLA_ECU from LG_SLA_Config)
	 when lGWorkFlow.LGTeam = 'LG Follow Up' then(select SLA_FU from LG_SLA_Config)
	 when lGWorkFlow.LGTeam = 'LG Form' then(select SLA_FORM from LG_SLA_Config)
	 when lGWorkFlow.LGTeam = 'LG Issue' then(select SLA_ISSUE from LG_SLA_Config)
	 else 0
	 end) tm
	 from LGWorkFlow where TxnID = txnLG.TxnID
 ) tmp order by tm desc) _OverDue,
 refLGStatus.StatusDescription,txnLG.TxnStatus
 from TxnLG txnLG
 left join Ref_LGStatus refLGStatus on txnLG.TxnStatus = refLGStatus.StatusNo where txnLG.DateEntryStart is not null and txnLG.ObjectiveID in(1,2,3)
 ) x where 1=1;



 -- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
 
 --select top 1 tm from (
 --select  
	--(case
	-- when lGWorkFlow.LGTeam = 'LG ECU' then(select SLA_ECU from LG_SLA_Config)
	-- when lGWorkFlow.LGTeam = 'LG Follow Up' then(select SLA_FU from LG_SLA_Config)
	-- when lGWorkFlow.LGTeam = 'LG Form' then(select SLA_FORM from LG_SLA_Config)
	-- when lGWorkFlow.LGTeam = 'LG Issue' then(select SLA_ISSUE from LG_SLA_Config)
	-- else 0
	-- end) tm
	-- from LGWorkFlow where TxnID='CPSLG190400004'
 --) tmp order by tm desc
