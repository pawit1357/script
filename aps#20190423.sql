-- 1)
select PRODUCT_TYPE from APS_APPL_MASTER where APPL_ID='';
-- 2)
select CA2_RCMND_CARD_TYPE_CODE from APS_APPL_APPROVAL_MEMO where APPL_ID='';

-- 3)
select * from APS_MAP_CL_PROD_ORG where PRODUCT_TYPE_CODE='' and CARD_TYPE_CODE=''

