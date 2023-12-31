USE [SS5]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](200) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Logo] [nvarchar](100) NOT NULL,
	[UploadDay] [date] NOT NULL,
	[Banner] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[NameSearch] [varchar](50) NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[NameSearch] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](255) NOT NULL,
	[Star] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Price] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[ApplyDay] [date] NOT NULL,
	[Expiration] [date] NOT NULL,
	[MoneyLimit] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[StartDay] [date] NOT NULL,
	[Salary] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[User_Id] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationShop]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationShop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Active] [bit] NULL,
	[TimeOpen] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
	[Email] [varchar](25) NOT NULL,
	[LogoFooter] [varchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuOne]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuOne](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTwo]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTwo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Menu1_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Discount_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](100) NOT NULL,
	[Image2] [nvarchar](100) NOT NULL,
	[Image3] [nvarchar](100) NOT NULL,
	[Image4] [nvarchar](100) NOT NULL,
	[Image5] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[Manu_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[NameSearch] [varchar](50) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[Sales] [int] NULL,
 CONSTRAINT [PK__Products__3214EC07C31AD900] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/28/2021 7:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[FullName] [nvarchar](125) NOT NULL,
	[Sex] [bit] NULL,
	[Birthday] [date] NULL,
	[Subscribe] [bit] NULL,
	[CreateDay] [datetime] NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (1, N'Trần Thái Nguyên', N'0941563061', N'Hồ Chí Minh', N'Thủ Đức', N'Linh Trung', N'35 Lê Văn Chí, Phường Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh', 1)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (2, N'Phạm Nguyễn Quang Lộc', N'0927255719', N'Hồ Chí Minh', N'Thủ Đức', N'Linh Trung', N'35 Lê Văn Chí, Phường Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh', 2)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (3, N'Trần Quốc Đạt', N'0906464949', N'Hồ Chí Minh', N'Tân Bình', N'Phường 1', N'243A Hoàng Văn Thụ, Phường 1, Tân Bình, Thành phố Hồ Chí Minh', 3)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (4, N'Nguyễn Thành Đạt', N'0958577367', N'Hồ Chí Minh', N'Tân Bình', N'Phường 2', N'Hoàng Văn Thụ, Phường 2, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', 4)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (5, N'Phạm Ngọc Long', N'0989800767', N'Hồ Chí Minh', N'Tân Bình', N'Phường 7', N'1 Lý Thường Kiệt, Phường 7, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', 5)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (6, N'Lê Thị Tâm', N'0920337644', N'Hồ Chí Minh', N'Quận 10', N'Phường 15', N'875 Cách Mạng Tháng 8, Phường 15, Quận 10, Thành phố Hồ Chí Minh', 6)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (7, N'Trần Thị Hòa', N'0969811587', N'Hồ Chí Minh', N'Quận 1', N'Nguyễn Cư Trinh', N'235 Nguyễn Văn Cừ, Phường Nguyễn Cư Trinh, Quận 1, Thành phố Hồ Chí Minh', 7)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (8, N'Nguyễn Thị Phương Lan', N'0943604384', N'Hồ Chí Minh', N'Bình Tân', N'Bình Trị Đông A', N'QJ73+86P, 809 HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh', 8)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (9, N'Đỗ Mai Anh', N'0984250414', N'Hồ Chí Minh', N'Gò Vấp', N'Phường 5', N'366 Phan Văn Trị, Phường 5, Gò Vấp, Thành phố Hồ Chí Minh', 9)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (10, N'Nguyễn Thị Yến Nhi', N'0923444221', N'Hồ Chí Minh', N'Thủ Đức', N'Bình Thọ', N'216 Võ Văn Ngân, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', 10)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (11, N'Cổ Lưu Bình Minh', N'0922244422', N'Hồ Chí Minh', N'Thủ Đức', N'Linh Đông', N'1190/06, Phạm Văn Đồng, Linh Đông, Thủ Đức, Thành phố Hồ Chí Minh', 11)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (12, N'Tôn Nữ Hương Trân', N'0987924079', N'Hồ Chí Minh', N'Thủ Đức', N'Hiệp Bình Chánh', N'32 Đ.42, Hiệp Bình Chánh, Thủ Đức, Thành phố Hồ Chí Minh', 12)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (13, N'Phạm Minh Tuấn', N'0917656363', N'Hồ Chí Minh', N'Thủ Đức', N'Linh Đông', N'660/4a, 660 Kha Vạn Cân, Linh Đông, Thủ Đức, Thành phố Hồ Chí Minh', 13)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (14, N'Đỗ Anh Thư', N'0909937785', N'Hồ Chí Minh', N'Thủ Đức', N'Trường Thọ', N'77 Đặng Văn Bi, Trường Thọ, Thủ Đức, Thành phố Hồ Chí Minh', 14)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (15, N'Lê Tuấn Kiệt', N'0996108719', N'Hồ Chí Minh', N'Quận 8', N'Phường 4', N'180 Đ.Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 15)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (16, N'Trần Đăng Khoa', N'0964790955', N'Hồ Chí Minh', N'Quận 7', N'Tân Hưng', N'702 Đ. Nguyễn Văn Linh, Tân Hưng, Quận 7, Thành phố Hồ Chí Minh', 16)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (17, N'Lê Văn Thanh', N'0955069480', N'Hồ Chí Minh', N'Quận 7', N'Khu đô thị Phú Mỹ Hưng', N'401 Phạm Thái Bường, Khu đô thị Phú Mỹ Hưng, Quận 7, Thành phố Hồ Chí Minh', 17)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (18, N'Phan Văn Toàn', N'0988859674', N'Hồ Chí Minh', N'Quận 7', N'Phú Thuận', N'803/23/10/41 Huỳnh Tấn Phát, Phú Thuận, Quận 7, Thành phố Hồ Chí Minh', 18)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (19, N'Võ Thị Trường Giang', N'0932977767', N'Hồ Chí Minh', N'Thủ Đức', N'Bình Thọ', N'17 Hồng Đức, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', 19)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (20, N'Lư Phú', N'0939056784', N'Hồ Chí Minh', N'Gò Vấp',N'Phường 3', N'1A Lê Lai, Phường 3, Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam', 20)

SET IDENTITY_INSERT [dbo].[Address] OFF

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (2, N'Hunter', N'2.png', N'Banner_Hunter_Nam.png', N'Hunter Nam', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'hunter-nam')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (3, N'Sandal', N'3.png', N'Banner_Sandal_Nam.png', N'Sandal Nam', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'sandal-nam')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (4, N'Giày Tây', N'4.png', N'Banner_Giày Tây.png', N'Giày Tây', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'giaytay')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (5, N'Dép', N'5.png', N'Banner_Dép_Nam.png', N'Dép Nam', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'dep-nam')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (6, N'Hunter', N'6.png', N'Hunter_Nu.png', N'Hunter Nữ', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'hunter-nu')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (7, N'Sandal', N'7.png', N'Banner_Sandal_Nu.png', N'Sandal Nữ', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'sandal-nu')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (8, N'Giày Cao Gót', N'8.png', N'Banner_Giày Cao Gót.png', N'Giày Cao Gót', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'giaycaogot')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (9, N'Dep', N'9.png', N'Banner_Dep_Nu.png', N'Dép Nữ', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'dep-nu')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (10, N'Giày Thể Thao', N'10.png', N'Banner_Giày The Thao.png', N'Giày Thể Thao', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'giaythethao-treem')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (11, N'Sandal', N'11.png', N'Banner_Sandal_Tre Em.png', N'Sandal Trẻ Em', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'Sandal-treem')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (12, N'Dép', N'12.png', N'Banner_Dép_Tre Em.png', N'Dép Trẻ Em', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-11-12T14:59:21.427' AS DateTime), 1, N'dep-treem')










SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([Id], [Name], [Code], [Price], [Quality], [ApplyDay], [Expiration], [MoneyLimit], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Giảm giá 150.000đ khi mua đơn hàng trên 799.000đ', N'TAKH111', 150000, 1, CAST(N'2021-12-09' AS Date), CAST(N'2021-12-23' AS Date), 100000, CAST(N'2021-12-09T19:25:20.550' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Discount] ([Id], [Name], [Code], [Price], [Quality], [ApplyDay], [Expiration], [MoneyLimit], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Giảm giá 300.000đ cho đơn hàng trên 1299.000đ', N'OTP1111', 300000, 3, CAST(N'2021-12-15' AS Date), CAST(N'2021-12-17' AS Date), 100000, CAST(N'2021-12-15T21:45:18.503' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Discount] ([Id], [Name], [Code], [Price], [Quality], [ApplyDay], [Expiration], [MoneyLimit], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Giảm giá 30.000đ cho đơn hàng trên 300.000đ', N'GSVV202112', 30000, 5, CAST(N'2021-12-17' AS Date), CAST(N'2021-12-23' AS Date), 150000, CAST(N'2021-12-17T15:22:14.587' AS DateTime), 3, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[InformationShop] ON 

INSERT [dbo].[InformationShop] ([Id], [Name], [Active], [TimeOpen], [Logo], [Phone], [Fax], [Email], [LogoFooter], [Address], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Ecart Shop', 1, N'7:00 AM đến 11:00 PM', N'logo.jpg', N'0923355522', N'0923456789', N'cskh@hotro.ecart.vn', N'logo.jpg', N'778/B1 Nguyễn Kiệm, P.4, Q. Phú Nhuận, TP. Hồ Chí Minh', CAST(N'2021-09-29T15:58:27.223' AS DateTime), 3, NULL, 0, CAST(N'2021-09-30T16:48:41.937' AS DateTime), 3)
INSERT [dbo].[InformationShop] ([Id], [Name], [Active], [TimeOpen], [Logo], [Phone], [Fax], [Email], [LogoFooter], [Address], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Shop Cart', 0, N'11:00 AM đến 11:00 PM', N'logo.jpg', N'0912233498', N'0901230406', N'bitis@gmail.com', N'logo.jpg', N'520/3/1 quốc lộ 13, phường Hiệp Bình Phước, Thủ Đức, Tp.HCM', CAST(N'2021-09-29T15:59:52.360' AS DateTime), 3, NULL, 0, CAST(N'2021-09-30T16:40:53.460' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[InformationShop] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufactures] ON 
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Bitis', N's-bitis.png', N'banner-hunter.jpg', N'“Nâng Niu Bàn Chân Việt” là câu tagline nổi tiếng của hãng giày Việt Nam Biti’s. Bền bỉ theo thời gian vốn là lí do thuyết phục đa số phụ huynh Việt ở những thập niên trước chọn sản phẩm của Biti’s. ', CAST(N'2022-09-21T20:08:21.840' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T07:51:32.643' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Adidas', N's-adidas.png', N'banner-hunter.jpg', N'Dạo bước trên đôi giày thể thao sành điệu của adidas. Lựa chọn trong số muôn ngàn màu sắc và kiểu dáng cá tính của các loại giày dép năng động dành cho nam, nữ và trẻ em.', CAST(N'2022-09-21T20:10:50.670' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T08:07:02.560' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Vans', N's-vans.png', N'banner-hunter.jpg', N'Giày Vans chính hãng được đại đa số giới trẻ biết đến là một trong những thương hiệu giày thể thao hàng đầu của thế giới, có sức ảnh hưởng lớn đến thời trang  và các nền văn hóa đường phố: hip-hop, BMX và Skaterboarding.', CAST(N'2022-09-22T05:32:29.543' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T08:17:43.993' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (4, N'Reebok', N's-reebok', N'banner-hunter.jpg', N'Nếu bạn cần một đôi giày thể thao chuyên dụng dành cho những hoạt động mạnh thì Reebok là một trong những sự lựa chọn cực kì uy tín. Reebok không chỉ mang chất lượng và công nghệ tiên tiến mà tính thẩm mỹ của nó rất cao, nhiều màu sắc để cho các bạn lựa chọn. ', CAST(N'2022-09-22T05:35:32.713' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T06:45:43.560' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (5, N'Nike', N's-nike.png', N'banner-hunter.jpg', N'Nike là một trong những thương hiệu giày dép lớn nhất trên thế giới. Họ đã sản xuất và phân phối rất nhiều loại giày cho cả nam và nữ, bao gồm cả giày chạy bộ, giày bóng rổ, giày thể thao và giày thời trang.', CAST(N'2022-09-22T05:36:28.887' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T06:50:37.163' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (6, N'Puma', N's-puma.png', N'banner-hunter.jpg', N'Puma là hãng thời trang thể thao nổi tiếng đến từ Đức, đem đến cho giới mộ điệu những sản phẩm thời trang như quần áo, giày, dép, phụ kiện và các loại dụng cụ thể thao. ', CAST(N'2022-09-22T05:59:01.767' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T07:42:34.460' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (7, N'Converse', N's-converse.png', N'banner-hunter.jpg', N'Converse là một trong những thương hiệu giày nổi tiếng và uy tín nhất trên thế giới với lịch sử phát triển hơn 100 năm. Đến 60% người Mỹ đều sở hữu ít nhất 1 đôi giày từ nhãn hiệu Converse. Với thiết kế đơn giản, trẻ trung và năng động, Converse trở thành một must-have item trong bộ sưu tập giày của tất cả mọi người, không chỉ riêng các sneakerhead.', CAST(N'2022-09-22T05:59:54.977' AS DateTime), 3, NULL, 0, CAST(N'2022-12-15T08:12:56.803' AS DateTime), 3)


SET IDENTITY_INSERT [dbo].[Manufactures] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuOne] ON 
SET IDENTITY_INSERT [dbo].[MenuOne] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
/*HUNTER NAM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (1, N'NAMH0001', N'Bitis Hunter X 2k22 DSMH02202', 971000, 16, 10, N'Giày thể thao nam Biti’s Hunter X 2k22 sử dụng công nghệ đế LiteFlex độc quyền cùng lớp lót kháng khuẩn và công nghệ massage mang đến cảm giác thoải mái, năng động cho đôi chân. Đây là sản phẩm chất lượng phù hợp cho mọi hoạt động thể thao đến dạo phố hay đi làm, đi chơi.                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Cấu tạo</td>
												<td>Mũ quai Liteknit dệt có độ co giãn, thoáng khí tối đa giữ cho bàn chân luôn thoáng mát, tránh mồ hôi.<br>
												Đế lót kháng khuẩn, công nghệ 6 điểm giúp massage lòng bàn chân êm ái.<br>
												Đế tiếp đất cao su cấu trúc chia rãnh và gồ ghề đảm bảo tính ma sát tốt nhất trên mọi địa hình.<br>
												Bộ đế LiteFlex với chất liệu Phylon ứng dụng công nghệ IP "Nhẹ như bay" chỉ từ 204g cùng độ đàn hồi hơn 40% giúp người dùng thoải mái di chuyển.</td>
											</tr>
											<tr>
												<td>Thiết kế</td>
												<td>Giày thể thao nam Biti’s Hunter X 2k22 thiết kế tem TPU định hình và trợ lực gót chân. Công nghệ đế LiteFlex độc quyền từ Bitis Hunter ứng dụng công nghệ sản xuất IP trên nền chất liệu Phylon không chỉ giúp đôi chân cảm giác "Nhẹ như bay" mà còn tăng vượt bậc độ đàn hồi, tạo độ linh hoạt và tự tin hơn khi chiều cao đế đạt tới 5cm.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày thể thao nam Biti’s Hunter X 2k22 có trọng lượng nhẹ, tính đàn hồi và ma sát cao đảm bảo sự năng động, linh hoạt di chuyển trên mọi địa hình khác nhau.<br>
												Lớp lót kháng khuẩn êm ái cùng công nghệ massage mang đến sự thoải mái, thư giãn cho bàn chân.<br>
												Thiết kế gọn nhẹ ôm chân với gam màu trung tính dễ dàng phối giày với nhiều loại trang phục khác nhau.<br>
												Giày thoáng khí tốt, không gây bí hay ra mồ hôi chân.<br>
												Giày thể thao nam Bitis Hunter X 2k22 đi kèm với dây buộc, giúp bạn điều chỉnh và cố định giày theo ý muốn.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_2.png', N'p1_2_2.png', N'p1_4_2.png', N'p1_5_2.png', N'p1_6_2.png', 1, 1, 2, N'bitis-hunter-x-2k22-dsmh02202', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1081000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (2, N'NAMH0002', N'Bitis Hunter Street Mid Americano DSMH03600', 761000, 16, 10, N'Bạn muốn tìm mẫu giày thể thao nam vừa có thiết kế năng động, vừa êm ái nhưng chưa tìm được sản phẩm ưng ý? Vậy thì giày thể thao nam Bitis Hunter Street Mid Americano DSMH03600 chính là lựa chọn tốt bạn không nên bỏ qua. Tìm hiểu chi tiết về sản phẩm trong phần dưới đây.                                      ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế giày được sử dụng công nghệ LiteTraction mới từ Biti’s Hunter nên giày có trọng lượng “nhẹ tênh”.
													Phần đế cao su cao cấp, chịu lực tốt, chống mài mòn và mang lại sự êm ái cho người dùng. Kết hợp cùng các rãnh trên bề mặt đế tạo độ bám dính cao, hạn chế trơn trượt xảy ra trong quá trình di chuyển.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Phần quai giày được làm bằng chất liệu vải canvas cao cấp, không chỉ mang lại sự mềm mại mà còn giúp đôi giày của bạn thêm đẳng cấp hơn.
													Bitis Hunter Street Mid Americano DSMH03600 có thân làm từ chất liệu vải Canvas 10 OZ cao cấp, chống nhăn chống thấm nước nên bạn có thể đi mưa, đi nắng thoải mái.
													Ngoài ra, thân giày không co rút mang đến sự thoải mái và bền đẹp cho đôi giày.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế tinh tế, trẻ trung và thời thượng giúp người mang thêm phần sang trọng và thời trang.
													Phần đế trợ lực, thoáng khí tạo cảm giác thoải mái dùng.
													Công nghệ sản xuất hiện đại cho phần đế nhẹ, linh hoạt.
													Dễ dàng phối với các trang phục.
													Phần đế cao 5cm giúp người dùng nâng chiều cao hiệu quả.
													Màu sắc đơn giản, mạnh mẽ và trẻ trung.
													Giày có dây buộc.
													Sử dụng giày trong các hoạt động hàng ngày như đi làm, đi chơi, đi học.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_2.png', N'p2_2_2.png', N'p2_4_2.png', N'p2_5_2.png', N'p2_6_2.png', 1, 1, 2, N'bitis-hunter-street-mid-americano-dsmh03600', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 891000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (3, N'NAMH0003', N'Bitis Hunter Core Classic DSMH05000', 736000, 16, 10, N'Một trong những mẫu giày “hot” nhất tại Bitis chắc chắn phải kể đến giày thể thao cao cấp nam Bitis Hunter Core Classic DSMH05000. Sản phẩm tạo ấn tượng với người tiêu dùng nhờ sở hữu thiết kế năng động, chất lượng cao cấp cùng nhiều tính năng tiện lợi. Cùng tìm hiểu thêm chi tiết về mẫu mã này qua bài viết dưới đây.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Giày có đế ngoài áp dụng công nghệ LITEFOAM 2.0 cùng chất liệu Phylon, giúp sản phẩm có trọng lượng “nhẹ như bay”.
													Đế sử dụng chất liệu cao cấp giúp nâng cao độ đàn hồi cao hơn 40%  tạo cảm nhẹ nhàng cho mỗi bước chân.
													Phần mặt đế có thiết kế các rãnh tạo độ bám dính cao, hạn chế trơn trượt xảy ra trong quá trình di chuyển.
													Phần đế giày Bitis Hunter Core Classic DSMH05000 cao 3cm, thấp dần về phía trước giúp người mang “hack dáng” tinh tế không bị phát hiện.
													Phần gót giày được bảo vệ bởi chất liệu cứng cáp, hỗ trợ định hình phom dáng cho đôi giày, nhờ đó hạn chế được tình trạng bị tuột gót.
													Lót đế của Bitis Hunter Core Classic DSMH05000 mềm mại, có khả năng chống nước và khử mùi hôi tốt.
													Phần đế ép khuôn ôm trọn bàn chân, mang đến độ tinh tế, cảm giác vừa vặn trong mỗi chuyển động.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Giày có phần quai mũ Liteknit cao cấp, có độ co dãn tốt giúp người mang thoải mái trong từng bước chân.
													Kiểu dáng giày năng động, mũi và form ôm vừa vặn từ gót lên đến cổ chân, thoải mái khi vận động và di chuyển.
													Thân giàu sử dụng chất liệu cao cấp, khả năng chống nước tốt, giúp hạn chế hầm, đổ mồ hôi hiệu quả.
													Mũi giày Bitis Hunter Core Classic DSMH05000 được bọc cứng, có lớp đệm cao su chắc chắn bảo vệ đầu ngón chân tối ưu.
													Cổ vớ có lớp đệm bông dày dặn êm ái, hạn chế tình trạng cước chân trong quá trình di chuyển.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày có kiểu dáng thời trang, năng động thích hợp với nhiều người dùng.
													Đế giày và thân giày sử dụng chất liệu cao cấp, mang đến sự thoải mái trên từng bước chân.
													Hệ thống rãnh ở mặt đế cho độ bám cao, giúp người mang hạn chế té ngã trong quá trình vận động.
													Thân giày có thiết kế thoáng khí giúp cho đôi chân luôn khô ráo, không đổ mô hôi hay mùi khó chịu.
													Thiết kế dây giày rời, người dùng có thể tự điều chỉnh cho phù hợp với cỡ chân.
													Nhiều phiên bản màu sắc để người dùng lựa chọn.
													Sản phẩm được sử dụng cho nhiều mục đích khác nhau như đi bộ, leo núi, chơi thể thao,...</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_2.png', N'p3_2_2.png', N'p3_4_2.png', N'p3_5_2.png', N'p3_6_2.png', 1, 1, 2, N'bitis-hunter-core-classic-dsmh05000', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 846000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (4, N'NAMH0004', N'Bitis Hunter Street Z Collection DSMH06200', 814000, 16, 10, 
N'Một đôi giày thể thao chất lượng là một “người bạn đồng hành” không thể thiếu của những dân chơi thể thao chuyên nghiệp. Theo đó, nếu chưa biết lựa chọn mẫu giày nào phù hợp, bạn hãy cân nhắc sản phẩm “quốc dân” vừa được Biti’s trình làng: Giày Thể Thao Nam Bitis Hunter Street Z Collection DSMH06200. Cùng tìm hiểu chi tiết nhé!                                                                           ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế giày thể thao áp dụng công nghệ LITETRACTION độc đáo, được thương hiệu Biti’s độc quyền phát triển và sử dụng, cho trải nghiệm sử dụng ấn tượng khó quên. Cụ thể, phần đế chế tác từ chất liệu EVA cao su cao cấp, mang lại cảm giác “nhẹ như bay” vì độ nhẹ chỉ 300g/chiếc. 
                                                    Không chỉ vậy, chất liệu EVA cao su còn có nhiều ưu điểm nổi bật như không sản sinh chất độc hại, mềm mịn như nhung, độ đàn hồi tốt, chống mài mòn hiệu quả và chịu lực cao. Qua đó, đảm bảo đôi chân an toàn, thoải mái và thông thoáng nhất có thể trong từng chuyển động.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Mũ quai sử dụng chất liệu da Si Nubuck với chất lượng cao cấp nhất. Từ đó tạo ra cảm giác bóng bẩy, mịn màng ở bề ngoài, song song êm mịn, thông thoáng nhờ cấu trúc chặt chẽ, linh hoạt theo từng sợi lớp Si. 
													Chưa kể, phần lót quai kết hợp giữa hai chất liệu ấn tượng, thun cá sấu và vải tricot với nhiều ưu điểm độc đáo. Chẳng hạn độ co giãn tối đa, mềm mịn, thoáng khí… Nhờ đó, form giày ít bị biến dạng, cong vênh hoặc nứt gãy sau một thời gian sử dụng, cũng như không gây đau mỏi nếu phải mang trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thể thao năng động, mạnh mẽ.
													Màu sắc hiện đại, phù hợp với nhiều lứa tuổi sử dụng khác nhau. 
													Chất liệu được Biti’s chọn lọc, xử lý và kiểm tra chất lượng kỹ càng, nhằm hạn chế phát sinh lỗi lầm ảnh hưởng đến chất lượng. 
													Mang lại cảm giác êm mịn, nhẹ nhàng và thông thoáng cho người dùng. 
													Quy trình sản xuất tinh gọn, được đội ngũ chuyên gia dày dặn kinh nghiệm kiểm soát và theo dõi sát sao, đảm bảo chất lượng đồng nhất. 
													Phù hợp với đa dạng mục đích sử dụng như đi học, đi chơi, đi làm, đi dự sự kiện… 
													Giá thành phải chăng, đi kèm vô số ưu đãi hấp dẫn khác. </td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_2.png', N'p4_2_2.png', N'p4_4_2.png', N'p4_5_2.png', N'p4_6_2.png', 1, 1, 2, N'bitis-hunter-street-z-collection-dsmh06200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 924000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (5, N'NAMH0005', N'Bitis Hunter Street Vintage DSMH04000', 633000, 16, 10, 
N'Giày Thể Thao Nam Bitis Hunter Street Vintage DSMH04000 tạo ấn tượng đặc biệt ngay từ cái nhìn đầu tiên nhờ diện mạo thể thao thu hút, bảng màu độc đáo, giá thành phải chăng và chất lượng cao cấp.                                                                      ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế giày được ép theo biên dạng khuôn một lớp, không dán tẩy, đảm bảo vừa vặn nhất với khuôn chân người Việt. 
													Độ cao 3 phân, có tác dụng “hack” chiều cao tự nhiên cho phái mạnh.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Thân trên được phủ bóng, tăng độ bền màu và tính thẩm mỹ cho sản phẩm. 
													Có khả năng chống bám bụi tốt nên dễ dàng vệ sinh, lau chùi khi cần thiết. 
													Chất liệu làm quai được xử lý kỹ càng, đạt tiêu chuẩn, mang lại cảm giác thoải mái nhất khi mang.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thể thao thông dụng, nam tính, thích hợp với nhiều độ tuổi khác nhau. Đồng thời kết hợp phần cổ giày cột dây (dạng Slip On), giúp tháo - xỏ giày dễ dàng. 
													Form giày cứng cáp, ít cong vênh và biến dạng sau một thời gian sử dụng, vận động nhiều.  
													Màu sắc ấn tượng, thời trang và dễ phối trang phục. 
													Chất liệu được chọn lọc, xử lý cẩn thận và áp dụng công nghệ sản xuất hiện đại nhất. 
													Đế thiết kế rãnh chống trượt hiệu quả trên hầu hết mọi bề mặt.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Dây giày chắc chắn.
													Túi chống ẩm.
													Giày.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_2.png', N'p5_2_2.png', N'p5_4_2.png', N'p5_5_2.png', N'p5_6_2.png', 1, 1, 2, N'bitis-hunter-street-vintage-dsmh04000', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 743000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (6, N'NAMH0006', N'Bitis Hunter X Midnight EZ-STRAP DSMH07600', 1207000, 16, 10, 
N'Nếu chưa biết chọn mua đôi giày thể thao cho phái mạnh nào vừa chất lượng, vừa thu hút thì đừng ngần ngại sở hữu Giày Thể Thao Nam Bitis Hunter X Midnight EZ-STRAP DSMH07600. Bởi lẽ, sản phẩm “ghi điểm” ngay với diện mạo chất chơi, mạnh mẽ cùng nhiều ưu điểm nổi trội về màu sắc, chất liệu… Cùng tìm hiểu chi tiết hơn nhé!                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Điểm đặc biệt đầu tiên ở phần đế giày là công nghệ LiteFlex độc quyền từ thương hiệu Bitis, dành cho riêng dòng giày thể thao Hunter. Cụ thể, khi ứng dụng công nghệ này, phần đế được tạo tác từ chất liệu IP cao cấp với nhiều điểm mạnh như êm ái, trọng lượng nhẹ, chống nước tốt… Song song thực hiện sản xuất trên nền chất liệu Phylon đỉnh cao, đế giày không chỉ cho cảm giác "nhẹ như bay" mà còn tăng vượt bậc độ đàn hồi >40% cũng như độ linh hoạt. Qua đó mọi chuyển động của đôi chân đều cực kỳ thoải mái. 
													Chưa kể, người sử dụng còn thêm phần tự tin hơn khi được “hack” dáng một cách tự nhiên vì chiều cao đế được cải thiện đạt tới 5cm. 
													Đế lót làm từ chất liệu kháng khuẩn tối ưu, ngăn chặn các bệnh lý nguy hiểm do mồ hôi tích tụ. Hơn nữa, phần lót này còn áp dụng công nghệ 6 điểm massage, bố trí trên toàn bộ lòng bàn chân. Từ đó tạo cảm giác siêu êm, siêu nhẹ cho người dùng.  
													Tích hợp thêm tem TPU định hình, có khả năng đàn hồi và chống mài mòn tốt. Nhờ đó hỗ trợ trợ lực gót chân hiệu quả, tránh tình trạng đau nhức gót nếu vận động mạnh.  
													Cuối cùng, phải kể đến phần tiếp đất chế tác từ cao su chất lượng cao và cấu trúc chia rãnh dàn đều. Qua đó đảm bảo tính ma sát tốt nhất cho đôi chân trên mọi địa hình.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Mũ quai của Bitis Hunter X Midnight EZ-STRAP DSMH07600 ứng dụng công nghệ LITEKNIT dệt chỉn chu. Không chỉ mang lại độ co dãn tối đa, hạn chế mất form giày sau một thời gian sử dụng, mà sản phẩm còn đảm bảo thông thoáng khí, thấm hút mồ hôi tốt, nhằm hạn chế hiện tượng nóng ẩm bên trong chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, phối màu hiện đại, phù hợp với nhiều độ tuổi khác nhau.
													Chất liệu được chọn lọc, xử lý cẩn trọng theo đúng tiêu chuẩn. 
													Đảm bảo thực hiện nghiêm ngặt quy trình chế tác, cho chất lượng sản phẩm tốt nhất. 
													Ứng dụng công nghệ LITEFLEX độc quyền từ Biti’s, mang lại cảm giác thoải mái, nhẹ nhàng. 
													Bảo đảm không ám mùi, không ẩm mốc.
													Hạn chế tối đa cảm giác đau nhức, mỏi chân nếu dùng lâu. 
													Dễ dàng vệ sinh, lau chùi.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng dép làm từ giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Đôi dép.
													Giấy gói.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p6_1_2.png', N'p6_2_2.png', N'p6_4_2.png', N'p6_5_2.png', N'p6_6_2.png', 1, 1, 2, N'bitis-hunter-x-midnight-ez-strap-dsmh07600', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1417000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (7, N'NAMH0007', N'Bitis Hunter X 1.0 Festive DSMH07700', 981000, 16, 10, 
N'Được lấy ý tưởng từ hình tượng những chiến binh mạnh mẽ, mẫu giày thể thao nam Hunter X Festive Amor 1.0 DSMH07700 đang là dòng sản phẩm nằm trong top best seller của Biti’s. Không chỉ được đón nhận nhiệt tình từ phái nam mà mẫu giày unisex này còn được cả phái nữ lựa chọn. Để biết thêm chi tiết về sản phẩm, bạn hãy tham khảo bài viết dưới đây.                                                ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế ngoài: Hunter X Festive Amor 1.0 có một chiếc đế được tạo ra từ công nghệ LiteFlex 1.0 - công nghệ độc quyền của hãng kết hợp chất liệu IP và công nghệ Injection EVA đã tạo nên một sản phẩm với trọng lượng siêu nhẹ, dẻo dai mà còn có độ bền cao.
												Đế trong( Lót giày): Giày được thiết kế với đệm lót làm từ chất liệu Ortholite kháng khuẩn, thun cá sấu giúp ngăn mùi, công nghệ 6 điểm massage lòng bàn chân. Thiết kế form ôm trọn vừa vặn lòng bàn chân tạo cho người dùng cảm giác êm ái, thông thoáng chứ không bị bó cứng hay lỏng khi mang.
												Đế giữa: Hunter X Festive Amor 1.0 có phần đế giữa 5cm giúp người dùng tự tin nâng chiều cao một cách tinh tế và hoàn hảo. Tẩy cao su tự nhiên tăng cường ở phần mũi & gót, tăng độ ma sát, bền bỉ và đem lại cảm giác nhẹ như bay khi mang.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Giày thể thao Nam Bitis Hunter X 1.0 Festive Armor DSMH07700 sử dụng công nghệ LiteKnit thiết kế phần mũi quai vải dệt có độ co giãn tốt, mềm mại, thoáng khí tạo cảm giác rất dễ chịu.
													Phần lót quai làm từ chất liệu thun xốp và thun cá sấu có tính năng kháng khuẩn,hút ấm, khử mùi và tăng độ êm ái cho giày khi ma sát chân. Các chi tiết đắp quai và gia cố sử dụng chất liệu Si Nubuck bế khuôn định hình 3D, dây filament & ép nosew giúp tạo điểm nhấn trang trí.
													Phần má quai ôm trọn bàn chân bằng đường cắt cúp góc cạnh tựa như những phần áo giáp kiên cố, bảo vệ đôi chân trong mọi vận động.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày có form dáng mạnh mẽ, thiết kế hầm hố, bụi bặm nhưng lại vô cùng thời trang đem lại sự nam tính, khoẻ khoắn và cá tính cho người dùng.
													Công nghệ thoáng khí, khả năng kháng khuẩn, hút ẩm và khử mùi giúp đôi chân bạn luôn khô ráo và dễ chịu.
													Giày được làm từ chất liệu cao cấp kết hợp với chu trình công nghệ cao nên chất lượng sản phẩm luôn được đảm bảo.
													Sản phẩm có bảng màu phối trung tính (Đen và Xám), phù hợp với nhiều độ tuổi khác nhau.
													Phù hợp với đa dạng mục đích sử dụng như đi học, đi làm, đi chơi, luyện tập thể thao…
													Giày có trang bị dây buộc tiện lợi.
													Dễ dàng vệ sinh, ít bị phai hoặc mất màu.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt nhất.
													Giày.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p7_1_2.png', N'p7_2_2.png', N'p7_4_2.png', N'p7_5_2.png', N'p7_6_2.png', 1, 1, 2, N'bitis-hunter-x-1.0-festive-dsmh07700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1101000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (8, N'NAMH0008', N'Bitis Hunter Core 3D-Airmesh DSMH08700', 736000, 16, 10, 
N'Hiện tại, giày thể thao nam Bitis Hunter Core 3D-Airmesh DSMH08700 đang được rất nhiều khách hàng Việt Nam săn đón. Bởi lẽ, không chỉ sở hữu thiết kế hiện đại và thời trang, sản phẩm còn đảm bảo chất lượng cao cấp và bền bỉ. Cùng tìm hiểu chi tiết nhé!                                                         ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Phần đế làm từ chất liệu Phylon cao cấp, tạo điểm nhấn ấn tượng ngay từ cái nhìn đầu tiên. Lý do là Phylon sở hữu vô vàn ưu điểm nổi bật, không thể phủ nhận như trọng lượng siêu nhẹ, độ bền siêu cao, có tính linh hoạt và đàn hồi, khó biến dạng hoặc cong vênh khi vận động mạnh và có độ giảm chấn thương cao. Chính những điều này tạo ra cảm giác êm ái, thoải mái và chắc chân trong từng chuyển động. 
													Đặc biệt ứng dụng thêm công nghệ LiteFlex cho phần đế trong lúc hoàn thiện đế giày Bitis Hunter Core 3D-Airmesh. Điều này góp phần cải thiện tối đa đặc tính dẻo dai và bền chắc của sản phẩm để đế ít bị cong vênh, nứt gãy nếu người dùng vận động thể thao mạnh (như chạy, nhảy…). 
													Song song, phải nhắc đến mặt tẩy cao su, kết hợp hoa văn rãnh sâu lòng nhằm mục đích tăng cường độ ma sát, hạn chế trơn trượt. Qua đó giúp đảm bảo an toàn tối đa cho người sử dụng trong trường hợp di chuyển ở mặt đường trơn, ẩm ướt. </td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Biti’s chọn lọc chất liệu cực kỳ cao cấp. Sau đó trải qua quá trình xử lý cẩn thận theo đúng tiêu chuẩn chất lượng. Chính vì đó mà sản phẩm có độ bền bỉ cao nhất. 
													Quai giày được làm từ chất liệu Si Nubuck dày dặn, độ bền cao, ít co giãn và thấm hút mồ hôi tốt. Nhờ đó hạn chế cảm giác ẩm ướt hoặc biến dạng form giày nếu phải mang giày trong thời gian dài. 
													Kết hợp cùng công nghệ lượt dệt 3D và Air Mesh hiện đại, từ đó tạo ra cảm giác thông thoáng, mát mẻ song song độ co dãn tốt, ít thấm nước. 
													Giày thể thao nam Bitis Hunter Core 3D-Air Mesh DSMH08700 bố trí thêm dây buộc, giúp người sử dụng điều chỉnh độ rộng dễ dàng. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thấm đượm phong cách thời trang tinh gọn, đề cao sự thoải mái cho người sử dụng. Đồng thời đính kèm các đường nét uyển chuyển, ấn tượng. 
													Sản phẩm có bảng màu phối trung tính (Đen hoặc Xám), phù hợp với nhiều độ tuổi khác nhau. 
													Biti’s lựa chọn chất liệu cẩn trọng và xử lý cẩn thận theo đúng quy trình tiêu chuẩn. Từ đó cho ra thành phẩm có chất lượng cao cấp nhất, cùng độ bền bỉ lâu dài hơn bao giờ hết.
													Phù hợp với đa dạng mục đích sử dụng như đi học, đi làm, đi chơi, luyện tập thể thao… 
													Khả năng thấm hút mồ hôi, hút ẩm vô cùng tốt. Từ đó hạn chế cảm giác ẩm ướt, gây cảm giác bí bách, khó chịu…  
													Phần lót đệm êm ái, hạn chế nhức mỏi nếu mang giày lâu, hoặc vận động mạnh. 
													Dễ dàng làm sạch và làm khô khi cần.
													Ít bị phai màu, mất màu hoặc bong tróc, làm ảnh hưởng đến tính thẩm mỹ của sản phẩm.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p8_1_2.png', N'p8_2_2.png', N'p8_4_2.png', N'p8_5_2.png', N'p8_6_2.png', 1, 1, 2, N'bitis-hunter-core-3d-airmesh-dsmh08700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 846000)
/*SANDAL NAM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (9, N'NAMS0001', N'Sandal Eva Bitis Hunter HEM000700', 460000, 16, 10, 
N'Sandal Thể Thao Eva Phun Nam Bitis Hunter HEM000700 là một sản phẩm rất được phái nam ưa chuộng, vậy, sản phẩm có những ưu điểm như thế nào? Hãy cùng tìm hiểu ngay dưới đây nhé!                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế Sandal</td>
												<td>Đế Sandal Thể Thao Eva Phun Nam Bitis Hunter HEM000700 được làm từ chất liệu Ip uốn gấp đàn hồi tốt, được xử lý và kiểm tra theo quy trình tiêu chuẩn, nhằm bảo đảm chất lượng bền lâu nhất cho người sử dụng. 
													Bên cạnh đó, đế Ip uốn gấp đàn hồi tốt còn có vô số ưu điểm như có khả năng chống mài mòn, trơn trượt, độ đàn hồi cao, ít bị cong vênh khi tác động lực, hạn chế bám bụi bẩn, dễ dàng vệ sinh… Đế có độ cao có thể nâng chiều cao của người dùng một cách tinh tế.
													Bên dưới đế thiết kế thêm rãnh chống trượt dày đặc, phân bổ khắp toàn bộ bề mặt, giúp bảo đảm an toàn cho người dùng trong từng chuyển động.</td>
											</tr>
											<tr>
												<td>Quai sandal</td>
												<td>Sản phẩm có phần quai Si Nubucks cao cấp, mềm mại, có độ bền màu cao.
													Quai da được thiết kế với logo của Bitis vô cùng đẹp mắt.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, nam tính và năng động, dễ phối đồ.
													Thân trên được thiết kế với màu sắc hài hòa, đường chỉ may tinh tế, chắc chắn.
													Có thể sử dụng cho nhiều mục đích hàng ngày khác nhau như đi làm, đi chơi, đi học…
													Giá thành tốt, chất lượng cao, kèm nhiều chương trình khuyến mãi hấp dẫn.
													Đa dạng màu sắc và kích cỡ, đáp ứng tốt hầu hết mọi nhu cầu của khách hàng.
													Chất liệu đế dép, quai dép được chọn lọc và xử lý cẩn thận, tỉ mỉ.
													Chế độ bảo hành uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Sandal.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_3.png', N'p1_2_3.png', N'p1_4_3.png', N'p1_5_3.png', N'p1_6_3.png', 1, 1, 3, N'sandal-eva-bitis-hunter-hem000700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 572000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (10, N'NAMS0002', N'Sandal Nam Bitis BYM000200', 437000, 16, 10, 
N'Không thể phủ nhận rằng sandal là loại giày sở hữu vô vàn ưu điểm nổi bật như tiện lợi, thoải mái, thoáng mát, chắc chắn. Nếu bạn dự tính mua cho mình một đôi sandal trong thời gian tới nhưng chưa ưng ý sản phẩm nào thì hãy cân nhắc Sandal Nam Bitis BYM000200. Sản phẩm được đông đảo người dùng Việt Nam yêu thích bởi chất lượng bền bỉ, màu sắc thời trang, kiểu dáng tiện lợi và giá thành phải chăng. ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Ngay từ cái nhìn đầu tiên, hầu hết trẻ nhỏ đều ưng ý khuôn đế Biti’s vì khá vừa vặn đôi chân, ôm nhẹ nhàng và mang lại cảm giác “bám” chắc chắn. Qua đó hạn chế tình trạng trượt gót nếu di chuyển nhanh. 
													Phần đế làm từ chất liệu cao su cao cấp, được xử lý và sản xuất theo đúng quy trình tiêu chuẩn, giúp bảo đảm chất lượng tốt nhất, trăm sản phẩm như một và phòng tránh sai sót lỗi tối đa, làm ảnh hưởng đến trải nghiệm sử dụng. 
													Đồng thời, phần đế đó được ép khuôn cẩn thận, đảm bảo không biến dạng hoặc cong vênh nếu tác động nhiệt hoặc lực (ở một mức độ nhất định). Từ đó, sản phẩm luôn giữ form dáng, màu sắc bền lâu, tạo điều kiện cho người tiêu dùng tiết kiệm chi phí tối đa. </td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Thân giày BYM000200 được chế tác từ chất liệu Filament, nổi bật với vô vàn ưu điểm ấn tượng. Chẳng hạn như có khả năng chống nước tốt, ít bám bụi bẩn giúp người dùng vệ sinh, lau chùi nhanh chóng, cũng như giữ màu bền lâu, ít bị phai màu, tăng tính thẩm mỹ. Chưa dừng lại ở đó, Filament còn chống nhăn tốt, khó bị mài mòn, giữ form tốt, giãn nở hiệu quả, giúp phần quai luôn đẹp như mới. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thích hợp sử dụng cho nhiều mục đích thường ngày như đi học, đi chơi… 
													Màu sắc thời trang, nam tính, dễ dàng kết hợp với nhiều kiểu trang phục khác nhau. 
													Form giày cứng cáp, độ bền cao.
													Chất liệu chất lượng cao cấp, ít lỗi sai sót. 
													Mang lại cảm giác sử dụng thoải mái, thân thiện người dùng. 
													Không tạo ra cảm giác bí bách, khó chịu. 
													Giá thành phải chăng, phù hợp với tài chính người Việt.
													Chính sách bảo hành uy tín, tận tâm.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng làm từ giấy chống thấm, chống bụi tốt. 
													Giày. 
													Giấy hút ẩm. </td>
											</tr>				
										</tbody>
									</table>', N'p2_1_3.png', N'p2_2_3.png', N'p2_4_3.png', N'p2_5_3.png', N'p2_6_3.png', 1, 1, 3, N'sandal-nam-bitis-bym000200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 547000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (11, N'NAMS0003', N'Sandal Si Nam Bitis BPM000700', 373000, 16, 10, 
N'Giày sandal là một trong những item rất phổ biến trong tủ đồ của nam giới. Mẫu giày sandal si nam Bitis BPM000700 là sản phẩm ra mắt với phong cách trẻ trung, thanh lịch. Thích hợp cho mọi điều kiện thời tiết. Với thiết kế mở, giày sẽ đem đến cho bạn đôi chân mát mẻ trong mùa hè. Với những ngày mưa gió thì đây chính là "vũ khí lợi hại" giúp đôi chân khô thoáng nhờ khả năng chống nước tối đa, hạn chế thấp sự ẩm ướt.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Bitis BPM000700 sở hữu phần đế ngoài được làm từ PU cao cấp bền bỉ và chắc chắn
													Đế cao su đi lên chân êm ái, mềm nhẹ và thoải mái
													Lót giày Eva giúp đôi chân được bảo vệ, tránh tình trạng đau chân khi di chuyển
													Sản phẩm giày sandal thiết có các rãnh ở đế giúp tăng độ ma sát, hạn chế trơn trượt trong mọi hoàn cảnh thời tiết</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Giày được làm từ chất liệu da tổng hợp êm ái, bền chắc, mang đến cho đôi chân sự thông thoáng và dễ chịu
													Các đường may trên thân giày vô cùng tỉ mỉ, những đường chỉ nổi bắt mắt ở hai bên hông giúp tăng thêm sự tinh tế cho sản phẩm
													Dây đeo chắc chắn, phần quai dán tiện dụng, ôm chân cho bạn vẻ năng động, thời trang</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Bitis BPM000700 với kiểu dáng tối giản nhưng có độ linh hoạt và bền cao, giúp chàng trai trở nên hoàn hảo và thoải mái hoạt động
													Phần đệm mút co giãn tốt và chống vi khuẩn sẽ hỗ trợ bàn chân tuyệt vời, giúp bạn có thể thoải mái vận động quanh năm
													Chất liệu giày là da tổng hợp với khả năng chống nước và độ bám cao ngay cả những nơi có địa hình trơn trượt, ẩm ướt
													Sản phẩm hỗ trợ sự rộng rãi cho bàn chân ở mức tối đa với phần quai dán tiện lợi, không gây ra cảm giác khó chịu, đau chân khi mang
													Với thiết kế đơn giản mà giày sandal nam Bitis BPM000700 cá tính sở hữu sẽ giúp bạn dễ dàng mix với nhiều loại trang phục khác nhau. Bạn có thể sử dụng đôi sandal này trong bất cứ trường hợp nào từ đi học, dạo phố, đi chơi, đi làm.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày làm từ giấy chống ẩm tốt.
													Giấy gói.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_3.png', N'p3_2_3.png', N'p3_4_3.png', N'p3_5_3.png', N'p3_6_3.png', 1, 1, 3, N'sandal-si-nam-bitis-bpm000700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 483000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (12, N'NAMS0004', N'Sandal Si Nam Bitis BPM000700', 373000, 16, 10, 
N'Một đôi giày thể thao chất lượng là một “người bạn đồng hành” không thể thiếu của những dân chơi thể thao chuyên nghiệp. Theo đó, nếu chưa biết lựa chọn mẫu giày nào phù hợp, bạn hãy cân nhắc sản phẩm “quốc dân” vừa được Biti’s trình làng: Giày Thể Thao Nam Bitis Hunter Street Z Collection DSMH06200. Cùng tìm hiểu chi tiết nhé!', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Bitis BPM000700 sở hữu phần đế ngoài được làm từ PU cao cấp bền bỉ và chắc chắn
													Đế cao su đi lên chân êm ái, mềm nhẹ và thoải mái
													Lót giày Eva giúp đôi chân được bảo vệ, tránh tình trạng đau chân khi di chuyển
													Sản phẩm giày sandal thiết có các rãnh ở đế giúp tăng độ ma sát, hạn chế trơn trượt trong mọi hoàn cảnh thời tiết.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Giày được làm từ chất liệu da tổng hợp êm ái, bền chắc, mang đến cho đôi chân sự thông thoáng và dễ chịu
													Các đường may trên thân giày vô cùng tỉ mỉ, những đường chỉ nổi bắt mắt ở hai bên hông giúp tăng thêm sự tinh tế cho sản phẩm
													Dây đeo chắc chắn, phần quai dán tiện dụng, ôm chân cho bạn vẻ năng động, thời trang.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Bitis BPM000700 với kiểu dáng tối giản nhưng có độ linh hoạt và bền cao, giúp chàng trai trở nên hoàn hảo và thoải mái hoạt động
													Phần đệm mút co giãn tốt và chống vi khuẩn sẽ hỗ trợ bàn chân tuyệt vời, giúp bạn có thể thoải mái vận động quanh năm
													Chất liệu giày là da tổng hợp với khả năng chống nước và độ bám cao ngay cả những nơi có địa hình trơn trượt, ẩm ướt
													Sản phẩm hỗ trợ sự rộng rãi cho bàn chân ở mức tối đa với phần quai dán tiện lợi, không gây ra cảm giác khó chịu, đau chân khi mang
													Với thiết kế đơn giản mà giày sandal nam Bitis BPM000700 cá tính sở hữu sẽ giúp bạn dễ dàng mix với nhiều loại trang phục khác nhau. Bạn có thể sử dụng đôi sandal này trong bất cứ trường hợp nào từ đi học, dạo phố, đi chơi, đi làm.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_3.png', N'p4_2_3.png', N'p4_4_3.png', N'p4_5_3.png', N'p4_6_3.png', 1, 1, 3, N'sandal-si-nam-bitis-bpm000700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 493000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (13, N'NAMS0005', N'Sandal Thể Thao Eva Phun Nam Bitis HEM000500', 457000, 16, 10, 
N'Nếu bạn đang cảm thấy bí bách khi mang những đôi giày kín trong những ngày hè oi bức như hiện nay, hãy tham khảo những mẫu sandal giản dị nhưng vẫn mang phong cách lịch sự. Để đáp ứng được tiêu chí đó, chúng tôi xin giới thiệu tới các bạn Sandal Thể Thao Eva Phun Nam Bitis HEM000500. Với thiết kế sandal truyền thống nhưng chất liệu hiện đại tạo nên sự thoải mái khi đeo và bền bỉ theo thời gian. Chắc chắn đây sẽ là lựa chọn đáng cân nhắc. Hãy cùng Biti’s tìm hiểu chi tiết về dòng sản phẩm này nhé!', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Sandal Eva Phun Nam Bitis HEM000500 có phần đế giày làm từ chất liệu IP cao cấp. Loại chất liệu này được tạo ra từ cao su có đủ các đặc tính mềm dẻo linh hoạt nên có khả năng uốn gấp, đàn hồi rất tốt giúp giảm thiểu tác động lên chân, các cơ và xương khớp khi tiếp xúc với mặt đất. Vì vậy các bạn có thể hoàn toàn yên tâm mang trong cả ngày dài mà không lo đau nhức mệt mỏi.
													Đế sandal có phần mặt dưới được thiết kế nhiều rãnh chống chượt đan xen nhau hình mắt lưới giúp tăng tối đa độ bám khi tiếp xúc với các bề mặt khác nhau. Thiết kế này đặc biệt hữu ích cho người đeo khi hoạt động ngoài trời hay các bề mặt trơn trượt ẩm ướt, tạo cảm giác an toàn khi mang.
													Lớp lót bên trong sandal được đệm êm ái và tạo hình phù hợp với mọi khuôn bàn chân với độ nghiêng phù hợp giúp bạn cảm thấy thoải mái khi mang trong thời gian dài. </td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Sandal Thể Thao Eva Phun Nam Bitis HEM000500 có quai được làm từ chất liệu Si Nubucks cao cấp lót bên trong tạo độ êm ái nhẹ nhàng cho người đeo, bên ngoài được may thêm lớp vải dù tăng độ bền cho sản phẩm. Sự kết hợp hoàn hảo này mang lại cho bạn một sản phẩm chất lượng cao và tuổi thọ lâu dài.
													Trên quai có thiết kế khóa hộp độ bền cao với tính năng khóa mở dễ dàng thao tác giúp bạn đeo và tháo nhanh chóng chỉ bằng một tay.
													Quai có thiết kế năng động, chắc chắn ôm trọn bàn chân giúp người mang di chuyển thuận lợi dễ dàng trong thời gian dài nhưng vẫn đảm bảo sự thông thoáng không gây cảm giác bí bách khó chịu.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Với thiết kế đơn giản nhưng vẫn có phần năng động và sang trọng nên sẽ phù hợp với nhiều phong cách và trang phục khác nhau.
													Đế giày Sandal Thể Thao Eva Phun Nam Biti’s HEM000500 được làm từ chất liệu IP cao su cao cấp, có tính đàn hồi cao nên mang lại cảm giác êm ái ngay cả khi mang trong thời gian dài.
													Thiết kế quai trong từ chất liệu Si Nubucks êm ái và bện ngoài bằng quai dù giúp tăng độ thông thoáng và thoải mái cho bàn chân cả ngày dưới mọi thời tiết dù ngày nắng hay ngày mưa.
													Sản phẩm có 3 lựa chọn màu trung tính (đen, kem và xám), phù hợp với nhiều độ tuổi phái mạnh và dễ dàng phối đồ được nhiều phong cách khác nhau.
													Sản phẩm có dải size rộng từ 39-44 phù hợp với đa dạng kích thước bàn chân.
													Giày Sandal Thể Thao Eva Phun Nam Bitis HEM000500 phù hợp với nhiều mục đích khách nhau như đi học, đi chơi, đi làm hay đi dạo, v.v...
													Dễ dàng vệ sinh và bảo quản.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Dây giày chắc chắn.
													Túi chống ẩm.
													Giày.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_3.png', N'p5_2_3.png', N'p5_4_3.png', N'p5_5_3.png', N'p5_6_3.png', 1, 1, 3, N'sandal-eva-phun-nam-bitis-hem000500', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 567000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (14, N'NAMS0006', N'Sandal Si Cao Su Nam Bitis BYM000100', 437000, 16, 10, 
N'Trong bước chân đầy tự tin và phong cách, Sandal Si Cao Su Nam Bitis BYM 000100 xuất hiện như một người bạn đồng hành đáng tin cậy của phái mạnh. Với sự kết hợp hoàn hảo giữa tính tiện dụng và thời trang, đôi sandal này không chỉ đáp ứng nhu cầu sử dụng hàng ngày mà còn mang đến vẻ ngoài nam tính và lôi cuốn.                                                                        ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế giày của Sandal Nam Bitis BYM 000100 được làm từ chất liệu cao su cao cấp, có khả năng đàn hồi và linh hoạt, giúp đế giày dễ dàng uốn cong theo hình dạng của chân, tạo sự thoải mái và tự nhiên trong mỗi bước chân.
													Mặt đế thiết kế rãnh cho khả năng hạn chế sự trơn trượt cực tốt, khi di chuyển ở các địa hình dốc và ẩm ướt hay khi đi trên các bề mặt mịn và ướt như sàn nhà, đường phố ẩm ướt hoặc các bãi biển.
													Chất liệu cao su có tính bền bỉ, giúp đôi sandal có khả năng chịu đựng tốt và tuổi thọ cao, giúp bạn sử dụng trong thời gian dài mà vẫn giữ được sự đẳng cấp và tiện ích.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Quai Si được thiết kế chắc chắn và ôm sát gót chân, giúp người mang cảm thấy ổn định và thoải mái khi di chuyển. Sản phẩm sử dụng khóa gài hoặc khóa cài dễ điều chỉnh, giúp bạn dễ dàng tăng hoặc giảm độ rộng của thân sandal để vừa vặn với kích cỡ chân của mình.
													Quai Si được thiết kế với các mẫu mã và màu sắc đa dạng, phù hợp với nhiều phong cách thời trang nam, từ cá tính đến trẻ trung.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Sandal Si Cao Su Nam Bitis có thiết kế nam tính và thời trang, với các màu sắc và kiểu dáng đa dạng. Đôi sandal này dễ dàng kết hợp với nhiều trang phục, từ quần short, quần jeans cho đến quần kaki, tạo nên phong cách cá nhân và độc đáo cho người mang.
													Với đề là chất liệu cao su cao cấp cộng thêm thân sandal quai Si chắc chắn giúp đôi sandal mang lại cảm giác thoải mái và êm ái khi di chuyển suốt cả ngày.
													Với tính năng chống trơn trượt và chống nước, đôi sandal này phù hợp với nhiều hoạt động ngoài trời như đi dạo, đi biển, dã ngoại hay thậm chí đi làm, tạo nên sự linh hoạt và đa năng trong việc sử dụng.
													Sandal Nam Bitis BYM000100 cung cấp giá trị tốt với chất liệu cao cấp và thiết kế thời trang, là một lựa chọn hợp lý và phù hợp với ngân sách của nhiều người.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng dép làm từ giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Đôi dép.
													Giấy gói.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p6_1_3.png', N'p6_2_3.png', N'p6_4_3.png', N'p6_5_3.png', N'p6_6_3.png', 1, 1, 3, N'sandal-si-cao-su-nam-bitis-bym000100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 547000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (15, N'NAMS0007', N'Sandal Eva Phun Nam Bitis BEM001001', 391000, 16, 10, 
N'Trong bước chân đầy tự tin và phong cách, Sandal Si Cao Su Nam Bitis BYM 000100 xuất hiện như một người bạn đồng hành đáng tin cậy của phái mạnh. Với sự kết hợp hoàn hảo giữa tính tiện dụng và thời trang, đôi sandal này không chỉ đáp ứng nhu cầu sử dụng hàng ngày mà còn mang đến vẻ ngoài nam tính và lôi cuốn.                                                                       ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Đế giày của Sandal Eva Phun Nam Bitis BEM001001 được làm từ chất liệu cao su cao cấp, có khả năng đàn hồi và linh hoạt, giúp đế giày dễ dàng uốn cong theo hình dạng của chân, tạo sự thoải mái và tự nhiên trong mỗi bước chân.
													Mặt đế thiết kế rãnh cho khả năng hạn chế sự trơn trượt cực tốt, khi di chuyển ở các địa hình dốc và ẩm ướt hay khi đi trên các bề mặt mịn và ướt như sàn nhà, đường phố ẩm ướt hoặc các bãi biển.
													Chất liệu cao su có tính bền bỉ, giúp đôi sandal có khả năng chịu đựng tốt và tuổi thọ cao, giúp bạn sử dụng trong thời gian dài mà vẫn giữ được sự đẳng cấp và tiện ích.</td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Sandal Eva Phun Nam Bitis BEM001001 có quai được làm từ chất liệu Si Nubucks cao cấp lót bên trong tạo độ êm ái nhẹ nhàng cho người đeo, bên ngoài được may thêm lớp vải dù tăng độ bền cho sản phẩm. Sự kết hợp hoàn hảo này mang lại cho bạn một sản phẩm chất lượng cao và tuổi thọ lâu dài.
													Trên quai có thiết kế khóa hộp độ bền cao với tính năng khóa mở dễ dàng thao tác giúp bạn đeo và tháo nhanh chóng chỉ bằng một tay.
													Quai có thiết kế năng động, chắc chắn ôm trọn bàn chân giúp người mang di chuyển thuận lợi dễ dàng trong thời gian dài nhưng vẫn đảm bảo sự thông thoáng không gây cảm giác bí bách khó chịu.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày có form dáng mạnh mẽ, thiết kế hầm hố, bụi bặm nhưng lại vô cùng thời trang đem lại sự nam tính, khoẻ khoắn và cá tính cho người dùng.
													Công nghệ thoáng khí, khả năng kháng khuẩn, hút ẩm và khử mùi giúp đôi chân bạn luôn khô ráo và dễ chịu.
													Giày được làm từ chất liệu cao cấp kết hợp với chu trình công nghệ cao nên chất lượng sản phẩm luôn được đảm bảo.
													Sản phẩm có bảng màu phối trung tính (Đen và Xám), phù hợp với nhiều độ tuổi khác nhau.
													Phù hợp với đa dạng mục đích sử dụng như đi học, đi làm, đi chơi, luyện tập thể thao…
													Giày có trang bị dây buộc tiện lợi.
													Dễ dàng vệ sinh, ít bị phai hoặc mất màu.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt nhất.
													Giày.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p7_1_3.png', N'p7_2_3.png', N'p7_4_3.png', N'p7_5_3.png', N'p7_6_3.png', 1, 1, 3, N'sandal-eva-phun-nam-bitis-bem001001', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 412000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (16, N'NAMS0008', N'Sandal Eva Phun Nam Bitis BEM001000', 368000, 16, 10, 
N'Trong bước chân đầy tự tin và phong cách, Sandal Si Cao Su Nam Bitis BYM 000100 xuất hiện như một người bạn đồng hành đáng tin cậy của phái mạnh. Với sự kết hợp hoàn hảo giữa tính tiện dụng và thời trang, đôi sandal này không chỉ đáp ứng nhu cầu sử dụng hàng ngày mà còn mang đến vẻ ngoài nam tính và lôi cuốn.                                                                       ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Sandal Eva Phun Nam Bitis BEM001000 được làm từ chất liệu cao su cao cấp, có khả năng đàn hồi và linh hoạt, giúp đế giày dễ dàng uốn cong theo hình dạng của chân, tạo sự thoải mái và tự nhiên trong mỗi bước chân.
													Mặt đế thiết kế rãnh cho khả năng hạn chế sự trơn trượt cực tốt, khi di chuyển ở các địa hình dốc và ẩm ướt hay khi đi trên các bề mặt mịn và ướt như sàn nhà, đường phố ẩm ướt hoặc các bãi biển.
													Chất liệu cao su có tính bền bỉ, giúp đôi sandal có khả năng chịu đựng tốt và tuổi thọ cao, giúp bạn sử dụng trong thời gian dài mà vẫn giữ được sự đẳng cấp và tiện ích.</td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Sandal Eva Phun Nam Bitis BEM001000 có quai được làm từ chất liệu Si Nubucks cao cấp lót bên trong tạo độ êm ái nhẹ nhàng cho người đeo, bên ngoài được may thêm lớp vải dù tăng độ bền cho sản phẩm. Sự kết hợp hoàn hảo này mang lại cho bạn một sản phẩm chất lượng cao và tuổi thọ lâu dài.
													Trên quai có thiết kế khóa hộp độ bền cao với tính năng khóa mở dễ dàng thao tác giúp bạn đeo và tháo nhanh chóng chỉ bằng một tay.
													Quai có thiết kế năng động, chắc chắn ôm trọn bàn chân giúp người mang di chuyển thuận lợi dễ dàng trong thời gian dài nhưng vẫn đảm bảo sự thông thoáng không gây cảm giác bí bách khó chịu.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày có form dáng mạnh mẽ, thiết kế hầm hố, bụi bặm nhưng lại vô cùng thời trang đem lại sự nam tính, khoẻ khoắn và cá tính cho người dùng.
													Công nghệ thoáng khí, khả năng kháng khuẩn, hút ẩm và khử mùi giúp đôi chân bạn luôn khô ráo và dễ chịu.
													Giày được làm từ chất liệu cao cấp kết hợp với chu trình công nghệ cao nên chất lượng sản phẩm luôn được đảm bảo.
													Sản phẩm có bảng màu phối trung tính (Đen và Xám), phù hợp với nhiều độ tuổi khác nhau.
													Phù hợp với đa dạng mục đích sử dụng như đi học, đi làm, đi chơi, luyện tập thể thao…
													Giày có trang bị dây buộc tiện lợi.
													Dễ dàng vệ sinh, ít bị phai hoặc mất màu.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p8_1_3.png', N'p8_2_3.png', N'p8_4_3.png', N'p8_5_3.png', N'p8_6_3.png', 1, 1, 3, N'sandal-eva-phun-nam-bitis-bem001000', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 478000)
/*GIAY TAY NAM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (17, N'NAMT0001', N'Giày Tây Nam Bitis X DVM289880', 1571000, 16, 10, 
N'Đôi giày là phụ kiện thể hiện niềm đam mê và cá tính của người mang, với thiết kế thời trang, năng động, trẻ trung phù hợp với mọi lứa tuổi sẽ làm nổi bật lên cá tính, phong cách của bạn.                                                                                                                                              ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đặc điểm nổi bật</td>
												<td>Chất liệu bền đẹp: Được làm từ da chất lượng cao, giày tây da nam dây luôn mềm mại và bền chắc. Do đó, bạn sẽ dễ dàng bảo quản và vệ sinh.
													Thiết kế trẻ trung, kiểu dáng tinh tế giữa nét cổ điển và hiện đại, tạo nên sự hài hòa.
													Đường may tỉ mỉ chắc chắn: Với đường may tỉ mỉ và tinh tế đảm bảo độ bền chắc trong suốt thời gian bạn sử dụng, giày nam sẽ mang đến cho bạn vẻ đẹp thật cá tính và lịch lãm.
													Dễ phối trang phục: Sản phẩm với gam màu truyền thống, không chỉ giúp bạn thể hiện phong cách thời trang cực kỳ nam tính và lịch lãm mà còn giúp dễ dàng khi phối cùng nhiều trang phục như: quần jean, áo thun hay phụ kiện khác để trở nên thật cá tính và thời trang.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Có kèm đón gót giày.
													Có dây buộc.
													Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_4.png', N'p1_2_4.png', N'p1_4_4.png', N'p1_5_4.png', N'p1_6_4.png', 1, 1, 4, N'giay-tay-nam-bitis-x-dvm289880', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1782000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (18, N'NAMT0002', N'Giày Mocasin Nam Bitis BMM000677', 668000, 16, 10, 
N'Giày Mocasin Nam Bitis BMM000677 “chiều lòng” mọi phái mạnh. Bởi, sản phẩm có thiết kế sang trọng mà hiếm có đôi giày nào có được, chất liệu làm đế/quai chỉn chu và kèm nhiều điều nổi bật không thể phủ nhận khác.                                                                                                                                                                         ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Ngay từ cái nhìn đầu tiên, mọi khách hàng đều ấn tượng với thiết kế ôm gọn bàn chân một cách tự nhiên, cùng chi tiết phối hợp hài hòa, có tính thẩm mỹ cao.
													Phần đế sản phẩm được sản xuất từ chất liệu PU cao cấp mà Biti’s dày công nghiên cứu, chọn lọc và xử lý tuân thủ sát sao quy trình. Qua đó, thành phẩm luôn mang đến chất lượng tốt nhất dành cho khách hàng Việt Nam, góp phần “nâng niu bàn chân Việt”.
													Bên cạnh đó, người tiêu dùng không thể phủ nhận những ưu điểm nổi bật của vật liệu PU là có khả năng chống nước, ít bám bụi bẩn, dễ dàng lau chùi và vệ sinh, màu da bền, độ bền cao, không phai, không cong vênh, chống xước và chống mài mòn hiệu quả.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Sản phẩm sử dụng chất liệu da tổng hợp để làm nên phần quai. Vật liệu được chọn lọc cẩn trọng và xử lý chỉn chu, giúp hạn chế hư hỏng không mong muốn khi cho ra thành phẩm, đồng thời sản phẩm có độ bền màu cao, mang tính thẩm mỹ tối đa. 
													Những ưu điểm nổi trội của chất liệu da tổng hợp này là chống bụi hiệu quả, chống thấm nước tốt, dễ dàng lau chùi, chống xước tốt, khó âm thủng…
													Trên bề mặt quai thiết kế thêm lỗ thông khí, giúp bảo đảm lưu thông không khí giữa bên ngoài và bên trong hiệu quả, tránh cảm giác nóng bức, khó chịu khi mang thời gian dài. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế nam tính, lịch lãm.
													Phù hợp với nhiều độ tuổi khác nhau.
													Có thể sử dụng cho nhiều mục đích như đi học, đi chơi, đi làm… 
													Chất lượng cao cấp, đáp ứng tốt hầu hết mọi nhu cầu của khách hàng.
													Chất liệu giày (bao gồm cả đế lẫn thân) được chọn lọc và xử lý cẩn trọng, bảo đảm sản phẩm đạt chất lượng tốt nhất.
													Chế độ bảo hành uy tín, không để ảnh hưởng tiêu cực đến trải nghiệm của khách hàng với sản phẩm.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_4.png', N'p4_2_4.png', N'p4_4_4.png', N'p4_5_4.png', N'p4_6_4.png', 1, 1, 4, N'giay-mocasin-nam-bitis-bmm000677', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 778000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (19, N'NAMT0003', N'Giày Mocasin Nam Bitis BMM000477', 785000, 16, 10, 
N'Giày Mocasin Nam Biti’s BMM000477 là một “người bạn đồng hành” không thể thiếu của phái mạnh trong những bữa tiệc tùng hay sự kiện quan trọng. Nếu bạn đang tìm kiếm một sản phẩm nam tính, chất lượng và có chính sách bảo hành tuyệt vời thì có thể tham khảo ngay mẫu này.                                                                       ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>
												<td>Phần đế của đôi giày được sản xuất từ chất liệu PU cao cấp, tuân thủ quy trình xử lý nghiêm ngặt của thương hiệu. Qua đó, sản phẩm “ra lò” luôn là những gì tốt nhất dành cho khách hàng Việt Nam.
													Một số ưu điểm không thể phủ nhận của PU là độ bền cao, dễ vệ sinh, dễ bảo quản, có khả năng chống nước, ít bám bụi bẩn, màu da bền, không phai, chống xước và chống mài mòn hiệu quả.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Không chỉ tạo điểm nhấn trong lòng người tiêu dùng Việt Nam với chất liệu đế PU cao cấp, độ bền cao, sản phẩm có thêm phần quai làm từ loại da tổng hợp, được chọn lọc cẩn trọng và xử lý chỉn chu. Điều này giúp sản phẩm có độ bền màu cao, không bị phai màu theo thời gian nên vừa đảm bảo chất lượng tốt, vừa mang tính thẩm mỹ tối đa. 
													Bên cạnh đó, phải nhắc đến những ưu điểm nổi trội của chất liệu da tổng hợp này là có khả năng chống bụi hiệu quả, chống thấm nước tốt, từ đó giúp vệ sinh, lau chùi dễ dàng. Đồng thời, quai có thể chống xước tốt, ít bị đâm thủng, duy trì độ đẹp mắt lâu dài hơn bao giờ hết. 
													Trên bề mặt quai thiết kế thêm quai đan chéo độc đáo, kèm logo Biti’s ấn tượng ở lớp lót.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế nam tính, lịch lãm, góp phần tôn lên nét đẹp tiềm ẩn của phái mạnh.
													Thích hợp cho nhiều khung độ tuổi khác nhau.
													Tốt nhất sử dụng cho những bữa tiệc trang trọng hoặc sự kiện hoành tráng.
													Giá thành phải chăng, đi kèm nhiều chương trình khuyến mãi hấp dẫn.
													Chất lượng tuyệt vời, đáp ứng tốt hầu hết mọi nhu cầu của khách hàng.
													Chất liệu giày (bao gồm cả đế lẫn thân) được chọn lọc và xử lý cẩn trọng, bảo đảm sản phẩm đạt chất lượng tốt nhất, không phát sinh hư hỏng không mong muốn, làm ảnh hưởng đến trải nghiệm sử dụng.
													Chế độ bảo hành uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_4.png', N'p5_2_4.png', N'p5_4_4.png', N'p5_5_4.png', N'p5_6_4.png', 1, 1, 4, N'giay-mocasin-nam-bitis-bmm000477', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 895000)
/*DEP NAM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (20, N'NAMD0001', N'Dép Xốp Nam Bitis DXM150533', 130000, 16, 10, 
N'Dép Xốp Nam Bitis DXM150533 là một sản phẩm đến từ thương hiệu nổi tiếng Bitis, đã từ lâu trở thành biểu tượng của sự thoải mái và phong cách trong thế giới giày giày. Với thiết kế đơn giản nhưng không kém phần sang trọng, đôi giày này không chỉ là một sản phẩm thời trang mà còn là sự kết hợp hoàn hảo giữa sự thoải mái và tính thẩm mỹ.                                          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>
												<td>Đây là phần tiếp xúc trực tiếp với bàn chân của người mang nó. Đế trong của đôi  thường được làm từ các chất liệu mềm mại và thoải mái như cao su EVA hoặc bọt biển. 
													Đế trong thường có thiết kế và lớp đệm tối ưu để cung cấp sự thoải mái và giảm áp lực lên bàn chân, giúp người dùng cảm thấy thoải mái khi đi lại suốt cả ngày. Nó cũng thể hiện phong cách và thương hiệu của sản phẩm thông qua việc in hoặc thêu logo và họa tiết trên bề mặt đế trong.
													Đế ngoài của đôi Dép Nam Bitis thường được làm từ cao su hoặc các chất liệu cao cấp khác. Đế ngoài này có đặc điểm chống trơn trượt, cung cấp độ bám và ổn định cho người đi giày. Thiết kế đế ngoài thường có các rãnh hoặc gai nhỏ để tăng cường độ bám và tránh trượt ngay cả trên bề mặt sần sùi. Nó cũng có vai trò bảo vệ đế trong khỏi môi trường bên ngoài và mài mòn.</td>
											</tr>
											<tr>
												<td>Thân dép</td>
												<td>Được với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển.
													Thân dép thường được làm từ các chất liệu cao cấp như chất liệu tổng hợp, vải, hoặc da tổng hợp chất lượng cao.  Bên cạnh đó, thiết kế dép Eva Phun Nam với sự tinh tế và sáng tạo, với nhiều họa tiết và màu sắc đa dạng.
													Thân dép có thể tích hợp công nghệ tiên tiến như dệt may 3D, in ấn sống động hoặc kỹ thuật đắp nhiệt để tạo ra các họa tiết và màu sắc độc đáo.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Được làm từ chất liệu EVA hoặc các chất liệu mềm mại khác, đế trong và thân dép mang lại cảm giác thoải mái cho bàn chân suốt cả ngày. 
													Đôi dép này nhẹ và linh hoạt, giúp bạn dễ dàng mang theo và sử dụng trong mọi tình huống, từ du lịch, dạo chơi đến thậm chí là trong những hoạt động thể thao nhẹ.
													Dép Nam từ nhà Bitis luôn được sản xuất với tiêu chuẩn cao, đảm bảo độ bền và độ chất lượng của từng đôi dép.
													Khả năng chống trơn trượt của dép có thiết kế chống trơn trượt, giúp người sử dụng an toàn khi di chuyển trên mặt đất ẩm ướt hoặc trơn trượt.
													Dép này dễ dàng lau sạch và bảo quản, giúp duy trì tính mới mẻ và sạch sẽ của đôi dép trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_5.png', N'p1_2_5.png', N'p1_4_5.png', N'p1_5_5.png', N'p1_6_5.png', 1, 1, 5, N'dep-xop-nam-bitis-dxm150533', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 157000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (21, N'NAMD0002', N'Dép Da Nam SDM477770', 432000 , 16, 10, 
N'Dép Da Nam Bitis là một sản phẩm đến từ thương hiệu nổi tiếng Bitis, đã từ lâu trở thành biểu tượng của sự thoải mái và phong cách trong thế giới giày giày. Với thiết kế đơn giản nhưng không kém phần sang trọng, đôi giày này không chỉ là một sản phẩm thời trang mà còn là sự kết hợp hoàn hảo giữa sự thoải mái và tính thẩm mỹ.                                          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>
												<td>Đây là phần tiếp xúc trực tiếp với bàn chân của người mang nó. Đế trong của đôi  thường được làm từ các chất liệu mềm mại và thoải mái như cao su EVA hoặc bọt biển. 
													Đế trong thường có thiết kế và lớp đệm tối ưu để cung cấp sự thoải mái và giảm áp lực lên bàn chân, giúp người dùng cảm thấy thoải mái khi đi lại suốt cả ngày. Nó cũng thể hiện phong cách và thương hiệu của sản phẩm thông qua việc in hoặc thêu logo và họa tiết trên bề mặt đế trong.
													Đế ngoài của đôi Dép Da Nam Bitis thường được làm từ cao su hoặc các chất liệu cao cấp khác. Đế ngoài này có đặc điểm chống trơn trượt, cung cấp độ bám và ổn định cho người đi giày. Thiết kế đế ngoài thường có các rãnh hoặc gai nhỏ để tăng cường độ bám và tránh trượt ngay cả trên bề mặt sần sùi. Nó cũng có vai trò bảo vệ đế trong khỏi môi trường bên ngoài và mài mòn.</td>
											</tr>
											<tr>
												<td>Thân dép</td>
												<td>Được với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển.
													Thân dép thường được làm từ các chất liệu cao cấp như chất liệu tổng hợp, vải, hoặc da tổng hợp chất lượng cao.  Bên cạnh đó, thiết kế dép Eva Phun Nam với sự tinh tế và sáng tạo, với nhiều họa tiết và màu sắc đa dạng.
													Thân dép có thể tích hợp công nghệ tiên tiến như dệt may 3D, in ấn sống động hoặc kỹ thuật đắp nhiệt để tạo ra các họa tiết và màu sắc độc đáo.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Được làm từ chất liệu EVA hoặc các chất liệu mềm mại khác, đế trong và thân dép mang lại cảm giác thoải mái cho bàn chân suốt cả ngày. 
													Đôi dép này nhẹ và linh hoạt, giúp bạn dễ dàng mang theo và sử dụng trong mọi tình huống, từ du lịch, dạo chơi đến thậm chí là trong những hoạt động thể thao nhẹ.
													Dép Nam từ nhà Bitis luôn được sản xuất với tiêu chuẩn cao, đảm bảo độ bền và độ chất lượng của từng đôi dép.
													Khả năng chống trơn trượt của dép có thiết kế chống trơn trượt, giúp người sử dụng an toàn khi di chuyển trên mặt đất ẩm ướt hoặc trơn trượt.
													Dép này dễ dàng lau sạch và bảo quản, giúp duy trì tính mới mẻ và sạch sẽ của đôi dép trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_5.png', N'p2_2_5.png', N'p2_4_5.png', N'p2_5_5.png', N'p2_6_5.png', 1, 1, 5, N'dep-da-nam-sdm477770', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 512000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (22, N'NAMD0003', N'Dép Lào Nam DLM029400', 92000, 16, 10, 
N'Dép Lào Nam Bitis là một sản phẩm đến từ thương hiệu nổi tiếng Bitis, đã từ lâu trở thành biểu tượng của sự thoải mái và phong cách trong thế giới giày giày. Với thiết kế đơn giản nhưng không kém phần sang trọng, đôi giày này không chỉ là một sản phẩm thời trang mà còn là sự kết hợp hoàn hảo giữa sự thoải mái và tính thẩm mỹ.                                          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>
												<td>Đây là phần tiếp xúc trực tiếp với bàn chân của người mang nó. Đế trong của đôi  thường được làm từ các chất liệu mềm mại và thoải mái như cao su EVA hoặc bọt biển. 
													Đế trong thường có thiết kế và lớp đệm tối ưu để cung cấp sự thoải mái và giảm áp lực lên bàn chân, giúp người dùng cảm thấy thoải mái khi đi lại suốt cả ngày. Nó cũng thể hiện phong cách và thương hiệu của sản phẩm thông qua việc in hoặc thêu logo và họa tiết trên bề mặt đế trong.
													Đế ngoài của đôi Dép Lào Nam Bitis thường được làm từ cao su hoặc các chất liệu cao cấp khác. Đế ngoài này có đặc điểm chống trơn trượt, cung cấp độ bám và ổn định cho người đi giày. Thiết kế đế ngoài thường có các rãnh hoặc gai nhỏ để tăng cường độ bám và tránh trượt ngay cả trên bề mặt sần sùi. Nó cũng có vai trò bảo vệ đế trong khỏi môi trường bên ngoài và mài mòn.</td>
											</tr>
											<tr>
												<td>Thân dép</td>
												<td>Được với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển.
													Thân dép thường được làm từ các chất liệu cao cấp như chất liệu tổng hợp, vải, hoặc da tổng hợp chất lượng cao.  Bên cạnh đó, thiết kế dép Eva Phun Nam với sự tinh tế và sáng tạo, với nhiều họa tiết và màu sắc đa dạng.
													Thân dép có thể tích hợp công nghệ tiên tiến như dệt may 3D, in ấn sống động hoặc kỹ thuật đắp nhiệt để tạo ra các họa tiết và màu sắc độc đáo.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Được làm từ chất liệu EVA hoặc các chất liệu mềm mại khác, đế trong và thân dép mang lại cảm giác thoải mái cho bàn chân suốt cả ngày. 
													Đôi dép này nhẹ và linh hoạt, giúp bạn dễ dàng mang theo và sử dụng trong mọi tình huống, từ du lịch, dạo chơi đến thậm chí là trong những hoạt động thể thao nhẹ.
													Dép Nam từ nhà Bitis luôn được sản xuất với tiêu chuẩn cao, đảm bảo độ bền và độ chất lượng của từng đôi dép.
													Khả năng chống trơn trượt của dép có thiết kế chống trơn trượt, giúp người sử dụng an toàn khi di chuyển trên mặt đất ẩm ướt hoặc trơn trượt.
													Dép này dễ dàng lau sạch và bảo quản, giúp duy trì tính mới mẻ và sạch sẽ của đôi dép trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_5.png', N'p3_2_5.png', N'p3_4_5.png', N'p3_5_5.png', N'p3_6_5.png', 1, 1, 5, N'dep-lao-nam-dlm029400', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 118000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (23, N'NAMD0004', N'Dép Lào Nam DLM029688', 87000, 16, 10, 
N'Dép Lào Nam Bitis là một sản phẩm đến từ thương hiệu nổi tiếng Bitis, đã từ lâu trở thành biểu tượng của sự thoải mái và phong cách trong thế giới giày giày. Với thiết kế đơn giản nhưng không kém phần sang trọng, đôi giày này không chỉ là một sản phẩm thời trang mà còn là sự kết hợp hoàn hảo giữa sự thoải mái và tính thẩm mỹ.                                          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>
												<td>Đây là phần tiếp xúc trực tiếp với bàn chân của người mang nó. Đế trong của đôi  thường được làm từ các chất liệu mềm mại và thoải mái như cao su EVA hoặc bọt biển. 
													Đế trong thường có thiết kế và lớp đệm tối ưu để cung cấp sự thoải mái và giảm áp lực lên bàn chân, giúp người dùng cảm thấy thoải mái khi đi lại suốt cả ngày. Nó cũng thể hiện phong cách và thương hiệu của sản phẩm thông qua việc in hoặc thêu logo và họa tiết trên bề mặt đế trong.
													Đế ngoài của đôi Dép Lào Nam Bitis thường được làm từ cao su hoặc các chất liệu cao cấp khác. Đế ngoài này có đặc điểm chống trơn trượt, cung cấp độ bám và ổn định cho người đi giày. Thiết kế đế ngoài thường có các rãnh hoặc gai nhỏ để tăng cường độ bám và tránh trượt ngay cả trên bề mặt sần sùi. Nó cũng có vai trò bảo vệ đế trong khỏi môi trường bên ngoài và mài mòn.</td>
											</tr>
											<tr>
												<td>Thân dép</td>
												<td>Được với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển.
													Thân dép thường được làm từ các chất liệu cao cấp như chất liệu tổng hợp, vải, hoặc da tổng hợp chất lượng cao.  Bên cạnh đó, thiết kế dép Eva Phun Nam với sự tinh tế và sáng tạo, với nhiều họa tiết và màu sắc đa dạng.
													Thân dép có thể tích hợp công nghệ tiên tiến như dệt may 3D, in ấn sống động hoặc kỹ thuật đắp nhiệt để tạo ra các họa tiết và màu sắc độc đáo.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Được làm từ chất liệu EVA hoặc các chất liệu mềm mại khác, đế trong và thân dép mang lại cảm giác thoải mái cho bàn chân suốt cả ngày. 
													Đôi dép này nhẹ và linh hoạt, giúp bạn dễ dàng mang theo và sử dụng trong mọi tình huống, từ du lịch, dạo chơi đến thậm chí là trong những hoạt động thể thao nhẹ.
													Dép Nam từ nhà Bitis luôn được sản xuất với tiêu chuẩn cao, đảm bảo độ bền và độ chất lượng của từng đôi dép.
													Khả năng chống trơn trượt của dép có thiết kế chống trơn trượt, giúp người sử dụng an toàn khi di chuyển trên mặt đất ẩm ướt hoặc trơn trượt.
													Dép này dễ dàng lau sạch và bảo quản, giúp duy trì tính mới mẻ và sạch sẽ của đôi dép trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_5.png', N'p4_2_5.png', N'p4_4_5.png', N'p4_5_5.png', N'p4_6_5.png', 1, 1, 5, N'dep-lao-nam-dlm029688', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 99000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (24, N'NAMD0005', N'Dép Si PU Nam DPM033644', 364000, 16, 10, 
N'Dép Si Pu Nam Bitis là một sản phẩm đến từ thương hiệu nổi tiếng Bitis, đã từ lâu trở thành biểu tượng của sự thoải mái và phong cách trong thế giới giày giày. Với thiết kế đơn giản nhưng không kém phần sang trọng, đôi giày này không chỉ là một sản phẩm thời trang mà còn là sự kết hợp hoàn hảo giữa sự thoải mái và tính thẩm mỹ.                                          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>
												<td>Đây là phần tiếp xúc trực tiếp với bàn chân của người mang nó. Đế trong của đôi  thường được làm từ các chất liệu mềm mại và thoải mái như cao su EVA hoặc bọt biển. 
													Đế trong thường có thiết kế và lớp đệm tối ưu để cung cấp sự thoải mái và giảm áp lực lên bàn chân, giúp người dùng cảm thấy thoải mái khi đi lại suốt cả ngày. Nó cũng thể hiện phong cách và thương hiệu của sản phẩm thông qua việc in hoặc thêu logo và họa tiết trên bề mặt đế trong.
													Đế ngoài của đôi Dép Si Pu Nam Bitis thường được làm từ cao su hoặc các chất liệu cao cấp khác. Đế ngoài này có đặc điểm chống trơn trượt, cung cấp độ bám và ổn định cho người đi giày. Thiết kế đế ngoài thường có các rãnh hoặc gai nhỏ để tăng cường độ bám và tránh trượt ngay cả trên bề mặt sần sùi. Nó cũng có vai trò bảo vệ đế trong khỏi môi trường bên ngoài và mài mòn.</td>
											</tr>
											<tr>
												<td>Thân dép</td>
												<td>Được với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển.
													Thân dép thường được làm từ các chất liệu cao cấp như chất liệu tổng hợp, vải, hoặc da tổng hợp chất lượng cao.  Bên cạnh đó, thiết kế dép Eva Phun Nam với sự tinh tế và sáng tạo, với nhiều họa tiết và màu sắc đa dạng.
													Thân dép có thể tích hợp công nghệ tiên tiến như dệt may 3D, in ấn sống động hoặc kỹ thuật đắp nhiệt để tạo ra các họa tiết và màu sắc độc đáo.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Được làm từ chất liệu EVA hoặc các chất liệu mềm mại khác, đế trong và thân dép mang lại cảm giác thoải mái cho bàn chân suốt cả ngày. 
													Đôi dép này nhẹ và linh hoạt, giúp bạn dễ dàng mang theo và sử dụng trong mọi tình huống, từ du lịch, dạo chơi đến thậm chí là trong những hoạt động thể thao nhẹ.
													Dép Nam từ nhà Bitis luôn được sản xuất với tiêu chuẩn cao, đảm bảo độ bền và độ chất lượng của từng đôi dép.
													Khả năng chống trơn trượt của dép có thiết kế chống trơn trượt, giúp người sử dụng an toàn khi di chuyển trên mặt đất ẩm ướt hoặc trơn trượt.
													Dép này dễ dàng lau sạch và bảo quản, giúp duy trì tính mới mẻ và sạch sẽ của đôi dép trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo quản</td>
												<td>Làm sạch định kỳ.<br>
												Đặt giày ở nơi khô ráo.<br>
												Bảo vệ giày.<br>
												Không giặt giày bằng máy giặt.<br>
												Thay dây giày thường xuyên.<br></td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.<br>
												Dây giày chắc chắn.<br>
												Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_5.png', N'p5_2_5.png', N'p5_4_5.png', N'p5_5_5.png', N'p5_6_5.png', 1, 1, 5, N'dep-si-pu-nam-dpm033644', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 454000)


/*GIAY CAO GOT*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (25, N'NUCG0001', N'Giày Cao Gót Nữ Gosto GFW019100', 981000, 16, 10, 
N'Giày Cao Gót Nữ Gosto GFW019100 hiện đang là một sản phẩm nổi bật của nhà Bitis. Sản phẩm không những có giá cả tốt mà còn sở hữu kiểu dáng đẹp, màu sắc tinh tế, chất liệu an toàn, cao cấp. Hãy cùng tìm hiểu ngay dưới đây nhé!                                                                                                                                                               ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Giày Cao Gót Nữ Gosto GFW019100 được làm từ chất liệu cao su cao cấp, được xử lý và kiểm tra theo quy trình tiêu chuẩn, nhằm bảo đảm chất lượng bền lâu nhất cho người sử dụng. 
													Bên cạnh đó, đế cao su còn có vô số ưu điểm vô cùng tốt như có khả năng chống mài mò, trơn trượt tốt, độ đàn hồi cao, ít bị cong vênh khi tác động lực, hạn chế bám bụi bẩn, dễ dàng vệ sinh… Bên dưới đế thiết kế thêm rãnh chống trượt dày đặc, phân bổ khắp toàn bộ bề mặt, giúp bảo đảm an toàn cho người khi di chuyển, tất cả những ưu điểm của đế tạo nên một phần chất lượng sản phẩm vô cùng tốt.
													Đế giày được thiết kế với độ cao hoàn hảo, có thể nâng chiều cao một cách tinh tế.</td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Không chỉ tạo ấn tượng với chất liệu đế cao su cứng cáp, bền lâu, sản phẩm có thêm phần quai làm từ da cao cấp, mềm mại, có độ bền màu cao nên vừa có tính thẩm mỹ, vừa có chất lượng vô cùng tốt.
													Quai da được thiết kế nhỏ nhắn, có thể tháo rời tạo nên sự nhẹ nhàng, thỏa mái cho người sử dụng. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, sang trọng, thân giày được thiết kế với sự phối hợp dưới hình dạng của dây rất tinh tế, dễ dùng để phối đồ.
													Có thể sử dụng cho nhiều mục đích hàng ngày khác nhau như đi làm, đi chơi…
													Giá thành tốt, chất lượng cao, kèm nhiều chương trình khuyến mãi hấp dẫn.
													Đa dạng màu sắc và kích cỡ, dễ dàng cho các khách hàng nữa lựa chọn.
													Chất liệu đế dép, quai dép cao cấp, an toàn với làn da.
													Chế độ bảo hành uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_8.png', N'p3_2_8.png', N'p3_4_8.png', N'p3_5_8.png', N'p3_6_8.png', 1, 1, 8, N'giay-cao-got-nu-gosto-gfw019100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1091000)
/*SANDAL NU*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (26, N'NUSA0001', N'Sandal Nữ Bitis BPW000788', 299000, 16, 10, 
N'Sandal Nữ Biti’s BPW000788 gây thương nhớ cho biết bao khách hàng Việt Nam. Bởi, sản phẩm sở hữu màu sắc nổi bật với cách phối đan xen quyến rũ, cùng nhiều tính năng nổi trội về chất liệu, độ bền, chế độ bảo hành, giá thành…                                                                                                                                                               ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Ngay từ cái nhìn đầu tiên, mọi khách hàng đều ấn tượng với kiểu dáng thể thao năng động, đi đường quai đan chéo, phối màu sinh động và đẹp mắt. Điều này không chỉ giúp mang lại cảm giác mang thoải mái nhất, mà còn góp phần tô điểm nét đẹp thời trang, tinh tế cho người sử dụng. 
													Phần đế được sản xuất từ chất liệu PU cao cấp được thương hiệu Biti’s nghiên cứu, chọn lọc và xử lý cẩn thận, bảo đảm tuân thủ sát sao quy trình tiêu chuẩn. Qua đó, thành phẩm đến tay người Việt luôn mang đến chất lượng tốt nhất, ít phát sinh hư hỏng không mong muốn.
													Bên cạnh đó, hầu hết khách hàng đều hài lòng về đế giày vì chất liệu sở hữu rất nhiều ưu điểm nổi bật. Chẳng hạn như có khả năng chống nước, ít bám bụi bẩn nên dễ dàng vệ sinh, lau chùi, giúp sản phẩm luôn trông như mới. Hay độ bền cao, không phai, không cong vênh, hỗ trợ duy trì form giày bền đẹp. Hơn nữa là khả năng chống xước và chống mài mòn hiệu quả.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Không kém cạnh so với phần đế giày, thân giày sử dụng chất liệu Filament dệt kim cao cấp, có độ mềm mại ổn định. Qua đó mang lại cảm giác chắc chân, êm chân, ít đau mỏi nếu phải di chuyển trong thời gian dài hoặc vận động mạnh. 
													Thiết kế tôn lên nét đẹp của đôi bàn chân, màu tôn da, giúp người dùng thêm phần tự tin trong mọi trang phục. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đơn giản, sự nhấn nhá màu sắc nổi bật, đem lại sự trẻ trung và năng động.
													Phù hợp với nhiều độ tuổi khác nhau.
													Thích hợp sử dụng cho nhiều mục đích như đi học, đi chơi, đi làm… 
													Chất lượng cao cấp, đáp ứng tốt hầu hết mọi nhu cầu của khách hàng và xứng giá tiền.
													Chất liệu giày được thương hiệu Biti’s chọn lọc và xử lý cẩn trọng nhất có thể nhằm bảo đảm sản phẩm đạt chuẩn tốt nhất, ít phát sinh hư hỏng, ảnh hưởng đến đến trải nghiệm của khách hàng.
													Chế độ bảo hành minh bạch, uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_7.png', N'p3_2_7.png', N'p3_4_7.png', N'p3_5_7.png', N'p3_6_7.png', 1, 1, 7, N'sandal-nu-bitis-bpw000788', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 339000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (27, N'NUSA0002', N'Sandal Nữ Êmbrace DPW071200', 402000, 16, 10, 
N'Những đôi sandal của nhà Biti’s đã không còn xa lạ với các chị em, luôn là những sản phẩm đem đến sự trẻ trung, năng động, thời trang nhưng vô cùng thoải mái. Sandal Nữ Êmbrace DPW071200 – một dòng sản phẩm chuyên da mới siêu cao cấp, kiểu dáng tinh giản, nền nã mà lại sang trọng đang được lòng rất nhiều các chị em. Cùng tìm hiểu chi tiết về sản phẩm này qua bài viết dưới đây.          ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Sandal Nữ Êmbrace DPW071200 có phần đế đặt PU được sản xuất với công thức cải tiến mới, phát huy tối đa những ưu điểm vốn có trước đó, khiến sandal có phần đế rất mềm, trọng lượng siêu nhẹ, khả năng chống thấm, chống trơn trượt hay mài mòn cao đặc biệt là cảm nhận sự đàn hồi tốt khi mang (tính năng mới được cải thiện từ mùa T12/2022)
													Phần lót đế trong của sandal là một lớp đệm siêu êm làm từ chất liệu PU, không chỉ gia tăng độ mệm mại, tính đàn hồi để nâng đỡ bàn chân êm ái mà còn tạo cảm giác thoải mái, dễ chịu cho dù bạn có mang sandal cả ngày dài.
													Mặt dưới của đế với thiết kế nhiều rãnh chống trơn trượt giúp tăng độ ma sát, đảm bảo an toàn cho người sử dụng khi đi trên các mặt phẳng ẩm ướt, trơn trượt. Ngoài ra, phần đế cao 3cm giúp người dùng tự tin nâng chiều cao một cách tinh tế.</td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Sandal Êmbrace DPW071200 có phần quai làm từ chất liệu Si PU mới không chỉ mềm mại, nhẹ nhàng khi mang mà còn có độ bền chắc cao, màu sắc phù hợp với giới trẻ.  
													Quai ngang được viền chỉ chắc chắn ôm trọn bàn chân, cùng thiết kế quai dán đơn giản không chỉ giúp người dùng tiết kiệm thời gian mang hoặc cởi sandal, mà còn tạo sự thông thoáng không hề bí bách khó chịu.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Sandal Nữ DPW071200 là sản phẩm Biti’s Êmbrace đầu tiên - một dòng sản phẩm chuyên da mới - 100% làm từ chất liệu da Microfiber cao cấp siêu êm mềm - với ngôn ngữ thiết kế Smart Casual tinh giản, nền nã mà lại sang trọng và thời trang, không chỉ đem đến  sự thoải mái mà còn là sự tự tin cho bạn suốt cả ngày dài.  
													Thiết kế quai đeo thông thoáng hạn chế mồ hôi, giữ cho bàn chân luôn được khô ráo và  cảm giác mát mẻ, không bí bách khi sử dụng trong thời tiết mùa hè. Đặc biệt bạn có thể thoải mái bước đi kể cả vào những ngày mưa mà không lo bị bắn bẩn.
													Sản phẩm có tính ứng dụng cao khi kết hợp được với nhiều phong cách và trang phục khác nhau từ nhẹ nhàng, thanh lịch đến năng động hay cá tính.
													Phù hợp với nhiều mục đích khác nhau như đi học, đi làm, đi chơi, đi biển, dạo phố…
													Sản phẩm dễ dàng vệ sinh, ít bị phai hoặc mất màu.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng giúp bảo quản sandal tốt nhất.
													Sandal Nữ Êmbrace DPW071200. 
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_7.png', N'p1_2_7.png', N'p1_4_7.png', N'p1_5_7.png', N'p1_6_7.png', 1, 1, 7, N'sandal-nu-embrace-dpw071200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 478000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (28, N'NUSA0003', N'Sandal Eva Phun Nữ Bitis Hunter DEWH01100', 457000, 16, 10, 
N'Mùa hè đến, thời tiết oi nồng, nóng nực, tuy nhiên việc phải di chuyển ngoài trời nhiều hoặc ngồi cả ngày dài khi đi học, đi làm khiến các các bạn nữ mong muốn tìm kiếm một đôi giày sandal chất lượng cao, giá cả phải chăng nhưng đảm bảo thẩm mỹ. Vậy thì tin vui đây bạn ơi! Mẫu giày sandal Eva Phun Nữ Bitis Hunter DEWH01100 đích thị là dành cho bạn.                                                        ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Có lẽ, đế giày là một yếu tố mà bạn không nên bỏ qua khi lựa chọn mua giày. Bởi một chiếc đế phù hợp sẽ giúp bàn chân bạn thoải mái, êm ái, không gây đau mỏi, chảy máu ngay cả khi vận động nhiều. 
													Hiểu được nhu cầu này, sandal Bitis Hunter DEWH01100 sở hữu đế Eva Phun (Injection Phylon) cao cấp, có độ bền cực kỳ cao, siêu êm, siêu nhẹ. Bên dưới đế, hãng đã khéo léo thiết kế các đường vân có tính ma sát cao để hạn chế trơn trượt, có tuổi thọ sử dụng lâu dài, ít bị mòn theo thời gian. Chưa kể, phần đế còn cao 3cm, giúp dáng chân thêm thẳng và dài khi mang.</td>
											</tr>
											<tr>
												<td>Quai giày</td>
												<td>Phần quai giày sandal là nơi tiếp xúc trực tiếp với làn da mỏng mịn trên bàn chân của các cô gái. Do đó, Biti’s sử dụng chất liệu vải mềm mịn, đã được xử lý kỹ lưỡng, không gây ma sát lên chân.
													Phần quai có độ dày vừa phải, thiết kế chéo đan xen,  viền chỉ chắc chắn ôm gọn chân nhưng lại cực kỳ thông thoáng, không gây nóng bức, hầm hay khó chịu. Nhờ đó, các nàng có thể thoải mái, tự tin mang cả ngày dài.
													Thiết kế quai dán tiện lợi, có thể mang vào tháo ra nhanh chóng.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đơn giản nhưng không kém phần thời thượng, tinh tế, phù hợp thời đại. 
													Màu sắc đa dạng phù hợp mọi sở thích, có thể phù hợp với mọi loại outfits. 
													Sản phẩm được kiểm định kỹ càng trước khi tung ra thị trường, đồng thời chất liệu để sản xuất cũng được chọn từ nguyên vật liệu cao cấp, không gây kích ứng hay ma sát da. 
													Tính ứng dụng cao, có thể sử dụng giày Sandal Eva Phun Nữ Bitis Hunter DEWH01100 để đi học, đi làm, đi chơi, đi dạo, du lịch,...
													Có độ thông thoáng cao, không lo bí bách, nóng nực, đặc biệt là vào dịp mùa hè.
													Đế giày siêu nhẹ và êm, không gây đau chân. </td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_7.png', N'p2_2_7.png', N'p2_4_7.png', N'p2_5_7.png', N'p2_6_7.png', 1, 1, 7, N'sandal-eva-phun-nu-bitis-hunter-dewh01100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 527000)
/*DEP NU*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (29, N'NUDP0001', N'Dép Xốp Nữ BXW002000', 261000, 16, 10, 
N'Dép Xốp Nữ BXW002000 hiện đang là một sản phẩm nổi bật của nhà Bitis. Sản phẩm không những có giá cả tốt mà còn sở hữu kiểu dáng đẹp, màu sắc tinh tế, chất liệu an toàn, cao cấp. Hãy cùng tìm hiểu ngay dưới đây nhé!                                                                                                                                                               ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>												
												<td>Dép Xốp Nữ BXW002000 được làm từ chất liệu cao su cao cấp, được xử lý và kiểm tra theo quy trình tiêu chuẩn, nhằm bảo đảm chất lượng bền lâu nhất cho người sử dụng. 
													Bên cạnh đó, đế cao su còn có vô số ưu điểm vô cùng tốt như có khả năng chống mài mò, trơn trượt tốt, độ đàn hồi cao, ít bị cong vênh khi tác động lực, hạn chế bám bụi bẩn, dễ dàng vệ sinh… Bên dưới đế thiết kế thêm rãnh chống trượt dày đặc, phân bổ khắp toàn bộ bề mặt, giúp bảo đảm an toàn cho người khi di chuyển, tất cả những ưu điểm của đế tạo nên một phần chất lượng sản phẩm vô cùng tốt.
													Đế giày được thiết kế với độ cao hoàn hảo, có thể nâng chiều cao một cách tinh tế.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, sang trọng, thân giày được thiết kế với sự phối hợp dưới hình dạng của dây rất tinh tế, dễ dùng để phối đồ.
													Có thể sử dụng cho nhiều mục đích hàng ngày khác nhau như đi làm, đi chơi…
													Giá thành tốt, chất lượng cao, kèm nhiều chương trình khuyến mãi hấp dẫn.
													Đa dạng màu sắc và kích cỡ, dễ dàng cho các khách hàng nữa lựa chọn.
													Chất liệu đế dép, quai dép cao cấp, an toàn với làn da.
													Chế độ bảo hành uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_9.png', N'p1_2_9.png', N'p1_4_9.png', N'p1_5_9.png', N'p1_6_9.png', 1, 1, 9, N'dep-xop-nu-bxw002000', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 311000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (30, N'NUDP0002', N'Dép Xốp Nữ BXW002500', 187000, 16, 10, 
N'Dép Xốp Nữ BXW002500 hiện đang là một sản phẩm nổi bật của nhà Bitis. Sản phẩm không những có giá cả tốt mà còn sở hữu kiểu dáng đẹp, màu sắc tinh tế, chất liệu an toàn, cao cấp. Hãy cùng tìm hiểu ngay dưới đây nhé!                                                                                                                                                               ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>												
												<td>Dép Xốp Nữ BXW002500 được làm từ chất liệu cao su cao cấp, được xử lý và kiểm tra theo quy trình tiêu chuẩn, nhằm bảo đảm chất lượng bền lâu nhất cho người sử dụng. 
													Bên cạnh đó, đế cao su còn có vô số ưu điểm vô cùng tốt như có khả năng chống mài mò, trơn trượt tốt, độ đàn hồi cao, ít bị cong vênh khi tác động lực, hạn chế bám bụi bẩn, dễ dàng vệ sinh… Bên dưới đế thiết kế thêm rãnh chống trượt dày đặc, phân bổ khắp toàn bộ bề mặt, giúp bảo đảm an toàn cho người khi di chuyển, tất cả những ưu điểm của đế tạo nên một phần chất lượng sản phẩm vô cùng tốt.
													Đế giày được thiết kế với độ cao hoàn hảo, có thể nâng chiều cao một cách tinh tế.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, sang trọng, thân giày được thiết kế với sự phối hợp dưới hình dạng của dây rất tinh tế, dễ dùng để phối đồ.
													Có thể sử dụng cho nhiều mục đích hàng ngày khác nhau như đi làm, đi chơi…
													Giá thành tốt, chất lượng cao, kèm nhiều chương trình khuyến mãi hấp dẫn.
													Đa dạng màu sắc và kích cỡ, dễ dàng cho các khách hàng nữa lựa chọn.
													Chất liệu đế dép, quai dép cao cấp, an toàn với làn da.
													Chế độ bảo hành uy tín.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng cáp.
													Giày.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_9.png', N'p2_2_9.png', N'p2_4_9.png', N'p2_5_9.png', N'p2_6_9.png', 1, 1, 9, N'dep-xop-nu-bxw002500', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 217000)

/*HUNTER NU*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (31, N'NUHU0001', N'Hunter X - Dune OTP Real edition HSW001200', 1256000, 16, 10, 
N'Đôi giày Thể Thao Nữ Hunter X - Dune OTP Real edition HSW001200 đang làm mưa làm gió và được nhiều người tiêu dùng gọi tên không chỉ vì vẻ ngoài thẩm mỹ mà còn nhờ chất lượng bên trong. Chần chờ gì nữa, cùng xem ngay bài viết dưới đây để tìm hiểu rõ hơn về sản phẩm.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế ngoài: Sở hữu đế Lite Flex 3.0 cao - êm - cool độc quyền của Biti’s, mang đến vẻ đẹp thời thượng, giúp tôn dáng chân, sẵn sàng đồng hành cùng bạn trong mọi hoạt động.
													Đế trong (lót giày): Vô cùng êm ái với lót đế O-farm ép 3D, được trang bị 6 điểm massage xếp xen kẽ. Nhờ đó, dòng sản phẩm Hunter X - Dune OTP Real edition HSW001200 tạo cảm giác êm nhẹ như bay, hạn chế đau chân một cách tối đa khi vận động mạnh hoặc di chuyển nhiều. Chưa kể, lót giày còn được trang bị thun cá sấu kháng khuẩn, ngăn ngừa tình trạng ẩm mốc, mùi hôi, giúp bàn chân thông thoáng hơn.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Phần vớ cổ giày êm ái, vừa ôm nhẹ tôn dáng chân, nhưng không bó sát khó di chuyển mà có độ co giãn linh hoạt. Vì vậy, người dùng dù có gập, co hoặc duỗi cổ chân vẫn vô cùng thoải mái.
													Mũ quai được làm từ chất liệu Si NuBucks thời thượng, êm ái, co giãn tốt, kết hợp với phần da lộn đầy thẩm mỹ, có vai trò giữ form giày, không bị nhăn nheo, gãy dáng giày.
													Đặc biệt, chất liệu Si NuBucks và da lộn mang đến vẻ đẹp thẩm mỹ cao và rất dễ vệ sinh.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đầy nữ tính nhưng vô cùng thời thượng, phù hợp nhiều phong cách từ cá tính đến bánh bèo nhờ sự phối hợp màu sắc độc đáo.
													Form giày cứng cáp, đứng form, không bị gãy làm to bàn chân.
													Được trang bị kèm dây buộc giày cùng màu tiện lợi, có thể tùy ý sửa đổi theo form dáng bàn chân.
													Sản phẩm được làm từ chất liệu cao cấp, bền bỉ, thoáng khí, hạn chế hư hỏng, nứt nẻ trong quá trình sử dụng.
													Được ứng dụng công nghệ thoáng khí, loại bỏ mùi hôi ẩm tích tụ, giúp bạn cực kỳ thoải mái trong khi hoạt động suốt một ngày dài.
													Có thể sử dụng giày cho nhiều mục đích khác nhau như đi chơi, chạy bộ, leo núi, tập luyện thể thao hay mang đi làm mỗi ngày.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>1 đôi giày.
													Túi chống ẩm.
													Bộ dây giày.
													Hộp giày bìa cứng.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_6.png', N'p1_2_6.png', N'p1_4_6.png', N'p1_5_6.png', N'p1_6_6.png', 1, 1, 6, N'hunter-x-dune---otp-real-edition-hsw001200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1506000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (32, N'NUHU0002', N'Hunter X - Dune OTP Real edition HSW001201', 1256000, 16, 10, 
N'Đôi giày Thể Thao Nữ Hunter X - Dune OTP Real edition HSW001201 đang làm mưa làm gió và được nhiều người tiêu dùng gọi tên không chỉ vì vẻ ngoài thẩm mỹ mà còn nhờ chất lượng bên trong. Chần chờ gì nữa, cùng xem ngay bài viết dưới đây để tìm hiểu rõ hơn về sản phẩm.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế ngoài: Sở hữu đế Lite Flex 3.0 cao - êm - cool độc quyền của Biti’s, mang đến vẻ đẹp thời thượng, giúp tôn dáng chân, sẵn sàng đồng hành cùng bạn trong mọi hoạt động.
													Đế trong (lót giày): Vô cùng êm ái với lót đế O-farm ép 3D, được trang bị 6 điểm massage xếp xen kẽ. Nhờ đó, dòng sản phẩm Hunter X - Dune OTP Real edition HSW001201 tạo cảm giác êm nhẹ như bay, hạn chế đau chân một cách tối đa khi vận động mạnh hoặc di chuyển nhiều. Chưa kể, lót giày còn được trang bị thun cá sấu kháng khuẩn, ngăn ngừa tình trạng ẩm mốc, mùi hôi, giúp bàn chân thông thoáng hơn.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Phần vớ cổ giày êm ái, vừa ôm nhẹ tôn dáng chân, nhưng không bó sát khó di chuyển mà có độ co giãn linh hoạt. Vì vậy, người dùng dù có gập, co hoặc duỗi cổ chân vẫn vô cùng thoải mái.
													Mũ quai được làm từ chất liệu Si NuBucks thời thượng, êm ái, co giãn tốt, kết hợp với phần da lộn đầy thẩm mỹ, có vai trò giữ form giày, không bị nhăn nheo, gãy dáng giày.
													Đặc biệt, chất liệu Si NuBucks và da lộn mang đến vẻ đẹp thẩm mỹ cao và rất dễ vệ sinh.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đầy nữ tính nhưng vô cùng thời thượng, phù hợp nhiều phong cách từ cá tính đến bánh bèo nhờ sự phối hợp màu sắc độc đáo.
													Form giày cứng cáp, đứng form, không bị gãy làm to bàn chân.
													Được trang bị kèm dây buộc giày cùng màu tiện lợi, có thể tùy ý sửa đổi theo form dáng bàn chân.
													Sản phẩm được làm từ chất liệu cao cấp, bền bỉ, thoáng khí, hạn chế hư hỏng, nứt nẻ trong quá trình sử dụng.
													Được ứng dụng công nghệ thoáng khí, loại bỏ mùi hôi ẩm tích tụ, giúp bạn cực kỳ thoải mái trong khi hoạt động suốt một ngày dài.
													Có thể sử dụng giày cho nhiều mục đích khác nhau như đi chơi, chạy bộ, leo núi, tập luyện thể thao hay mang đi làm mỗi ngày.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>1 đôi giày.
													Túi chống ẩm.
													Bộ dây giày.
													Hộp giày bìa cứng.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_6.png', N'p2_2_6.png', N'p2_4_6.png', N'p2_5_6.png', N'p2_6_6.png', 1, 1, 6, N'hunter-x-dune---otp-real-edition-hsw001201', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1506000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (33, N'NUHU0003', N'Bitis Hunter Core - Checkmate Collection HSW000100', 834000, 16, 10, 
N'Giày Thể Thao Nữ Bitis Hunter Core - Checkmate Collection là dòng giày được Biti’s chú trọng đến chất lượng và tập trung cao vào việc cải thiện cảm nhận người dùng. Áp dụng công nghệ cao giày giúp hỗ trợ vận động nhẹ nhàng và cũng là đôi giày thời trang đang được yêu thích.                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế ngoài: Sản phẩm được sử dụng công nghệ đế Phylon cao su nhẹ độc quyền của Biti’s Hunter thế nên tạo được sự “nhẹ như bay”, ổn định cho đôi giày. 
													Phần đế tiếp xúc sử dụng cao su kết hợp với các rãnh tạo độ ma sát, có độ bám dính cao, chống trơn trượt, khả năng chịu lực tốt, chống mài mòn và đem lại sự an toàn khi hoạt động nhất là trong những ngày trời mưa.
													Đế trong (lót giày): Lót đế trong giúp ngăn mùi hiệu quả.
													Được ép khuôn 3D ôm trọn bàn chân, mang tới cảm giác êm ái, thoải mái và khả năng hỗ trợ trợ lực với bàn chân, tránh trượt, tụt gót, xê dịch và nâng niu bàn chân một cách tuyệt đối.</td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Chất liệu: Thân trên giày/mũ quai tạo miếng si đắp với đường nét uốn lượn trẻ trung hơn.
													Thiết kế: Sản phẩm có thiết kế trẻ trung, thiết kế cổ vớ thuận tiện cho thao tác mang.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Bitis Hunter Core - Checkmate Collection có trọng lượng nhẹ vừa phải, phù hợp với mọi hoạt động đi lại hoặc thể thao nhưng cũng đảm bảo tính mềm dẻo, che chở cho bàn chân.
													Phối được nhiều trang phục khác nhau.
													Có dây buộc.
													Có thể cung cấp linh hoạt cho chân, giúp người sử dụng dễ dàng thực hiện các động tác chuyển động.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Dây giày chắc chắn
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p3_1_6.png', N'p3_2_6.png', N'p3_4_6.png', N'p3_5_6.png', N'p3_6_6.png', 1, 1, 6, N'bitis-hunter-core---checkmate-collection-hsw000100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 954000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (34, N'NUHU0004', N'Bitis Hunter X Wavy Collection HSW001400', 932000, 16, 10, 
N'Giày thể thao nữ Bitis Hunter X Wavy Collection được thiết kế hiện đại, cá tính cũng chất liệu mềm mại, độ bền cao giúp bạn nữ thỏa sức vận động. Đây là sản phẩm độc đáo với sự kết hợp ấn tượng giữa thiết kế đẹp mắt và công nghệ massage 6 điểm hứa hẹn là người bạn đồng hành lý tưởng trên mọi chặn đường.                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế ngoài Hunter X - Lite Flex 1.0 dáng hình mô phỏng lốp xe mạnh mẽ, cá tính.
													Đế giày của Bitis Hunter X Wavy Collection được làm từ chất liệu IP (Injected Phylon), mang đến sự nhẹ nhàng và êm ái cho bàn chân. Đặc biệt, đế giày được thiết kế để hỗ trợ tăng chiều cao lên tới hơn 5cm, giúp bạn tự tin và thoải mái hơn trong mỗi bước đi.
													Trải nghiệm bước đi nhẹ như bay với độ đàn hồi >40% giúp giảm tác động và rung động lên các cơ và xương trong quá trình di chuyển, tạo ra cảm giác nhẹ nhàng và êm ái.
													Lót đế trong  với lưới kháng khuẩn từ chất liệu Ortholite thun cá sấu ngăn mùi được ép khuôn 3D với công nghệ massage 6 điểm, ôm trọn và nâng niu bàn chân.
													Cấu trúc vải Liteknit giúp đôi giày êm ái, giãn, thoáng khí chẳng ngại ở ngoài đường thời gian dài, tiếp bước chuyển động.
													Phần hậu và má trong với chất liệu mesh tăng thêm trải nghiệm từng bước chân.</td>
											</tr>
											<tr>
												<td>Thiết kế</td>
												<td>Đôi giày thể thao nữ Bitis Hunter X Wavy Collection có thiết kế độc đáo và đầy cá tính, mang đến một cái nhìn mạnh mẽ mô phỏng hình dạng của lốp xe. Dáng hình này tạo nên sự cá tính và ấn tượng cho đôi giày, khiến bạn tự tin và nổi bật trong mọi hoạt động.
													Đây là một sự kết hợp tinh tế giữa sự mạnh mẽ, tính năng hỗ trợ và sự thoải mái, mang đến trải nghiệm hoàn hảo cho bàn chân trong mọi hoạt động.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế độc đáo và đầy cá tính mang đến một cái nhìn nổi bật và độc đáo cho đôi giày.
													Đế giày có tính đàn hồi vượt trội, giảm tác động lên cơ và xương, mang lại cảm giác nhẹ nhàng và thoải mái.
													Lót đế được làm từ lưới kháng khuẩn chất liệu Ortholite thun cá sấu, giúp ngăn chặn mùi hôi không mong muốn. Đồng thời, công nghệ massage 6 điểm với ép khuôn 3D ôm trọn và nâng niu bàn chân, mang đến cảm giác thoải mái và massage nhẹ nhàng.
													Với cấu trúc vải Liteknit và Mesh, đôi giày Bitis Hunter X - Lite Flex 1.0 có tính năng êm, giãn và thoáng khí. Điều này giúp bàn chân không bị khó chịu và mồ hôi trong quá trình di chuyển, đồng thời tiếp bước chuyển động một cách linh hoạt.
													Giày thể thao nữ Bitis Hunter X Wavy Collection phù hợp cho hoạt động thể thao ngoài trời, chạy bộ, dạo phố hoặc đi chơi, đi làm đều hoàn hảo.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_6.png', N'p4_2_6.png', N'p4_4_6.png', N'p4_5_6.png', N'p4_6_6.png', 1, 1, 6, N'bitis-hunter-x-wavy-collection-hsw001400', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1032000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (35, N'NUHU0005', N'Bitis Hunter HSW002900', 1256000, 16, 10, 
N'Giày thể thao là “người bạn đồng hành” quan trọng của mọi người trong mọi chuyển động hàng ngày, nhất là luyện tập thể dục thể thao rèn luyện sức khỏe. Nếu bạn cần tìm một sản phẩm vừa đẹp mắt, vừa chất lượng thì hãy tham khảo ngay mẫu Giày Thể Thao Nữ Biti’s Hunter HSW002900. Đôi giày chắc chắn sẽ khiến mọi chị em hài lòng ngay từ cái nhìn đầu tiên.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đa số người dùng đều ấn tượng với phần đế LITEFLEX 3.0. Đây là công nghệ chế tác đế độc quyền từ Biti’s với vô vàn ưu điểm nổi trội không thể bỏ lỡ. Đó là trọng lượng siêu nhẹ, mang lại cảm giác di chuyển nhẹ như bay cùng công thức cao su cao cấp, được xử lý cẩn thận để tối ưu hóa đặc tính mềm dẻo. Chưa kể, LITEFLEX 3.0 còn có khả năng ma sát tốt, hạn chế tình trạng trơn trượt cũng như kháng mài mòn hiệu quả để sản phẩm bền bỉ hơn hết. 
													Form dáng chunky từ sản phẩm Biti’s Hunter HSW002900 không chỉ giúp thon gọn đôi chân mà còn mang lại khả năng đàn hồi tốt. Từ đó, người dùng cảm thấy mỗi bước chân đều vô cùng êm ái, mềm mại nhất.  
													Trang bị phần lót đế O Foam, nổi trội với khả năng kháng khuẩn siêu tốt để hạn chế tình trạng ngứa ngáy, nổi mẩn… cho người dùng. Đặc biệt, lót đế kết hợp chất liệu Ortholite, sở hữu độ êm ái ưu việt và khả năng hút ẩm, hạn chế mùi hôi độc đáo. Chính vì thế, đôi chân của người sử dụng được bảo vệ tối đa và tạo ra cảm giác thoải mái dù phải mang giày thời gian dài. 
													Phần lót Cup vừa khít cỡ chân, đồng thời tác động massage nhẹ nhàng để người dùng cảm thấy thoải mái nhất.  </td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Lựa chọn kiểu mũ quai dệt Knit có độ liên kết sợi vải chặt chẽ nhưng vẫn co giãn tốt, từ đó tạo ra sự thông thoáng tối ưu, giữ nhiệt tốt và đàn hồi theo từng chuyển động.  
													Thiết kế cổ vớ co giãn, ôm chặt cổ chân một cách tự nhiên, nhằm hạn chế tình trạng trơn tuột gót khi vận động mạnh và thuận tiện tháo - mang giày.  </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thể thao năng động nhưng không kém phần nữ tính.
													Kiểu dáng thời trang, phù hợp với nhiều độ tuổi sử dụng khác nhau. 
													Thích hợp phối cùng nhiều kiểu trang phục đa dạng như váy, quần jeans, quần đùi… 
													Chất liệu làm đế, quai, lót… được đội ngũ nhân viên Biti’s chọn lọc, xử lý cẩn trọng. Qua đó bảo đảm chất lượng tốt nhất và “trăm sản phẩm như một”. Song song có chế độ bảo hành uy tín cho khách hàng an tâm hơn.  
													Mang lại cảm giác êm ái, thoải mái và nhẹ nhàng nhất cho mọi chuyển động của người dùng. 
													Không gây bết rít, nóng ẩm làm cho bàn chân khó chịu.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày.
													Giấy gói.
													Túi chống ẩm. </td>
											</tr>				
										</tbody>
									</table>', N'p5_1_6.png', N'p5_2_6.png', N'p5_4_6.png', N'p5_5_6.png', N'p5_6_6.png', 1, 1, 6, N'bitis-hunter-hsw002900', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1416000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (36, N'NUHU0006', N'Bitis Hunter HSW003200', 834000, 16, 10, 
N'Càng ngày càng nhiều người dùng Việt Nam yêu thích mẫu Giày Thể Thao Nữ Biti’s Hunter HSW003200. Không chỉ sở hữu ngoại hình thể thao năng động nhưng không kém phần nữ tính, sản phẩm còn có bảng màu đa dạng, thời trang kèm chất liệu chất lượng, bền bỉ.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Phần đế chế tác từ chất liệu Phylon với vô số ưu điểm nổi bật. Chẳng hạn như trọng lượng nhẹ gọn, khả năng đàn hồi hiệu quả, uốn gấp tốt mà không lo bị nứt gãy, có khả năng giảm chấn vượt trội… Nhờ vậy, người dùng có cảm giác thoải mái nhất trong mọi bước đi, ngay cả khi vận động mạnh mà không bị đau gót chân. 
													Bên dưới bề mặt là rãnh chống trượt, bảo vệ an toàn tối đa cho người dùng nếu phải di chuyển trong thời tiết mưa gió, ẩm ướt.   </td>
											</tr>
											<tr>
												<td>Thân giày</td>
												<td>Mũ quai lưới Jacquard dệt phân màu sắc bắt mắt. Không chỉ bảo đảm độ thông thoáng tối đa cho người sử dụng nếu mang giày thời gian dài, sản phẩm còn rất bền màu, thấm hút tốt và không gây kích ứng da. 
													Mũi giày ép Nosew hết sức chắc chắn, vừa duy trì form dáng bền lâu, vừa ôm gọn đôi chân một cách nhẹ nhàng nhất. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, năng động với tông màu nữ tính, dịu dàng, phù hợp với nhiều độ tuổi khác nhau.
													Dễ dàng phối đồ cùng nhiều kiểu trang phục như váy, quần jeans, quần đùi… 
													Phù hợp cho đa dạng mục đích sử dụng khác nhau như đi học, đi làm, đi chơi… 
													Chất liệu làm đế được Biti’s chọn lọc, xử lý cẩn trọng, bảo đảm chất lượng tốt nhất. 
													Biti’s kiểm tra cẩn thận trước khi gửi hàng đến tay khách hàng, hạn chế phát sinh lỗi ảnh hưởng đến trải nghiệm của người dùng. 
													Màu sắc đa dạng, đẹp mắt. 
													Form giày vừa vặn với đôi chân của người Việt Nam, không bị co rút hoặc giãn nở sau một thời gian sử dụng, ảnh hưởng đến khả năng bảo vệ chân của sản phẩm. 
													Bảo đảm mang êm chân, chắc chân. 
													Không bám mùi, dính mồ hôi gây ngứa ngáy, khó chịu cho người dùng. </td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày làm từ chất liệu giấy bìa cứng cáp với khả năng chống thấm hút khá ổn. Từ đó bảo vệ đôi giày không bị ẩm mốc. 
													Giấy gói.
													Túi chống ẩm. </td>
											</tr>				
										</tbody>
									</table>', N'p6_1_6.png', N'p6_2_6.png', N'p6_4_6.png', N'p6_5_6.png', N'p6_6_6.png', 1, 1, 6, N'bitis-hunter-hsw003200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 994000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (37, N'NUHU0007', N'Bitis Hunter X HSW003100', 932000, 16, 10, 
N'Giày thể thao nữ Bitis Hunter X HSW003100 mang đến trải nghiệm hiệu suất tuyệt đỉnh, như thể bạn đang ở trong trạng thái không trọng lượng với thiết kế cực kỳ nhẹ. Sản phẩm được thiết kế phân vùng hợp lý với từng khu vực khác nhau, chắc chắn và bền bỉ, phù hợp hơn với bề mặt chân. Khu vực phía trước mềm mại và thoải mái, khu vực giữa eo được nâng đỡ chặt chẽ và khu vực gót chân được bao bọc ổn định, mang lại cảm giác đeo thoải mái, vừa vặn cho người sử dụng.                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế giày IP giúp tăng cường khả năng đàn hồi và hạn chế việc hư hỏng form dáng
													Công nghệ đế giày mang lại cảm giác không trọng lượng giúp tiết kiệm sức lực và giảm thiểu tác động
													Lớp đệm giày thể thao siêu nhẹ, thoáng khí và mềm tạo cảm giác nhạy bén mang lại trải nghiệm tuyệt vời khi di chuyển
													Đế ngoài chống trượt với các rảnh cắt xẻ, uốn cong di chuyển tự nhiên theo bàn chân của bạn, giúp tăng độ bền và ổn định giày </td>
											</tr>
											<tr>
												<td>Thân trên giày</td>
												<td>HSW003100 với vẻ ngoài thể thao năng động, phần trên bằng Si mềm mại, các đường may tỉ mỉ và tinh tế
													Giày mang lại âm thanh tràn đầy năng lượng cho sải chân của bạn, hoàn hảo cho quãng đường dài. Thân giày với khả năng co giãn và thoáng khí
													Cảm nhận sự ổn định với thiết kế thắt dây, giữ cho bàn chân được cố định và vững chãi trong từng bước chân</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Giày thể thao Bitis Hunter X HSW003100 có trọng lượng nhẹ, được tích hợp đế công nghệ cao với khả năng đàn hồi, mang lại cảm giác đẩy để giúp bạn tiến về phía trước
													Lót giày sẽ hấp thụ và hoàn trả lại năng lượng, giúp bạn cải thiện độ bền bỉ trong suốt chuyến đi
													Hình dạng gót chân được thiết kế để tối đa hóa khả năng hạ cánh, giúp bạn dễ dàng chuyển đổi từ gót chân sang ngón chân.
													Sản phẩm có khả năng hỗ trợ theo hướng chuyển động tự nhiên của bàn chân, giúp bạn cảm nhận sự thoải mái nhất có thể trên từng quãng đường chạy.
													HSW003100 sở hữu vẻ ngoài bắt mắt để ngoài những buổi chạy bộ bạn có thể phối hợp sản phẩm với mọi trang phục thường ngày</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng giày làm từ giấy chống ẩm tốt.
													Giấy gói.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p7_1_6.png', N'p7_2_6.png', N'p7_4_6.png', N'p7_5_6.png', N'p7_6_6.png', 1, 1, 6, N'bitis-hunter-x-hsw003100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1012000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (38, N'NUHU0008', N'Bitis Hunter X HSW002300', 1177000, 16, 10, 
N'Giày Thể Thao Nữ Bitis Hunter X HSW002300 mang một dáng vẻ tinh tế, sang trọng. Với chất lượng hoàn hảo và dễ dàng phối đồ trong nhiều hoàn cảnh. Chắc chắn thiết kế sẽ làm hài lòng rất nhiều bạn nữ. Cùng nhau tìm hiểu ngay dưới đây nhé!                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Đế Phylon nhẹ nhàng. Mặt đế thiết kế với các rãnh tăng độ ma sát giúp bạn vững chắc trên từng bước chân, ngoài ra đế rất bền bỉ, độ shore phù hợp, êm ái và nẩy tốt giúp bảo vệ và nâng đỡ đôi bàn chân mỗi khi sử dụng. Đế giày kéo dài bọc tới mũi bàn chân để bảo vệ và tránh va đập.
													Đế giữa (Midsole) chất liệu IP cao cấp, nhẹ, được ép nóng và định hình lạnh trong khuôn 3D để sở hữu độ đàn hồi tốt, độ bền cao, êm ái trong chuyển động. Có các rãnh thiết kế bao quanh giúp hài hòa cho tổng thể cả đôi giày. Thành đế cao từ dưới xuống mũi chân giúp người dùng nâng chiều cao một cách dễ dàng, tinh tế, ôm gọn bàn chân và liên kết với thân giày.
													Đế trong được chất liệu Ortholite, thun cá sấu ngăn mùi, ép khuôn 3D và công nghệ 6 điểm massage lòng bàn chân khiến cho người dùng thoải mái khi di chuyển. Đế được làm từ chất liệu mềm dẻo, chống nước, thông thoáng và được tính toán kỹ lưỡng trên bàn chân người dùng.</td>
											</tr>
											<tr>
												<td>Thân trên giày</td>
												<td>Với thiết kế đầy đủ dây giày, khách hàng có thể điều chỉnh tự do dây sao cho phù hợp với độ lớn thân bàn chân của mình.
													Thiết kế quai da tổng hợp, mềm mại, thông thoáng mà không gây hầm bí.
													Mang vẻ đẹp tinh tế, hiện đại, dễ dàng phối đồ trong nhiều hoàn cảnh, đặc biệt là có thể dùng đi dạo, chạy bộ nhẹ nhàng.
													Đường chỉ may chắc chắn, bền bỉ.
													Phần thân có các nét họa tiết đơn giản kết hợp với màu bạc cùng logo của nhà Biti’s trang trí trên giày.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đẹp mắt, sở hữu nét đẹp sang trọng, trong sáng và vô cùng tinh tế.
													Chất liệu cao cấp mang đến sự thoải mái, êm ái cho người dùng.
													Thiết kế có dây giày dễ dàng điều chỉnh cho thoải mái.
													Đế giày có độ đàn hồi tốt, chống nước, chống trơn trượt trên nhiều địa hình, đảm bảo hiệu quả an toàn cho người sử dụng.
													Đế giày nâng chiều cao của người dùng vô cùng tuyệt vời.
													Thích hợp với nhiều phong cách, có thể kết hợp với áo thun đen trắng, đồ thể dục, quần jeans,...</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p8_1_6.png', N'p8_2_6.png', N'p8_4_6.png', N'p8_5_6.png', N'p8_6_6.png', 1, 1, 6, N'bitis-hunter-x-hsw002300', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 1397000)
/*GIAY THE THAO TRE EM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (39, N'TREH0001', N'Bitis Cool Kids Club x Milo DSG137100', 501000, 16, 10, 
N'Bitis Cool Kids Club x Milo DSG137100 mang một dáng vẻ tinh tế, sang trọng. Với chất lượng hoàn hảo và dễ dàng phối đồ trong nhiều hoàn cảnh. Chắc chắn thiết kế sẽ hợp cho nhiều bé trai. Cùng nhau tìm hiểu ngay dưới đây nhé!                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
												
										</tbody>
									</table>', N'p1_1_10.png', N'p1_2_10.png', N'p1_4_10.png', N'p1_5_10.png', N'p1_6_10.png', 1, 1, 10, N'bitis-cool-kids-club-x-milo-dsg137100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 50)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (40, N'DSBH00300', N'Bitis Hunter Junior DSBH00300', 574000, 16, 10, 
N'Giày Thể Thao Trẻ Em Bitis Hunter Junior DSBH00300 là một trong những mẫu giày có thiết kế đẹp mắt, màu sắc hài hòa tinh tế và kiểu dáng năng động dành cho bé trai. Sản phẩm hiện nay là một trong những mẫu giày siêu hot của nhà Biti’s. Cùng tìm hiểu ngay dưới đây nhé!                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Thiết kế bao gồm đế (Outsole) với chất liệu EVA cao su R.E với tính năng mềm dẻo và nhẹ hơn rất nhiều so với cao su truyền thống. Mang các rãnh tránh trơn trượt trên những địa hình khó. Đế giữa (Midsole) chất liệu IP cao cấp, nhẹ, được ép nóng và định hình lạnh trong khuôn 3D để sở hữu độ đàn hồi tốt, độ bền cao, êm ái trong chuyển động. Đế giày ôm sát chân vô cùng gọn gàng. Đế trong được làm từ chất liệu nhẹ, mềm dẻo, chống nước, thông thoáng không gây hầm nóng cho bé.</td>
											</tr>
											<tr>
												<td>Thân trên giày</td>
												<td>Giày Thể Thao Trẻ Em Bitis Hunter Junior DSBH00300 với phom dáng năng động, nam tính cho các bé trai.
													Giày được thiết kế với quai Si Nubuck dệt mềm mại, các bé có thể dễ dàng điều chỉnh và dán mà không cần sự hỗ trợ của bố mẹ, nới rộng hoặc thu nhỏ lại để vừa vặn với chân của mình.
													Giày Thể Thao Trẻ Em Bitis Hunter Junior DSBH00300 được làm bằng các chất liệu vải và cao su cao cấp, vô cùng an toàn cho sức khỏe và làn da của trẻ, giúp trẻ tha hồ chạy nhảy suốt cả ngày.
													Thân giày được thiết kế họa tiết chắp vá nhiều màu vô cùng hài hòa, đẹp mắt.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế đẹp mắt, sở hữu những đường nét chắc chắn, hài hòa.
													Chất liệu cao cấp mang đến sự thoải mái, êm ái cho các bé. 
													Thiết kế có quai dán dễ dàng điều chỉnh.
													Thích hợp cho các bé trai đi học, đi chơi, đi tiệc cùng cha mẹ, khiến các bé trai thêm phần tự tin, năng động.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_10.png', N'p2_2_10.png', N'p2_4_10.png', N'p2_5_10.png', N'p2_6_10.png', 1, 1, 10, N'bitis-hunter-junior-dsbH00300', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 602000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (41, N'TREH0002', N'Bitis Basic BSB000600', 319000, 16, 10, 
N'Mùa tựu trường sắp đến, nhiều cha mẹ phân vân không biết nên chọn cho con yêu đôi giày nào vừa đẹp mắt, vừa chất lượng. Qua đó tạo động lực để trẻ em đến trường học tập tốt hơn. Thấu hiểu điều này, Biti’s giới thiệu đến phụ huynh Giày Thể Thao Trẻ Em Bitis Basic BSB000600. Sản phẩm chắc chắn làm hài lòng cha mẹ và bé con với thiết kế năng động, màu sắc ấn tượng và chất lượng khỏi phải bàn.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế giày</td>												
												<td>Biti’s lựa chọn chất liệu chế tác đế giày là PVC phun. Chất liệu này “ghi điểm” với khả năng chống trơn trượt tốt, nhằm bảo vệ trẻ em khỏi trượt ngã nguy hiểm. Song song, đế PVC phun còn có độ bền cao, ít bị cong vênh, nứt gãy dưới điều kiện thời tiết của Việt Nam nên bảo đảm tính thẩm mỹ lâu bền hơn bao giờ hết. Đặc biệt, chất liệu PVC khá kinh tế, giúp khách hàng tiết kiệm chi phí sở hữu đôi giày thể thao tối đa nhưng vẫn bảo đảm chất lượng.  
													Hơn thế nữa, Biti’s sử dụng công nghệ phun đế dính vào quai vô cùng chắc chắn, đẹp mắt. Qua đó mang lại cảm giác chắc chân, gọn gàng và tuyệt đối êm ái cho đôi chân trong mọi chuyển động chạy nhảy hàng ngày.  </td>
											</tr>
											<tr>
												<td>Thân trên giày</td>
												<td>Quai giày được sản xuất từ vật liệu Si, nổi bật với ưu điểm về khả năng chống thấm nước và chống bám bụi hiệu quả cũng như ít bong tróc. Nhờ đó, người mang dễ dàng vệ sinh giày dép mà không lo ngại ảnh hưởng đến vấn đề thẩm mỹ. 
													Chưa dừng lại ở đó, Bitis Basic BSB000600 còn bố trí dày đặc các “lỗ thoáng khí” để đôi chân bé luôn được thoáng mát, không bị bám dính mồ hôi hoặc mùi hôi do chạy nhảy nhiều cả ngày dài. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Mẫu giày thể thao sở hữu mức giá siêu rẻ, phù hợp với túi tiền của hầu hết khách hàng Việt Nam. 
													Thiết kế quai dán cho trẻ em dễ sử dụng. 
													Tông màu trắng - đen basic, dễ dàng phối với nhiều kiểu trang phục, phụ kiện… khác nhau. 
													Chất liệu làm đế, quai, lót… được Biti’s chọn lọc, xử lý cẩn nhận theo quy trình tiêu chuẩn, qua đó bảo đảm chất lượng tốt nhất. Đặc biệt, Biti’s có chế độ bảo hành uy tín cho khách hàng an tâm hơn về sản phẩm mình nhận được. 
													Bảo đảm cảm giác thoải mái, nhẹ nhàng nhất cho đôi chân bé xinh của trẻ em.  
													Không gây cảm giác nóng bức, khó chịu nếu mang giày trong thời gian dài.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giày giấy bìa cứng cáp giúp bảo quản giày tốt hơn.
													Giày.
													Dây giày chắc chắn.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p8_1_10.png', N'p8_2_10.png', N'p8_4_10.png', N'p8_5_10.png', N'p8_6_10.png', 1, 1, 10, N'bitis-basic-dsb000600', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 389000)
/*SANDAL TRE EM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (42, N'TRES0001', N'Sandal Bé Gái Bitis DRG001700', 299000, 16, 10, 
N'Sandal Bé Gái Bitis DRG001700 là một trong những mẫu giày có thiết kế đẹp mắt, màu sắc hài hòa tinh tế và kiểu dáng năng động dành cho bé trai. Sản phẩm hiện nay là một trong những mẫu giày siêu hot của nhà Biti’s. Cùng tìm hiểu ngay dưới đây nhé!                                                                                                                                                            ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
													
										</tbody>
									</table>', N'p1_1_11.png', N'p1_2_11.png', N'p1_4_11.png', N'p1_5_11.png', N'p1_6_11.png', 1, 1, 11, N'sandal-be-gai-bitis-drg001700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 339000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (43, N'TRES0002', N'Sandal Si - PU Bé Gái DPG002201', 285000, 16, 10, 
N'Mùa tựu trường sắp đến, nhiều cha mẹ phân vân không biết nên chọn cho con yêu đôi giày nào vừa đẹp mắt, vừa chất lượng. Qua đó tạo động lực để trẻ em đến trường học tập tốt hơn. Thấu hiểu điều này, Biti’s giới thiệu đến phụ huynh Giày Thể Thao Trẻ Em Bitis Basic BSB000600. Sản phẩm chắc chắn làm hài lòng cha mẹ và bé con với thiết kế năng động, màu sắc ấn tượng và chất lượng khỏi phải bàn.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Thiết kế</td>												
												<td>Giày Sandal Bitis với kiểu dáng đơn giản nhưng thời trang, mang lại sự thoải mái và tự tin cho bạn suốt ngày dài. 
													- Quai Si cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân. 

													- Đặc biệt thiết kế quai năng động, viền chỉ chắc chắn ôm gọn chân nhưng lại cực kì thông thoáng, không gây nóng bức, hầm hay khó chịu. 

													- Giày với thiết kế khỏe khoắn, phù hợp để dùng đi chơi, đi bộ hoặc dạo biển. 

													- Phần đế được kết hợp rãnh chống trơn trượt, có tính ma sát cao nên hỗ trợ tránh bị trơn trượt, té ngã khi di chuyển.

													- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.</td>
											</tr>
												
										</tbody>
									</table>', N'p3_1_11.png', N'p3_2_11.png', N'p3_4_11.png', N'p3_5_11.png', N'p3_6_11.png', 1, 1, 11, N'sandal-si-pu-be-gai-dpg002201', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 335000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (49, N'TRES0003', N'Sandal Si Bé Trai Bitis BTB000200', 255000, 16, 10, 
N'Sandal Si Bé Trai Bitis BTB000200 là một sản phẩm xuất sắc từ thương hiệu Bitis, dành riêng cho các bé trai. Sản phẩm được thiết kế với sự tập trung vào sự thoải mái, độ bền và tính tiện dụng, mang đến cho các bé những trải nghiệm tuyệt vời trong mỗi bước chân.                                                                                                                                                              ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế Sandal</td>												
												<td>Đế được làm từ chất liệu cao su chất lượng, giúp tăng độ bền và chống mài mòn. Chất liệu cao su còn có khả năng chịu được va đập, giúp bảo vệ chân bé khỏi những tác động bên ngoài khi chơi đùa hoặc tham gia các hoạt động ngoài trời.
													Thiết kế với rãnh chống trơn trượt, giúp tăng độ bám và đảm bảo an toàn cho bé khi di chuyển trên mọi bề mặt, đặc biệt là những nơi có mặt đất ẩm ướt hoặc trơn trượt.
													Đế của Sandal si bé trai Bitis BTB000200 được thiết kế theo nguyên lý ergonomics, đảm bảo ôm sát chân bé và giúp cân bằng trọng lực khi đi lại.  </td>
											</tr>
											<tr>
												<td>Quai Sandal</td>
												<td>Quai Si cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.
													Sandal si bé trai Bitis BTB000200 được thiết kế với quai điều chỉnh linh hoạt, giúp tùy chỉnh phù hợp với kích thước chân bé.
													Phần quai dép có thêm chi tiết logo Bitis chất lượng, thể hiện tính thương hiệu và độ tin cậy của sản phẩm. </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Sandal Si Bé Trai Bitis BTB000200 với kiểu dáng đơn giản nhưng thời trang, mang lại sự thoải mái và tự tin cho bạn suốt ngày dài. 
													Sandal Si Bé Trai Bitis BTB000200 được thiết kế siêu nhẹ, giúp các bé dễ dàng di chuyển và không gặp cảm giác mỏi mệt.
													Chất liệu cao su cao cấp giúp đôi sandal có độ bền vượt trội, dễ dàng vệ sinh và có tuổi thọ lâu dài.
													Thiết kế mở, thông thoáng giúp chân bé luôn được thoải mái và khô ráo, phù hợp cho những ngày nắng nóng hoặc hoạt động ngoài trời.
													Sandal Si Bé Trai Bitis BTB000200 thích hợp sử dụng hàng ngày, từ chơi đùa, dạo phố đến đi học hay tham gia các hoạt động thể thao nhẹ.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng.
													Giấy gói.
													Túi hút ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p8_1_11.png', N'p8_2_11.png', N'p8_4_11.png', N'p8_5_11.png', N'p8_6_11.png', 1, 1, 11, N'sandal-si-be-trai-bitis-btb000200', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 325000)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (50, N'TRES0004', N'Sandal Eva Phun Bé Trai Bitis DEB008000', 295000, 16, 10, 
N'Sandal Eva Phun Bé Trai Bitis DEB008000 là một trong những món đồ cần thiết giúp các bé có thể thoải mái chạy nhảy vui chơi. Với thiết kế vừa vặn, kiểu dáng đẹp, chất liệu êm ái, chắc chắn sẽ khiến cho mỗi bước đi của bé thêm an toàn và tự tin hơn. Sandal Eva Phun Bé Trai Bitis DEB008000 sẽ là sự lựa chọn hoàn hảo cho con trong các hoạt động thường ngày mà ba mẹ không nên bỏ qua.                                                                                                                                                              ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế Sandal</td>												
												<td>Đế ngoài làm từ cao su non có thiết kế có rãnh với công dụng chống trơn trượt, chịu lực tốt đảm bảo an toàn cho bé
													Phần đế trong êm ái, nâng đỡ chân tạo cảm giác thoải mái cho bé mỗi khi sử dụng
													Đế giày có độ cao 5cm giúp bé tăng chiều cao tinh tế
													Phần đế với khả năng thấm hút mồ hôi, thoáng khí cho bé cảm giác dễ chịu suốt ngày dài  </td>
											</tr>
											<tr>
												<td>Thân Sandal</td>
												<td>Sandal Eva Phun Bé Trai Bitis DEB008000 thiết kế đẹp và tinh tế với chất liệu Eva phun êm dịu, chống thấm nước
													Chất liệu giày cao cấp không độc hại và an toàn cho da bé
													BEB008000 sở hữu các chi tiết được hoàn thiện tỉ mỉ, loại bỏ từng đoạn chỉ thừa gây vướng chân, an toàn tối đa cho bé yêu 
													Sản phẩm thiết kế đơn giản với phần quai ngang bàn chân cùng phần quai hậu thoáng mát, chắc chắn và dễ sử dụng
													Sandal quai dán vô cùng tiện lợi có thể điều chỉnh phù hợp với kích thước bàn chân, giúp bé đi vào và tháo ra một cách dễ dàng </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>SSandal Eva Phun Bé Trai Bitis DEB008000 với kiểu dáng đơn giản nhưng thời trang, mang lại sự thoải mái và tự tin cho bạn suốt ngày dài. 
													Sandal Eva Phun Bé Trai Bitis DEB008000 được thiết kế siêu nhẹ, giúp các bé dễ dàng di chuyển và không gặp cảm giác mỏi mệt.
													Chất liệu cao su cao cấp giúp đôi sandal có độ bền vượt trội, dễ dàng vệ sinh và có tuổi thọ lâu dài.
													Thiết kế mở, thông thoáng giúp chân bé luôn được thoải mái và khô ráo, phù hợp cho những ngày nắng nóng hoặc hoạt động ngoài trời.
													Sandal Eva Phun Bé Trai Bitis DEB008000 thích hợp sử dụng hàng ngày, từ chơi đùa, dạo phố đến đi học hay tham gia các hoạt động thể thao nhẹ.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng.
													Giấy gói.
													Túi hút ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_11.png', N'p5_2_11.png', N'p5_4_11.png', N'p5_5_11.png', N'p5_6_11.png', 1, 1, 11, N'sandal-eva-phun-be-trai-bitis-deb008000', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 365000)

/*DEP TRE EM*/
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (44, N'TRED0001', N'Dép Eva Phun Bé Trai Bitis Disney BEB000997', 162000, 16, 10, 
N'Đồng hành cùng bé tạo nên một kỳ nghỉ đầy thú vị và năng lượng ngay cả những giây phút vui chơi thường ngày bên gia đình. Biti’s gợi ý cho bạn một mẫu dép Eva Phun Disney Bé Trai Bitis BEB000997. Một đôi dép với phong cách giản dị nhưng vẫn năng động và hiện đại cùng họa tiết hoạt hình bắt mắt, chắc hẳn sẽ là món quà vô cùng thích thú với các bé. Cùng tham khảo bài viết dưới đây để biết thêm chi tiết về sản phẩm này nhé!                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>												
												<td>Dép Disney Trẻ Em Bitis BEB000997 có phần đế làm từ chất liệu IP cao cấp, có khả năng uốn gấp, đàn hồi rất tốt tạo cho dép độ êm ái cao cùng trọng lượng siêu nhẹ. Không những thế, chất liệu này còn có khả năng chống thấm hay mài mòn sẽ phù hợp với tất cả hoàn cảnh thời tiết khác nhau.
													Phần mặt dưới của đế dép có nhiều khe rãnh giúp tăng độ ma sát, chống trơn trượt hiệu quả nên bố mẹ không cần lo lắng con sẽ bị té ngã khi di chuyển trên bề mặt ẩm ướt.
													Lớp lót bên trong được đệm êm ái và có khả năng thấm hút mồ hôi tốt, giúp các bé có cảm giác thoải mái và tự tin khi di chuyển, không đau mỏi cho dù có mang dép cả ngày dài. </td>
											</tr>
											<tr>
												<td>Thân trên giày</td>
												<td>Dép Disney Trẻ Em Bitis BEB000997 sử dụng quai chất liệu Si cao cấp, vừa tạo sự nhẹ nhàng lại sang trọng. Không chỉ thế, quai Si còn có khả năng chống thấm nước và độ bền cao.
													Với thiết kế quai ngang được viền chỉ chắc chắn ôm trọn bàn chân, nhưng không hề gây nóng bức mà cực kỳ thông thoáng, thoát khí, rất phù hợp sử dụng trong thời tiết hè.
													Mặt trên của quai dép được in các họa tiết nhiều màu sắc cùng nhân vật hoạt hình chuột Mickey ,rất đáng yêu mà chắc chắn các bé sẽ vô cùng thích thú.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Dép có kiểu dáng đơn giản nhưng được thiết kế với nhiều màu sắc cùng họa tiết hoạt hình đáng yêu nên rất năng động và dễ thương phù hợp cho các bé trai từ đi học, đi chơi, đi hàng ngày,…
													Đế dép được làm từ chất liệu IP cao su cao cấp nên độ bền cao, thời gian sử dụng lâu dài.
													Thiết kế quai ngang năng động, thoáng khí, không gây cảm giác bí bách, hạn chế mồ hôi và giúp bé thoải mái suốt cả ngày dài, dưới mọi thời tiết dù ngày nắng hay ngày mưa.
													Sản phẩm có nhiều size đáp ứng được đa dạng form bàn chân của các bé.
													Dép dễ dàng vệ sinh và bảo quản.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng giúp bảo quản dép tốt nhất.
													Dép.
													Túi chống ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p4_1_12.png', N'p4_2_12.png', N'p4_4_12.png', N'p4_5_12.png', N'p4_6_12.png', 1, 1, 12, N'dep-eva-phun-be-trai-bitis-disney-beb000997', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 202000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (45, N'TRED0002', N'Dép Eva Bé Trai DEB010100', 236000, 16, 10, 
N'Đối với các bé, điều tuyệt vời nhất là được bố mẹ mua cho những món đồ mới, đặc biệt là quần áo và giày dép. Trong mùa hè nóng nực này, những đôi dép hay sandal thoáng mát luôn là những lựa chọn được ưu tiên hàng đầu. Được lấy ý tưởng từ mẫu dép Crocs kết hợp với họa tiết trang trí hoạt hình ngộ nghĩnh - Dép Eva Bé Trai DEB010100 chắc chắn sẽ là một sản phẩm đáng để lựa chọn.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>												
												<td>Đế Dép Eva Bé Trai DEB010100 được làm từ chất liệu IP.  Đế giày IP là một loại đế có chất lượng đến từ Nhật Bản, loại đế này được sản xuất từ cao su non vì thế mang lại cho các bé cảm giác vô cùng êm ái và siêu thấm hút.
													Phần đế dưới có rãnh chống trơn trượt cùng các gân nổi hình bánh donut làm tăng thêm khả năng bám dính, đem lại sự an toàn cho bé khi hoạt động vào ngày mưa. Vì thế bố mẹ có thể yên tâm lựa chọn sản phẩm này cho các bé.
													Phần đế trong cũng có các đường gai cao su nhỏ, giúp hạn chế tình trạng tuột dép khỏi chân khi di chuyển. Đồng thời với thiết kế ôm sát lòng bàn chân cho các bé thoải mái hoạt động cả ngày mà không lo đau chân khi mang dép.</td>
											</tr>
											<tr>
												<td>Quai dép</td>
												<td>Quai Dép Eva Bé Trai DEB010100 được làm từ chất liệu Eva phun cao cấp có thiết kế liền quai, bít mũi giúp tăng khả năng bảo vệ đôi chân cho bé nhưng vẫn thoáng khí nhờ có các lỗ thông khí hai bên quai dép không gây cảm giác bí bách, khó chịu khi mang cả ngày dài.
													Phần mũ quai có các họa tiết được in bằng công nghệ chuyển nhiệt kết hợp với hút chân không có thể in ổn định ngay cả trên các bề mặt lồi lõm làm cho họa tiết đẹp và bền bỉ hơn.
													Quai hậu của dép có đóng nút tán vừa có thể xoay một cách thuận tiện vừa giúp giữ chân tốt hơn.</td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Dép có kiểu dáng thiết kế và trang trí hoạt hình năng động, nhiều màu sắc cá tính phù hợp với các bé trai, có thể phối với nhiều kiểu trang phục khác nhau từ đi chơi tới đi học hoặc đi hàng ngày.
													Đế Dép Eva Bé Trai DEB010100 được làm từ chất liệu IP mềm mại cao cấp nên độ bền cao, sử dụng lâu dài.
													Phần thân dép thiết kế lỗ thoáng khí không tạo cảm giác bí bách, hạn chế mồ hôi, thoải mái cho bé hoạt động cả ngày dưới mọi thời tiết dù ngày nắng hay ngày mưa.
													Đế trong dép ôm trọn bàn chân của bé tạo cảm giác thoải mái khi mang.
													Dép dễ dàng vệ sinh và bảo quản.</td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp giấy bìa cứng giúp bảo quản giày tốt nhất.
													Dép Eva Bé Trai DEB010100
													Túi chống ẩm</td>
											</tr>				
										</tbody>
									</table>', N'p2_1_12.png', N'p2_2_12.png', N'p2_4_12.png', N'p2_5_12.png', N'p2_6_12.png', 1, 1, 12, N'dep-eva-be-trai-deb010100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 316000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (46, N'TRED0003', N'Dép Eva Phun Bé Trai Bitis DEB008900', 128000, 16, 10, 
N'Đối với các bé, điều tuyệt vời nhất là được bố mẹ mua cho những món đồ mới, đặc biệt là quần áo và giày dép. Trong mùa hè nóng nực này, những đôi dép hay sandal thoáng mát luôn là những lựa chọn được ưu tiên hàng đầu. Được lấy ý tưởng từ mẫu dép Crocs kết hợp với họa tiết trang trí hoạt hình ngộ nghĩnh - Dép Eva Bé Trai DEB008900 chắc chắn sẽ là một sản phẩm đáng để lựa chọn.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Kiểu dáng đơn giản nhưng thời trang, mang lại sự thoải mái và tự tin cho bạn suốt ngày dài.
													Thiết kế cao cấp, bền chắc, mang lại nhẹ nhàng, êm ái cho bàn chân.</td>
											</tr>				
										</tbody>
									</table>', N'p1_1_12.png', N'p1_2_12.png', N'p1_4_12.png', N'p1_5_12.png', N'p1_6_12.png', 1, 1, 12, N'dep-eva-phun-be-trai-bitis-deb008900', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 158000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (47, N'TRED0004', N'Dép Xốp Bé Gái Bitis DXG003700', 153000, 16, 10, 
N'Đối với các bé, điều tuyệt vời nhất là được bố mẹ mua cho những món đồ mới, đặc biệt là quần áo và giày dép. Trong mùa hè nóng nực này, những đôi dép hay sandal thoáng mát luôn là những lựa chọn được ưu tiên hàng đầu. Được lấy ý tưởng từ mẫu dép Crocs kết hợp với họa tiết trang trí hoạt hình ngộ nghĩnh - Dép Xốp Bé Gái Bitis DXG003700 chắc chắn sẽ là một sản phẩm đáng để lựa chọn.                                                                                                                                                             ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
									
											</tr>				
										</tbody>
									</table>', N'p3_1_12.png', N'p3_2_12.png', N'p3_4_12.png', N'p3_5_12.png', N'p3_6_12.png', 1, 1, 12, N'dep-xop-be-gai-bitis-dxg003700', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 183000)

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [Sales]) VALUES (48, N'TRED0005', N'Dép Eva Phun Bé Gái Bitis BEG000100', 208000, 16, 10, 
N'Dép Eva Phun Bé Gái Bitis BEG000100 hiện tại nhận được rất nhiều phản hồi tích cực từ những khách hàng yêu thích thương hiệu Biti’s. Bởi lẽ, không chỉ có thiết kế tinh gọn nhưng không kém phần thời trang, sản phẩm còn bảo đảm chất liệu cao cấp, chất lượng chỉn chu cùng chế độ bảo hành tận tâm nhất.                                                                                                                                                              ', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông tin sản phẩm</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Đế dép</td>												
												<td>Ngay từ cái nhìn đầu tiên, hầu hết người mua đều bị thu hút bởi cách phối màu pastel ấn tượng, phù hợp với tính cách trẻ trung, năng động của các bé gái. Thêm vào đó, ý tưởng trang trí của BEG000100 lấy cảm hứng từ bộ sưu tập thức ăn nhanh lạ mắt như kẹo mút, bánh cupcake… nên chắc chắn trẻ sẽ thích thú. 
													Phần đế được chế tác hoàn toàn từ chất liệu cao su IP được chọn lọc, xử lý cẩn trọng theo tiêu chuẩn nhất định. Qua đó, sản phẩm có nhiều ưu điểm ấn tượng như trọng lượng siêu nhẹ, mang lại cảm giác êm ái, không sản sinh chất độc hại, không gây kích ứng da, khả năng chịu lực và chống sốc tốt, giá thành phải chăng… 
													Bên dưới bề mặt đế còn có lớp rãnh dày đặc, nhằm mục đích chống trơn trượt hiệu quả, giúp bảo vệ an toàn cho bé gái trong mọi chuyển động.  </td>
											</tr>
											<tr>
												<td>Quai dép</td>
												<td>Thiết kế bố trí nhiều lỗ thoáng khí phủ khắp bề mặt trên và bên cạnh thân dép giúp cho đôi chân luôn được thông thoáng và thoải mái nhất. Đồng thời hạn chế tình trạng nóng bức, ẩm ướt, bí bách… nếu phải liên tục mang dép cả ngày dài.  
													Phần quai làm từ chất liệu Evaphun, sở hữu vô số ưu điểm ấn tượng. Chẳng hạn như bền bỉ, chịu nhiệt tốt, ít bị cong vênh hoặc nứt vỡ, chống thấm nước hiệu quả, không bị ảnh hưởng bởi bức xạ cực tím… </td>
											</tr>
											<tr>
												<td>Tính năng</td>
												<td>Thiết kế thời trang, năng động, tạo điều kiện thuận lợi nhất cho mọi hoạt động của bé gái. 
													Màu sắc thu hút, tạo điểm nhấn độc đáo cho trẻ trong mỗi bước đi. 
													Dễ dàng sử dụng đi chơi, đi học… rất nhẹ cho đôi chân. 
													Chất liệu làm đế, làm quai được Biti’s xử lý theo đúng quy trình tiêu chuẩn, bảo đảm chất lượng và độ bền cao nhất. 
													Mang lại cảm giác êm ái, thoải mái nhất trong mỗi chuyển động nhờ chất liệu mềm mại, kết hợp với lỗ thông khí lớn và lớp gai massage nhẹ nhàng trên bề mặt đế dép.  
													Thiết kế quai nút tán xoay thuận tiện cho bé chuyển đổi từ dép thành sandal và ngược lại nhanh chóng. </td>
											</tr>
											<tr>
												<td>Bảo hành</td>
												<td>Sản phẩm được bảo hành trong vòng 3 tháng kể từ thời điểm mua hàng. Ngoài ra sản phẩm còn được bảo hành trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện tái chế không bị rách,…)<br>
												Đổi size trong vòng 7 ngày, đổi sản phẩm lỗi trong vòng 7 ngày, kể từ thời điểm mua hàng, nếu sản phẩm vẫn đáp ứng chính sách đổi trả. Điều kiện và quy định đổi trả, quý khách vui lòng tham khảo trên website chính thức.</td>
											</tr>
											<tr>
												<td>Sản phẩm bao gồm</td>
												<td>Hộp đựng.
													Giấy gói.
													Túi hút ẩm.</td>
											</tr>				
										</tbody>
									</table>', N'p5_1_12.png', N'p5_2_12.png', N'p5_4_12.png', N'p5_5_12.png', N'p5_6_12.png', 1, 1, 12, N'dep-eva-phun-be-gai-bitis-beg000100', CAST(N'2021-12-08T06:01:59.943' AS DateTime), 3, NULL, 0, CAST(N'2021-12-12T10:13:23.157' AS DateTime), 3, 308000)


SET IDENTITY_INSERT [dbo].[Products] OFF

GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'ROLE_USER')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'ROLE_ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'ROLE_DIRECTOR')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role] ON 

INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1, 1, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (2, 2, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (3, 3, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (4, 4, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (5, 5, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (6, 6, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (7, 7, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (8, 8, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (9, 9, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (10, 10, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (11, 11, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (12, 12, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (13, 13, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (14, 14, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (15, 15, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (16, 16, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (17, 17, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (18, 18, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (19, 19, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (20, 20, 1)
SET IDENTITY_INSERT [dbo].[User_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (1, N'thainguyen@gmail.com', N'blackkatana1z', N'Trần Thái Nguyên', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (2, N'quangloc@gmail.com', N'astora2x', N'Phạm Nguyễn Quang Lộc', 1, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (3, N'quocdat@gmail.com', N'dredge3c', N'Trần Quốc Đạt', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (4, N'thanhdat@gmail.com', N'fearandhunger4v', N'Nguyễn Thành Đạt', 1, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (5, N'ngoclong@gmail.com', N'blackkatana1z', N'Phạm Ngọc Long', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (6, N'lttam@gmail.com', N'astora2x', N'Lê Thị Tâm', 0, NULL, 0, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (7, N'tthoa@gmail.com', N'dredge3c', N'Trần Thị Hòa', 0, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (8, N'ntphuonglan@gmail.com', N'fearandhunger4v', N'Nguyễn Thị Phương Lan', 0, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (9, N'maianh@gmail.com', N'blackkatana1z', N'Đỗ Mai Anh', 0, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (10, N'ntynhi@gmail.com', N'astora2x', N'Nguyễn Thị Yến Nhi', 0, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (11, N'clbminh@gmail.com', N'dredge3c', N'Cổ Lưu Bình Minh', 0, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (12, N'tnhtran@gmail.com', N'fearandhunger4v', N'Tôn Nữ Hương Trân', 0, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (13, N'pmtuan@gmail.com', N'blackkatana1z', N'Phạm Minh Tuấn', 0, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (14, N'anhtd@gmail.com', N'astora2x', N'Đỗ Anh Thư', 0, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (15, N'tuankietle@gmail.com', N'dredge3c', N'Lê Tuấn Kiệt', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (16, N'tdkhoa@gmail.com', N'fearandhunger4v', N'Trần Đăng Khoa', 1, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (17, N'lvthanh@gmail.com', N'fearandhunger4v', N'Lê Văn Thanh', 1, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (18, N'pvtoan@gmail.com', N'blackkatana1z', N'Phan Văn Toàn', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (19, N'vttgiang@gmail.com', N'astora2x', N'Võ Thị Trường Giang', 0, NULL, 1, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Sex], [Birthday], [Subscribe], [CreateDay], [DeleteDay], [PersonDelete]) VALUES (20, N'phulu@gmail.com', N'dredge3c', N'Lư Phú', 1, NULL, 0, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0)

SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [NameSearch]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Discount_Id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Views__4D94879B]  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Create__5070F446]  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Delete__5165187F]  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Person__52593CB8]  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Update__534D60F1]  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Person__5441852A]  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Sales]  DEFAULT ((0)) FOR [Sales]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Birthday]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Subscribe]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[MenuOne]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTwo]  WITH CHECK ADD FOREIGN KEY([Menu1_Id])
REFERENCES [dbo].[MenuOne] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Product___619B8048] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Product___619B8048]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Cate_I__628FA481] FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Cate_I__628FA481]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Manu_I__6383C8BA] FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Manu_I__6383C8BA]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
