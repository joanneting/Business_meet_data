USE [business_meet]
GO
/****** Object:  Table [dbo].[user_information]    Script Date: 2020/3/30 下午 04:59:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_information](
	[blue_tooth] [varchar](18) NOT NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[company] [nvarchar](100) NOT NULL,
	[position] [nvarchar](100) NULL,
	[avatar] [varchar](max) NULL,
	[tel] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
 CONSTRAINT [PK__user_inf__CBC46C2E5085DE41] PRIMARY KEY CLUSTERED 
(
	[blue_tooth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
