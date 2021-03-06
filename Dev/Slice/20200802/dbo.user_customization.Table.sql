USE [BeMet]
GO
/****** Object:  Table [dbo].[user_customization]    Script Date: 2020/8/2 上午 11:28:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_customization](
	[user_customization_no] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](100) NOT NULL,
	[column_name] [nvarchar](100) NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_customization_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user_customization]  WITH CHECK ADD  CONSTRAINT [FK__user_cust__user___267ABA7A] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_information] ([user_id])
GO
ALTER TABLE [dbo].[user_customization] CHECK CONSTRAINT [FK__user_cust__user___267ABA7A]
GO
