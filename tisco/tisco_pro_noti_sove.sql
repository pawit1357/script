

--SELECT notify_job_id,* FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar, schedule_datetime, 105) ='24-05-2019';

SELECT notify_job_id,count(notify_job_id)
FROM [dbo].[NotifyReceiver] 
where notify_job_id in (SELECT notify_job_id FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar(10), schedule_datetime, 105) ='2019-05-24')
group by notify_job_id having count(notify_job_id)>1;




--SELECT * FROM [Tisco_Onsale_SIT].[dbo].[NotifyJob] where convert(varchar(10), schedule_datetime, 105) ='2019-05-24' and status=0 and created_by='CPO';




