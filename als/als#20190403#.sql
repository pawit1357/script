select 
job_number,
sample_invoice,
sample_invoice_date,
sample_invoice_complete_date,
-- xxxxxxx
date_login_inprogress,
date_login_complete,
date_chemist_analyze,
date_chemist_complete,
date_srchemist_analyze,
date_srchemist_complate,
date_admin_word_inprogress,
date_admin_word_complete,
date_labman_analyze,
date_labman_complete,
date_admin_sent_to_cus,
date_admin_pdf_inprogress,
date_admin_pdf_complete
from job_sample 
where job_number = 'ELP-1460-G'
and sample_invoice = 'IV1809128'
order by ID desc
