


select MAILING_ADDRESS_CODE,* from APS_APPL_MASTER where APPL_ID in(
select APPL_ID from [dbo].[APS_APPL_PROFILE] where cid =(
select IC from APS_CL_MAIN_CUSTOMER where ACCTID IN(
select CUSTNMBR from [dbo].[APS_CL_ACCOUNT] 
where CARDNMBR in(
select ACCT1NMBR from [dbo].[APS_CL_PLASTIC] 
where CARDNMBR=(select CARD_NUMBER from APS_APPL_MASTER where APPL_ID='S610000252' and REGISTER_TYPE=3 and APPL_STATUS=15)




))));




select CARD_NUMBER from APS_APPL_MASTER where APPL_ID='S610000252' and REGISTER_TYPE=3 and APPL_STATUS=15

select ACCT1NMBR,USERDATA2,* from [dbo].[APS_CL_PLASTIC] where CARDNMBR='BelRYQgsciy/TDshzplfX4to2VRaY2Y9';