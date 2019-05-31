

--SELECT notify_job_id,* FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar, schedule_datetime, 105) ='24-05-2019';

SELECT notify_job_id,count(notify_job_id)
FROM [dbo].[NotifyReceiver] 
where notify_job_id in (SELECT notify_job_id FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar(10), schedule_datetime, 105) ='2019-05-24')
group by notify_job_id having count(notify_job_id)>1;




--SELECT * FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar(10), schedule_datetime, 105) > '2019-05-24' and status=0 and created_by='CPO';


--select * from NotifyJob order by notify_job_id desc;

--select * from [NotifyReceiver] where notify_job_id=5225;

select notify_ref,count(notify_ref) from NotifyJob where convert(varchar(10), schedule_datetime, 105) > '2019-05-24' and status=0 and created_by='CPO' group by notify_ref having count(notify_ref) > 1;

--select * from NotifyJob where notify_ref='NUWKRIRBSI' and status=0;

--select * from [NotifyReceiver] where notify_job_id=5365;
