select js.job_number,ms.ID,ms.name,js.specification_id,js.template_id,
(
select username from users_login where responsible_test in(
select m_type_of_test.data_group 
from job_sample x 
left join m_type_of_test on x.type_of_test_id = m_type_of_test.id
where x.ID = js.ID)
) as username
from job_sample js
left join m_status ms on ms.ID = js.job_status
where js.template_id in (
select id from m_template where status='A' and path_url like '%WD_IC%')
order by js.job_number desc;

select * from m_template where status='A' and path_url like '%Seagate_GCMS%';
select * from m_template where status='A' and path_url like '%WD_IC%';
select * from m_template where id=537;

-- ELP-3526-IB
