-- CHECK SEND CMR DUPPLICATE
SELECT * FROM [NotifyJob] 
WHERE notify_content LIKE '%H1900458997%';

SELECT * FROM [NotifyReceiver] WHERE notify_job_id IN (SELECT notify_job_id FROM [NotifyJob] 
WHERE notify_content LIKE '%H1900458997%');
