USE [BeMet]
GO
/****** Object:  Table [dbo].[timeline]    Script Date: 2020/7/30 下午 06:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeline](
	[timeline_no] [int] IDENTITY(1,1) NOT NULL,
	[matchmaker_id] [varchar](100) NULL,
	[friend_id] [varchar](100) NULL,
	[place] [nvarchar](100) NOT NULL,
	[title] [nvarchar](100) NULL,
	[remark] [nvarchar](2500) NULL,
	[timeline_properties_no] [int] NOT NULL,
	[color] [varchar](7) NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
 CONSTRAINT [PK__timeline__DC6090DA29AAF858] PRIMARY KEY CLUSTERED 
(
	[timeline_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[timeline]  WITH CHECK ADD  CONSTRAINT [FK__timeline__timeli__403A8C7D] FOREIGN KEY([timeline_properties_no])
REFERENCES [dbo].[timeline_properties] ([timeline_properties_no])
GO
ALTER TABLE [dbo].[timeline] CHECK CONSTRAINT [FK__timeline__timeli__403A8C7D]
GO
