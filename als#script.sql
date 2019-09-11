-- ADMIN_CONVERT_WORD
select mt.path_url,s.ID,s.specification_id,s.sample_prefix,s.job_number,s.template_id,s.job_status,ms.name,tot.prefix,
(SELECT GROUP_CONCAT(username SEPARATOR '#') FROM alsi.users_login where responsible_test like CONCAT('%', tot.prefix,'%')) as usr,
s.am_retest_remark
from job_sample s 
left join m_status ms on s.job_status = ms.ID
left join m_type_of_test tot on s.type_of_test_id = tot.id
left join m_template mt on s.template_id = mt.id
where s.template_id in (
SELECT ID FROM m_template where path_url like '%Seagate_GCMS_5%' and status ='A')
-- and job_status = 13
order by s.id desc; 

-- update job_sample set am_retest_remark='Customer was request revise sample description' where ID= 24491;

-- thamonwan.ketwongsa
-- nuruddeen.kochem (FTIR