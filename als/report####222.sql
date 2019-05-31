
	select count(c.id)                      
		from job_sample s                                                  
		left join job_info j on j.ID = s.job_id                                 
		left join m_customer c on c.ID = j.customer_id                          
		where s.sample_invoice is not null                                 
		and s.sample_invoice <> ''                                         
		and s.sample_invoice_date is not null                              
		and s.sample_invoice_date between'2017-04-01' AND '2019-05-26' 
    group by c.ID

-- limit 10,12;                                                    


