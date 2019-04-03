-- #script 1 Batch Delete Incomplete Case
-- 1.1)
INSERT INTO [AG_Command_Key](command_key,command_value) VALUES ('DeleteIncompleteCase','DeleteIncompleteCase');
-- 1.2)
INSERT [dbo].[AG_Commands] ([command_uid], [command_key], [value1], [value2], [value3], [value4], [value5], [return_key], [created_date], [timeout], [priority], [state], [done_date], [return_msg], [last_update], [start_date], [repeat]) 
VALUES (N'2c4c36c0-f3ae-4415-948a-dbb1233ac633', N'DeleteIncompleteCase', NULL, NULL, NULL, NULL, N'success : 2019-02-28 16:29:05', NULL, N'2015-03-23 12:17:45', 60, 3, 1, N'2019-02-28 16:29:05', N'success', NULL, N'2019-03-01 16:20:00', 1440);