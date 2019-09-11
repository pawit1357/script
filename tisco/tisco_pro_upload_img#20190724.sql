-- ALTER TABLE On_Form_Document add is_edit_lot bit not null default 0;


--Normal Case
--Lot 001 SendDate “23 July 12.00” Seq 1
--Lot 001 SendDate “23 July 12.00” Seq 2
--Lot 001 SendDate “23 July 12.00” Seq 3

--Lot 002 SendDate “24 July 12.00” Seq 1
--Lot 002 SendDate “24 July 12.00” Seq 2
--Lot 002 SendDate “24 July 12.00” Seq 3
--____________________________________________________
--Lot 001 SendDate “23 July 12.00” Seq 1 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 2 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 3 flag 0
--Lot 002 SendDate “24 July 12.00” Seq 1 flag 0
--Lot 002 SendDate “24 July 12.00” Seq 2 flag 0
--Lot 002 SendDate “24 July 12.00” Seq 3 flag 0

--Case Handle
--Lot 001 SendDate “23 July 12.00” Seq 1 Success
--Lot 001 SendDate “23 July 12.00” Seq 2 Fail
--Lot 001 SendDate “23 July 12.00” Seq 3 Success

--Lot 002 SendDate “23 July 12.00” Seq 1 Success
--Lot 002 SendDate “23 July 12.00” Seq 2 Success
--Lot 002 SendDate “23 July 12.00” Seq 3 Success

--Lot 001 SendDate “23 July 12.00” Seq 1 Duplicate
--Lot 001 SendDate “23 July 12.00” Seq 2 Success
--Lot 001 SendDate “23 July 12.00” Seq 3 Duplicate
--____________________________________________________
--Lot 001 SendDate “23 July 12.00” Seq 1 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 3 flag 0
--Lot 002 SendDate “23 July 12.00” Seq 1 flag 0
--Lot 002 SendDate “23 July 12.00” Seq 2 flag 0
--Lot 002 SendDate “23 July 12.00” Seq 3 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 2 flag 0

--Case Bug
--Lot 001 SendDate “23 July 12.00” Seq 1
--Lot 001 SendDate “23 July 12.00” Seq 2
--Lot 001 SendDate “23 July 12.00” Seq 3

--Lot 002 SendDate “24 July 12.00” Seq 1
--Lot 002 SendDate “24 July 12.00” Seq 2
--Lot 002 SendDate “24 July 12.00” Seq 3

--Lot 001 SendDate “25 July 12.00” Seq 1
--Lot 001 SendDate “25 July 12.00” Seq 2
--Lot 001 SendDate “25 July 12.00” Seq 3
--____________________________________________________
--Lot 001 SendDate “23 July 12.00” Seq 1 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 2 flag 0
--Lot 001 SendDate “23 July 12.00” Seq 3 flag 0

--Lot 002 SendDate “24 July 12.00” Seq 1 flag 0
--Lot 002 SendDate “24 July 12.00” Seq 2 flag 0
--Lot 002 SendDate “24 July 12.00” Seq 3 flag 0

--Lot 003 SendDate “25 July 12.00” Seq 1 flag 1
--Lot 003 SendDate “25 July 12.00” Seq 2 flag 1
--Lot 003 SendDate “25 July 12.00” Seq 3 flag 1




select doc.form_document_id,c.caseNo,doc.loan_id,doc.lot_no,doc.sequence_no,doc.is_edit_lot,doc.senddate,doc.form_document_name,doc.form_document_url
from On_Form_Document doc left join tc_case c on doc.loan_id = c.loan_id
where doc.loan_id=4934
order by doc.create_date asc;


-- delete from On_Form_Document where loan_id=4934;

delete from On_Form_Document where form_document_id in (
'62368',
'62369',
'62370'
);