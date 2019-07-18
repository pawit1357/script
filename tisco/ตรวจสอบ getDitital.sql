--select * from [dbo].[On_User_Access] order by expire_date desc;
--select * from On_Digital_Library;

select office_code,company_code,user_token,user_name from On_User_Access where user_name in ('DEVSACCMR5','DEVSACADS5');

--update On_User_Access set company_code='10' where user_name='DEVSACCMR5';


--select office_code,company_code from On_User_Access where user_name='DEVSACADS5';
--DEVSACADS5

--select officeCode,companyCode from On_Digital_Library_Office 
--where digital_library_id in (322,317,320,318,198,316,315,195,194,204,299,298,297,296,295,294,293,292,283,265)
--and officeCode='00' 
-- and companyCode='30';


  select master_officeCode,master_companyCode,master_officeName FROM [Tisco_Onsale_SIT].[dbo].[TM_office] where master_officeCode='00' and master_companyCode = '30';

  select digital_library_id,officeCode,companyCode from On_Digital_Library_Office where digital_library_id = 326;




--DEVSACADS5
--P@ssword