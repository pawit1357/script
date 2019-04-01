

-- delete NotifyJob
DELETE FROM dbo.NotifyJob WHERE notify_job_id in(
	SELECT 
	dbo.NotifyJob.notify_job_id
	FROM dbo.NotifyJob 
		INNER JOIN dbo.NotifyReceiver ON dbo.NotifyJob.notify_job_id = dbo.NotifyReceiver.notify_job_id 
		INNER JOIN dbo.On_User_Access ON dbo.NotifyReceiver.user_name = dbo.On_User_Access.user_name
	where On_User_Access.user_code='THO' and YEAR(NotifyJob.schedule_datetime) < 2019
);
-- delete NotifyReceiver
DELETE FROM dbo.NotifyReceiver WHERE notify_job_id in(
	SELECT 
	dbo.NotifyJob.notify_job_id
	FROM dbo.NotifyJob 
		INNER JOIN dbo.NotifyReceiver ON dbo.NotifyJob.notify_job_id = dbo.NotifyReceiver.notify_job_id 
		INNER JOIN dbo.On_User_Access ON dbo.NotifyReceiver.user_name = dbo.On_User_Access.user_name
	where On_User_Access.user_code='THO' and YEAR(NotifyJob.schedule_datetime) < 2019
);