/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [NotifyJob] 
where notify_content like '%QLTFS%'
order by notify_job_id desc;

select * from [dbo].[NotifyReceiver] where notify_job_id=3505;


SELECT * FROM [NotifyJob] order by notify_job_id desc;
select * from NotifyReceiver where notify_job_id=3518;
select * from On_User_Access where user_code='SML';




select * from On_User_Access order by expire_date desc;



select * from NotifyReceiver where device_token='APA91bEW_KpGvrkaEIPFYWDA6fJ80KLWQoEifr2OIoCJq_Th9ZrPcQ1Ng83WSI2IE1leZj45VTL48yq8-s66U-SCZp-YEi5YtVkePV7s4sucKmiBrUVXfEMT0sqVdtBT3saRVTHnAhLK';

