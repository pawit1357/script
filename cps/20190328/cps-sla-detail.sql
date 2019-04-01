select 
txnLG.TxnID,
lGWorkFlow.LGTeam,
(case 
when lGWorkFlow.LGTeam ='LG Branch' then ''
when lGWorkFlow.LGTeam ='LG ECU' then (select SLA_ECU from LG_SLA_Config)
when lGWorkFlow.LGTeam ='LG Follow Up' then (select SLA_FU from LG_SLA_Config)
when lGWorkFlow.LGTeam ='LG Form' then (select SLA_FORM from LG_SLA_Config)
when lGWorkFlow.LGTeam ='LG Setup' then ''
when lGWorkFlow.LGTeam ='LG Issue' then (select SLA_ISSUE from LG_SLA_Config)
when lGWorkFlow.LGTeam ='LG Confirm' then ''
when lGWorkFlow.LGTeam ='LG Cancel' then ''
when lGWorkFlow.LGTeam ='LG Vault' then ''
else'' end) as SLA,
(case 
when lGWorkFlow.Status in (2,3,4) then DATEDIFF(MINUTE, lGWorkFlow.DateTeamAcpt, GETDATE())
when lGWorkFlow.Status in (5) then DATEDIFF(MINUTE,lGWorkFlow.Dateentry, lGWorkFlow.DateTeamAcpt)
else ''
end) as remainMinute,
lGWorkFlow.Status
from LGWorkFlow lGWorkFlow 
left join TxnLG txnLG on txnLG.TxnId = lGWorkFlow.txnID 
where txnLG.TxnID='CPSLG190300120';


select SLA from LG_SLA_Config;


--select * from LGWorkFlow lGWorkFlow where lGWorkFlow.TxnID='CPSLG190300120';