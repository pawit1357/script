



select  CARDNMBR,ACCT1NMBR,CYCLE,* from [dbo].[APS_CL_PLASTIC] where CARDNMBR=(select CARD_NUMBER from APS_APPL_MASTER where APPL_ID='S610000021');-- billing cycle บัตรหลัก


select CUSTNMBR,* from [dbo].[APS_CL_ACCOUNT] where CARDNMBR='vOQiJ24H+JvHb2uLpQoD25c69ALDdBUo'; -- cust_id ของบัตรหลักใช่ไหม
select * from [dbo].[APS_CL_MAIN_CUSTOMER] where ACCTID='1003909900025454';
select * from [dbo].[APS_APPL_MASTER] where APPL_ID='C590001147';



select * from [dbo].[APS_APPL_STATUS] where APPL_STATUS_GROUP='PENDING'