-- #Phase(1)
-- 3. Fraud Detection
Use [Tisco_Onsale_SIT];
ALTER TABLE [TC_Case] ADD fraudResult varchar(10);
ALTER TABLE [TC_Case2] ADD fraudResult varchar(10);
ALTER TABLE [TC_CaseStatus] ADD fraudResult varchar(10);


-- 10. เพิ่ม Scheduler การลบ System Log Backweb และ Log ใน DB ด้วย ทุกๆ X วัน
INSERT INTO [AG_Command_Key](command_key,command_value) VALUES ('PurgeLog','PurgeLog');
--INSERT INTO [AG_Command_Key](command_key,command_value) VALUES ('PurgeNotifyJob','PurgeNotifyJob');

INSERT [dbo].[AG_Commands] ([command_uid], [command_key], [value1], [value2], [value3], [value4], [value5], [return_key], [created_date], [timeout], [priority], [state], [done_date], [return_msg], [last_update], [start_date], [repeat]) VALUES (N'2c4c36c0-f3ae-4415-948a-dbb1233ac633', N'PurgeLog', NULL, NULL, NULL, NULL, N'success : 2019-02-28 16:29:05', NULL, N'2015-03-23 12:17:45', 60, 3, 1, N'2019-02-28 16:29:05', N'success', NULL, N'2019-03-01 16:20:00', 1440);

--INSERT [dbo].[AG_Commands] ([command_uid], [command_key], [value1], [value2], [value3], [value4], [value5], [return_key], [created_date], [timeout], [priority], [state], [done_date], [return_msg], [last_update], [start_date], [repeat]) VALUES (N'2c4c36c0-f3ae-4415-948a-dbb1233ac634', N'PurgeNotifyJob', NULL, NULL, NULL, NULL, N'success : 2019-02-28 16:29:05', NULL, N'2015-03-23 12:17:45', 60, 3, 1, N'2019-02-28 16:29:05', N'success', NULL, N'2019-03-01 16:20:00', 1440);


insert On_Config(config_name,config_value,description,config_type_id) values('PurgeLogPath','D:\TISCO_API\Logs;D:\TISCO_BACKWEB\Logs;D:\Tisco_Service\Notify\Logs;D:\Tisco_Service\Master\Logs','Delete log path',3);
insert On_Config(config_name,config_value,description,config_type_id) values('PurgeLogPathDay','60','Day to Delete log',3);
--insert On_Config(config_name,config_value,description,config_type_id) values('PurgeNotifyJobDay','60','Day to Delete notify job',3);


  -- 11. ขอเพิ่มการเก็บ Log  สำหรับกรณีที่มี User กดปุ่ม Retry ที่  TISCO Pro Backweb
    insert into BK_Log_Action(log_action_code,log_action_name,log_type_id) values('CF','Clear Retry Flag',3);



-- clear NotifyDB
--select * from [dbo].[BK_Log] where log_process_datetime < DATEADD(DAY, -60,  GETDATE())


-- read flag
Use [Tisco_Onsale_SIT];
--ALTER TABLE [NotifyJob] ADD read_flag tinyint;
ALTER TABLE [NotifyReceiver] ADD read_flag tinyint NOT NULL DEFAULT 0;
GO;


-- view
ALTER VIEW [dbo].[Notify_View]
AS
SELECT        dbo.NotifyJob.notify_content, dbo.NotifyJob.schedule_datetime, dbo.On_User_Access.user_code, dbo.NotifyJob.cat, dbo.NotifyJob.status, 
                         dbo.On_User_Access.cmr_name, dbo.NotifyReceiver.device_token, dbo.NotifyReceiver.user_name
FROM            dbo.NotifyJob INNER JOIN
                         dbo.NotifyReceiver ON dbo.NotifyJob.notify_job_id = dbo.NotifyReceiver.notify_job_id INNER JOIN
                         dbo.On_User_Access ON dbo.NotifyReceiver.user_name = dbo.On_User_Access.user_name
						 where dbo.NotifyReceiver.read_flag =0



-- cpoNotification:token
insert On_Config(config_name,config_value,description,config_type_id) values('cpoNotification','AOjxwKSL0I','token',3);
