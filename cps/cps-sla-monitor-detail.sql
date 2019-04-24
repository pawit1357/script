 select
 txnLG.TxnID,
 lGWorkFlow.LGTeam,txnLG.PartyName,
 (case 
 when lGWorkFlow.LGTeam = 'LG Branch' then 0
 when lGWorkFlow.LGTeam = 'LG ECU' then (select SLA_ECU from LG_SLA_Config)
 when lGWorkFlow.LGTeam = 'LG Follow Up' then(select SLA_FU from LG_SLA_Config)
 when lGWorkFlow.LGTeam = 'LG Form' then (select SLA_FORM from LG_SLA_Config)
 when lGWorkFlow.LGTeam = 'LG Setup' then 0
 when lGWorkFlow.LGTeam = 'LG Issue' then (select SLA_ISSUE from LG_SLA_Config)
 when lGWorkFlow.LGTeam = 'LG Confirm' then 0
 when lGWorkFlow.LGTeam = 'LG Cancel' then 0
 when lGWorkFlow.LGTeam = 'LG Vault' then 0
 else'' end) as SLA,
 (case 
 when lGWorkFlow.Status in (2, 3, 4) then DATEDIFF(MINUTE, lGWorkFlow.DateTeamAcpt, GETDATE())
 when lGWorkFlow.Status in (5) then DATEDIFF(MINUTE, lGWorkFlow.Dateentry, lGWorkFlow.DateTeamAcpt)
 else ''
 end) as remainMinute,
 lGWorkFlow.Status,lGWorkFlow.Dateentry, lGWorkFlow.DateTeamAcpt
 from LGWorkFlow lGWorkFlow
 left join TxnLG txnLG on txnLG.TxnId = lGWorkFlow.txnID
 where txnLG.TxnID = 'CPSLG190400006' and TxnLG.ObjectiveID in(1,2,3) ;