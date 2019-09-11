--select * from [dbo].[jhi_authority];
-- APP_DATA_ENTRY

select * from [dbo].[jhi_user] 
where id in (select user_id from [dbo].[jhi_user_authority] where authority_name='APP_DATA_ENTRY');
