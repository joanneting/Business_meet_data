USE [BeMet]
GO
/****** Object:  Table [dbo].[activity_date]    Script Date: 2020/10/12 下午 07:01:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_date](
	[activity_date_no] [int] IDENTITY(1,1) NOT NULL,
	[activity_no] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_date_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_date]  WITH CHECK ADD FOREIGN KEY([activity_no])
REFERENCES [dbo].[timeline] ([timeline_no])
GO
