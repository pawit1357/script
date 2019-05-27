select * from  (
select c.id,                                                            
c.company_name,                                                    
sum(TO_DAYS(Now()) - TO_DAYS(s.sample_invoice_date)) as overDue,   
sum(s.sample_invoice_amount) as sumAmout                           
from job_sample s                                                  
left join job_info j on j.ID = s.job_id                                 
left join m_customer c on c.ID = j.customer_id                          
where s.sample_invoice is not null                                 
and s.sample_invoice <> ''                                         
and s.sample_invoice_date is not null                              
and s.sample_invoice_date between'2017-04-01' AND '2019-05-26' group by c.ID) tmp order by sumAmout desc;                                                    


