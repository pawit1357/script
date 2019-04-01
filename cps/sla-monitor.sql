select txnLG.TxnID,txnLG.DateEntryStart,
(case when txnLG.TxnStatus = 6 
then CONVERT(varchar(5), DATEADD(minute, DATEDIFF(MINUTE, txnLG.DateEntryStart,txnLG.DateEntryEnd), 0), 114)
else CONVERT(varchar(5), DATEADD(minute, DATEDIFF(MINUTE, txnLG.DateEntryStart,GETDATE()), 0), 114) 
end) remainHHMM,
(case when txnLG.TxnStatus = 6 
then DATEDIFF(MINUTE, txnLG.DateEntryStart,txnLG.DateEntryEnd)
else DATEDIFF(MINUTE, txnLG.DateEntryStart,GETDATE())
end) remainMinute,
refLGStatus.StatusDescription,txnLG.TxnStatus
from TxnLG txnLG
left join Ref_LGStatus refLGStatus on txnLG.TxnStatus = refLGStatus.StatusNo;







select txnLG.TxnID,lGWorkFlow.LGTeam,'' as SLA,'' as useTime,lGWorkFlow.Status from LGWorkFlow lGWorkFlow left join TxnLG txnLG on txnLG.TxnId = lGWorkFlow.txnID

--select datediff(MINUTE,'2019-03-17 20:05:38.673', '2019-03-17 20:06:00.563');