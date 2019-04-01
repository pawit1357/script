USE [GSB_RPS]
GO

/****** Object:  Table [dbo].[rps_audit_log]    Script Date: 8/21/2018 10:35:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rps_audit_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [varchar](15) NULL,
	[tid] [varchar](8) NULL,
	[ip_address] [varchar](50) NULL,
	[mac_address] [varchar](50) NULL,
	[file_name] [varchar](200) NULL,
	[fail_records] [int] NOT NULL,
	[success_records] [int] NOT NULL,
	[total_records] [int] NOT NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__rps_audi__3213E83F7FB81A70] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [GSB_RPS]
GO

/****** Object:  Table [dbo].[rps_zcgg]    Script Date: 8/21/2018 10:35:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rps_zcgg](
	[id] [int] NOT NULL,
	[amount] [varchar](255) NULL,
	[card_key] [varchar](255) NULL,
	[card_number] [varchar](255) NULL,
	[card_number_mask] [varchar](255) NULL,
	[contract_account] [varchar](255) NULL,
	[customer_name] [varchar](255) NULL,
	[input_file_name] [varchar](255) NULL,
	[payment_order_no] [varchar](255) NULL,
	[seq] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO