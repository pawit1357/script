
select * from [dbo].[TC_Customer] where loan_id =(select loan_id from [dbo].[TC_Case]  where caseNo='H1900005295');