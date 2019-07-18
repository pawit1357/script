
--4791

select loan_id, office_code, send_type, lot_no, user_print_by, user_export_by, print_flag, export_flag,amount,form_document_id
--CONVERT(int, amount) AS amount, 
--COUNT(form_document_id) AS amountr 
from On_Form_Document 
where loan_id=4844 --
GROUP BY loan_id, office_code, send_type, lot_no, user_print_by, user_export_by, print_flag, export_flag, CONVERT(int, amount) 






---
SELECT TOP(500) newid(), 
loan_id, 
office_code, 
send_type, 
lot_no, 
MAX(create_date) AS create_date, 
user_print_by, 
user_export_by, 
print_flag, 
MAX(print_date) AS print_date, 
export_flag, MAX(export_date) AS export_date, 
CONVERT(int, amount) AS amount, 
COUNT(form_document_id) AS amountr 
FROM On_Form_Document 
WHERE loan_id in(
'4844')
and (album_finish=0 OR album_finish IS NULL)
GROUP BY loan_id, office_code, send_type, lot_no, user_print_by, user_export_by, print_flag, export_flag, CONVERT(int, amount) 
-- HAVING CONVERT(int, amount)=COUNT(form_document_id)
ORDER BY loan_id DESC;




select * from TC_Case where caseNo='H1900005855';











--select * from On_Form_Document where loan_id in(
--'4838',
--'4837',
--'4836',
--'4835',
--'4834',
--'4833',
--'4832',
--'4831',
--'4830',
--'4829')

--select * from tc_case where caseNo='H1900005855';


