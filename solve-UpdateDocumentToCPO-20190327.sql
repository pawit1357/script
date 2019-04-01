-- ############################################
-- UpdateDocumentToCPO 
-- ############################################
-- 1.) CaseList
select * 
from TC_Case2 e
left join On_Form_Document f on  e.loan_id  = f.loan_id
where e.lot_no = f.lot_no
and (e.send_flag = 0 or e.send_flag = null)
and e.retry < 5 
and f.ecm_upload = 2 and f.firstname <> null;
-- 2.) ForEach CaseList
--2.1 : ALL Document
select * from On_Form_Document x where x.loan_id = 3324 and x.lot_no=001 order by x.sequence_no;
--2.2 : DocumentList
select * from On_Form_Document x where x.loan_id = 3324 and x.lot_no=001 and x.ecm_upload=2 order by x.sequence_no;
--2.3: (2.1) = (2.2)