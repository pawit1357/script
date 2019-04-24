--1) Add Job
-- 1.1)
INSERT INTO [AG_Command_Key](command_key,command_value) VALUES ('DelIncCase','DelIncCase');
-- 1.2)
INSERT [dbo].[AG_Commands] ([command_uid], [command_key], [value1], [value2], [value3], [value4], [value5], [return_key], [created_date], [timeout], [priority], [state], [done_date], [return_msg], [last_update], [start_date], [repeat]) 
VALUES (N'5f242653-05bd-47ea-8134-d9d0e70b8dd5', N'DelIncCase', NULL, NULL, NULL, NULL, N'success : 2019-02-28 16:29:05', NULL, N'2015-03-23 12:17:45', 0, 3, 1, GETDATE(), N'success', NULL, GETDATE(), 1440);
-- 1.3)
insert On_Config(config_name,config_value,description,config_type_id) values('DelIncCaseDay','0','Day to Delete Case Incomplete',3);


--2) Add Master (sso,driver,incomemethod)
insert into TM_Init_Master (name,status,ref_id,created_date) values('sso',1,'c3d53a96-1bcd-4fd6-8950-49cba6adf9b4',GETDATE());
insert into TM_Init_Master (name,status,ref_id,created_date) values('driver',1,'9b130a80-0040-4154-8b61-00cfe1239409',GETDATE());
insert into TM_Init_Master (name,status,ref_id,created_date) values('incomemethod',1,'f19c3c22-d651-4db9-82f2-9470b4fffd98
',GETDATE());

--2.1) TM_sso
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_sso](
	[key_id] [uniqueidentifier] NOT NULL,
	[master_code] [nvarchar](50) NULL,
	[master_desc] [nvarchar](200) NULL,
	[ref_id] [uniqueidentifier] NULL,
	[created_date] [varchar](20) NULL,
	[order_by] [int] NULL,
 CONSTRAINT [PK_TM_sso] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--2.2) TM_driver
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_driver](
	[key_id] [uniqueidentifier] NOT NULL,
	[master_code] [nvarchar](50) NULL,
	[master_desc] [nvarchar](200) NULL,
	[ref_id] [uniqueidentifier] NULL,
	[created_date] [varchar](20) NULL,
	[order_by] [int] NULL,
 CONSTRAINT [PK_driver] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--2.3) TM_incomemethod
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_incomemethod](
	[key_id] [uniqueidentifier] NOT NULL,
	[master_code] [nvarchar](50) NULL,
	[master_desc] [nvarchar](200) NULL,
	[ref_id] [uniqueidentifier] NULL,
	[created_date] [varchar](20) NULL,
	[order_by] [int] NULL,
 CONSTRAINT [PK_incomemethod] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--2.4) 
	ALTER TABLE TC_Customer add sso varchar(2);
	ALTER TABLE TC_Customer add driver varchar(2);
	ALTER TABLE TC_Customer add companyName varchar(300);
	ALTER TABLE TC_Customer add incomeMethod varchar(2);
-- 2.5)
	ALTER TABLE TC_Case add CashSupportTotal decimal(11, 2);
	ALTER TABLE TC_Case add DiscountTotal decimal(11, 2);
	ALTER TABLE TC_Case add AddOnTotal decimal(11, 2);
	ALTER TABLE TC_Case add TCGCreditLimit decimal(11, 2);





-- 3.) API: ToolSearch,BackList

--insert On_Config(config_name,config_value,description,config_type_id) values('url_tool_search','60','',3);
--insert On_Config(config_name,config_value,description,config_type_id) values('url_back_list','60','',3);
