SELECT * FROM APS_APPL_MASTER 
where appl_status=15 
--and register_type='1' 
and APS_APPL_MASTER.GEN_CLK_FILE_DATE is null 
order by appl_id desc;



update [dbo].[APS_RUNNING_CONFIG] set CurrentNumber=187464 where CardTypeCode='201';
update aps_appl_master set aps_appl_master.GEN_CLK_FILE_DATE = null where APPL_ID in('C610000119','C610000347');



--select CA2_RCMND_CARD_TYPE_CODE, APS_APPL_APPROVAL_MEMO.APPL_ID,APS_APPL_APPROVAL_MEMO.CA2_APPL_RESULT_CODE,APS_APPL_APPROVAL_MEMO.SUP1_CA2_APPL_RESULT_CODE 
--from dbo.APS_APPL_APPROVAL_MEMO where APPL_ID in('C610000119','C610000347');
