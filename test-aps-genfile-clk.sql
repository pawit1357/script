select * from APS_APPL_MASTER
WHERE APPL_STATUS=15
AND GEN_CLK_FILE_DATE IS NULL
order by GEN_CLK_FILE_DATE desc;

--UPDATE APS_APPL_MASTER SET GEN_CLK_FILE_DATE=CAST('2018-08-11' AS DATETIME) WHERE APPL_ID='C610000184';

--SELECT GEN_CLK_FILE_DATE,APPL_STATUS,* FROM APS_APPL_MASTER WHERE APPL_ID='C610000176';

update APS_APPL_MASTER set GEN_CLK_FILE_DATE=null where APPL_ID in (
--'C610000184'
-- XXXXXXXX-2018-08-01-XXXXXXX
--'C610000176',
--'R610000047',
--'R610000048',
--'S610000080',
--'S610000083',
-- XXXXXXXX-2018-08-02-XXXXXXX
--'C610000182',
--'C610000184',
--'C610000186',
--'R610000049',
--'R610000050',
--'S610000081',
--'S610000084',
--'S610000085',
--'S610000088'
-- XXXXXXXX-2018-08-07-XXXXXXX
--'C610000176',
--'C610000182',
--'C610000184',
--'C610000186',
--'R610000047',
--'R610000048',
--'R610000049',
--'R610000050',
--'S610000080',
--'S610000081',
--'S610000084',
--'S610000085',
--'S610000088'
-- XXXXX-2018-08-08-XXXXXX
--'C610000176',
--'C610000182',
--'C610000184',
--'C610000186',
--'R610000047',
--'R610000048',
--'R610000049',
--'R610000050',
--'S610000080',
--'S610000081',
--'S610000084',
--'S610000085',
--'S610000088',
--'S610000089',
--'S610000090'
-- XXXXX-2018-08-08-XXXXXX
--'S610000089' ,
--'S610000090'
--'C610000176'
-- XXXXX-2018-08-08-XXXXXX
'C610000102',
'C610000064',
'C610000104',
'C610000098',
'C610000105'
);


--update APS_APPL_MASTER set GEN_CLK_FILE_DATE=null where APPL_ID in ('S610000081');


--select CA1_APPL_RESULT_CODE,CA2_APPL_RESULT_CODE,* from APS_APPL_APPROVAL_MEMO where APPL_ID in ('S610000196')
--C610000141


--select * from [dbo].[APS_APPL_PROFILE] where CID='11909800889558';



--select INCOME_TO_CALCULATE  from APS_APPL_INCOME where APPL_ID='C610000151'

--
select * from APS_APPL_PROFILE where APPL_ID='S610000089';

select * from APS_APPL_APPROVAL_MEMO where APPL_ID='S610000089';


select MAILING_ADDRESS_CODE,CARD_NUMBER,* from APS_APPL_MASTER where APPL_ID='C610000184';
select CARDNMBR, ACCT1NMBR,* from APS_CL_PLASTIC where  CARDNMBR ='vOQiJ24H+JsS26RPyWeVHt0YWuBuYAuC'
select CUSTNMBR,USERCODE,CYCLE,* from APS_CL_ACCOUNT where CARDNMBR='0eizAyw6EIwi12pOnlXEfik4YltUbBX8';

---

SELECT * FROM [apsweb2].[dbo].[APS_BILLING_CYCLE_CONFIG] where PRODUCT_TYPE_CODE='CC' and CARD_TYPE_CODE='301' and BORROWER_TYPE='S';



-- ����Ѻ��� CA2 ��ࡳ��Ԩ�ó�����
  --update [APS_APPL_MASTER] set APPL_STATUS='5',GEN_CLK_FILE_DATE=null  where APPL_ID='S610000083';

 select a.appl_id,a.TRANSACTION_FLAG,a.BORROWER_TYPE,a.cid,b.*
from   apsweb2.dbo.aps_appl_profile a,apsweb2.dbo.aps_cl_main_customer b
where  a.CID  = b.IC
and    a.BORROWER_TYPE = 'S'
and   appl_id in (
'S610000089')
