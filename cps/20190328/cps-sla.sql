select TxnID,
DateEntryStart,
CAST( CAST((remainMinute) AS int) / 60 AS varchar) + ':'  + right('0' + CAST(CAST((remainMinute) AS int) % 60 AS varchar(2)),2) remainHHMM,
remainMinute,
StatusDescription,PartyName,
TxnStatus
 from (
select txnLG.TxnID,txnLG.DateEntryStart,
(case when txnLG.TxnStatus = 6 
 then  DATEDIFF(MINUTE,txnLG.DateEntryStart, txnLG.DateEntryEnd)
 else  DATEDIFF(MINUTE, txnLG.DateEntryStart, GETDATE())
 end) remainMinute,

refLGStatus.StatusDescription,txnLG.TxnStatus,txnLG.PartyName
 from TxnLG txnLG
 left join Ref_LGStatus refLGStatus on txnLG.TxnStatus = refLGStatus.StatusNo where txnLG.DateEntryStart is not null
 ) x

