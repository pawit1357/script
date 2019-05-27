SELECT sample_invoice_amount,job_number FROM alsi.job_sample group by job_number having count(job_number) = 1 order by id desc;


-- ELP-3527-G
-- ELP-3526-IB
select ID,sample_invoice_amount,job_number from job_sample where job_number in ('ELS-0219-PAB','ELS-0220-PAB');

-- ELS-0219-0220-PAB

-- ELN-1236-1237-CSB
-- ELP-0126-0127-DB
-- ELN-1337-1338-DB
-- ELN-1338-DB
-- ELN-1337-DB