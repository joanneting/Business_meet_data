USE [BeMet]
GO
/****** Object:  Table [dbo].[activity_date]    Script Date: 2020/9/2 下午 10:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_date](
	[activity_time_no] [int] IDENTITY(1,1) NOT NULL,
	[activity_no] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_time_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_date]  WITH CHECK ADD FOREIGN KEY([activity_no])
REFERENCES [dbo].[timeline] ([timeline_no])
GO
