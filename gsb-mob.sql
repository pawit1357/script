-- select * from mob_list_district where mob_list_district.PROVINCE_CODE=92;
select * from dbo.MOB_LIST_SUBDISTRICT where MOB_LIST_SUBDISTRICT.PROVINCE_CODE=92 and MOB_LIST_SUBDISTRICT.DISTRICT_CODE=4;

select * from dbo.MOB_PARAMETER_GROUP;
select * from dbo.MOB_PARAMETER_LIST where MOB_PARAMETER_LIST.PARAM_GROUP_ID=3;



ALTER TABLE dbo.mob_ ALTER COLUMN merchant_document_id varchar(15);

ALTER TABLE dbo.mob_memo_history ALTER COLUMN merchant_document_id varchar(15);

ALTER TABLE dbo.mob_merchant_master ALTER COLUMN merchant_document_id varchar(15);


--

 SELECT * FROM MOB_MERCHANT_MASTER where MERCHANT_DOCUMENT_ID='E10601811270079' order by MOB_MERCHANT_MASTER.MERCHANT_DOCUMENT_ID desc;
 
 SELECT * FROM MOB_MEMO_HISTORY where MERCHANT_DOCUMENT_ID='E10971811220005';
 SELECT * FROM MOB_MERCHANT_ACCOUNT where MERCHANT_DOCUMENT_ID='E10971811220004';
 SELECT * FROM MOB_MERCHANT_ADDRESS where MERCHANT_DOCUMENT_ID='E10971811220004';??
 SELECT * FROM MOB_MERCHANT_BIZ where MERCHANT_DOCUMENT_ID='E10971811220004';
 SELECT * FROM MOB_MERCHANT_EDC_CHANNEL where MERCHANT_DOCUMENT_ID='E10971811220004';
 select * from MOB_EDC_ADDRESS where MERCHANT_DOCUMENT_ID='E10971811220004';??
 SELECT * FROM MOB_MERCHANT_MDR where MERCHANT_DOCUMENT_ID='E10971811220004';
 SELECT * FROM MOB_MERCHANT_PORTAL where MERCHANT_DOCUMENT_ID='E10971811220004';
 SELECT * FROM MOB_DOCUMENT_CHECKLIST_TRN where MERCHANT_DOCUMENT_ID='E10601811270079';
 SELECT * FROM MOB_MERCHANT_CA WHERE MERCHANT_DOCUMENT_ID='E10601811240006';
 
 


--
SELECT * FROM MOB_USER;
SELECT * FROM MOB_USER_TOKEN;
SELECT * FROM MOB_MMC_MASTER;
---

delete FROM MOB_MERCHANT_MASTER where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MEMO_HISTORY where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_ACCOUNT where STER.MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_ADDRESS where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_BIZ where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_EDC_CHANNEL where MERCHANT_DOCUMENT_ID='E10971811220004';
delete from MOB_EDC_ADDRESS where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_MDR where TER.MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_MERCHANT_PORTAL where MERCHANT_DOCUMENT_ID='E10971811220004';
delete FROM MOB_DOCUMENT_CHECKLIST_TRN where MERCHANT_DOCUMENT_ID='E10971811220004';












