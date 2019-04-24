--  รายงานผลออกมาว่าลูกค้าแต่ละรายมียอดเงินค้างเท่าไร กี่วันมาแล้ว
select 
c.company_name,
j.customer_id, 
s.job_number,
s.sample_invoice,
s.sample_invoice_date,
-- s.sample_invoice_complete_date,
TO_DAYS(Now()) - TO_DAYS(s.sample_invoice_date) as overdue_date,
s.sample_invoice_amount
from job_sample s
left join job_info j on j.ID = s.job_id
left join m_customer c on c.ID = j.customer_id
where s.sample_invoice is not null 
and s.sample_invoice <> ''
and s.sample_invoice_complete_date is null
and s.sample_invoice_date is not null
order by s.sample_invoice_date desc;

-- #########################################################
select 
c.company_name,
-- s.job_number,
-- s.sample_invoice,
-- s.sample_invoice_date,
-- s.sample_invoice_complete_date,
sum(TO_DAYS(Now()) - TO_DAYS(s.sample_invoice_date)) as overDue,
sum(s.sample_invoice_amount) as sumAmout
from job_sample s
left join job_info j on j.ID = s.job_id
left join m_customer c on c.ID = j.customer_id
where s.sample_invoice is not null 
and s.sample_invoice <> ''
and s.sample_invoice_date is not null
and s.sample_invoice_complete_date is null
group by c.ID;




                                               