USE [BeMet]
GO
/****** Object:  Table [dbo].[friend]    Script Date: 2020/10/16 上午 11:07:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friend](
	[friend_no] [int] IDENTITY(1,1) NOT NULL,
	[matchmaker_id] [varchar](100) NOT NULL,
	[friend_id] [varchar](100) NOT NULL,
	[remark] [nvarchar](2500) NULL,
	[status] [int] NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
 CONSTRAINT [PK__friend__3FA105DFE0623CAE] PRIMARY KEY CLUSTERED 
(
	[friend_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[friend] ON 

INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (18, N'Lemon1', N'HTC UU1', NULL, 2, CAST(N'2020-08-10T11:56:18.217' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (19, N'HTC UU1', N'Lemon1', NULL, 2, CAST(N'2020-08-10T11:56:18.530' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (20, N'Lemon1', N'Samsung j7', NULL, 2, CAST(N'2020-08-10T15:05:01.573' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (21, N'Asus Zen2', N'Lemon1', NULL, 2, CAST(N'2020-08-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (22, N'Lemon1', N'Asus Zen2', NULL, 2, CAST(N'2020-08-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (23, N'07', N'darkplume', NULL, 1, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (24, N'darkplume', N'07', NULL, 2, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (28, N'note20', N'darkplume', N'123456789', 1, CAST(N'2020-09-11T15:31:10.060' AS DateTime), CAST(N'2020-10-15T21:18:36.997' AS DateTime))
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (29, N'note20', N'HTC UU1', NULL, 2, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (30, N'note20', N'Lemon1', NULL, 2, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (31, N'note20', N'Samsung j7', NULL, 2, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (32, N'note20', N'Asus Zen2', NULL, 2, CAST(N'2020-09-11T15:31:10.060' AS DateTime), CAST(N'2020-10-15T21:28:23.597' AS DateTime))
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (36, N'note20', N'ww', NULL, 3, CAST(N'2020-09-11T15:31:10.060' AS DateTime), CAST(N'2020-10-16T10:51:45.457' AS DateTime))
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (42, N'ww', N'note20', N'123456789', 2, CAST(N'2020-10-15T21:23:05.017' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (46, N'note20', N'07', NULL, 1, CAST(N'2020-10-15T21:30:29.743' AS DateTime), NULL)
INSERT [dbo].[friend] ([friend_no], [matchmaker_id], [friend_id], [remark], [status], [create_date], [modify_date]) VALUES (48, N'darkplume', N'note20', NULL, 1, CAST(N'2020-09-11T15:31:10.060' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[friend] OFF
GO
ALTER TABLE [dbo].[friend] ADD  CONSTRAINT [DF_friend_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK__friend__friend_i__2A4B4B5E] FOREIGN KEY([friend_id])
REFERENCES [dbo].[user_information] ([user_id])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK__friend__friend_i__2A4B4B5E]
GO
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK__friend__matchmak__29572725] FOREIGN KEY([matchmaker_id])
REFERENCES [dbo].[user_information] ([user_id])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK__friend__matchmak__29572725]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 : 詢問
2 : 接受
3 : 刪除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'friend', @level2type=N'COLUMN',@level2name=N'status'
GO
