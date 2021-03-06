USE [GearBest]
GO
ALTER TABLE [dbo].[ReplyFeedback] DROP CONSTRAINT [FK__ReplyFeed__FeedB__4316F928]
GO
ALTER TABLE [dbo].[ReplyFeedback] DROP CONSTRAINT [FK__ReplyFeed__Custo__440B1D61]
GO
ALTER TABLE [dbo].[Payment] DROP CONSTRAINT [FK__Payment__OrderID__3D5E1FD2]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Order__3A81B327]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__ItemI__398D8EEE]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__CustomerI__36B12243]
GO
ALTER TABLE [dbo].[ItemType] DROP CONSTRAINT [FK__ItemType__MenuID__2B3F6F97]
GO
ALTER TABLE [dbo].[Item] DROP CONSTRAINT [FK__Item__TypeID__31EC6D26]
GO
ALTER TABLE [dbo].[Item] DROP CONSTRAINT [FK__Item__BrandID__32E0915F]
GO
ALTER TABLE [dbo].[FooterDetail] DROP CONSTRAINT [FK__FooterDet__Foote__4CA06362]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK__Feedback__Custom__403A8C7D]
GO
ALTER TABLE [dbo].[Brand] DROP CONSTRAINT [FK__Brand__MenuID__2E1BDC42]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [DF__Order__Orderdate__35BCFE0A]
GO
ALTER TABLE [dbo].[Item] DROP CONSTRAINT [DF__Item__DateImport__30F848ED]
GO
/****** Object:  Index [UQ__Customer__536C85E493F4B916]    Script Date: 7/22/2021 2:20:58 PM ******/
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [UQ__Customer__536C85E493F4B916]
GO
/****** Object:  Table [dbo].[ReplyFeedback]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplyFeedback]') AND type in (N'U'))
DROP TABLE [dbo].[ReplyFeedback]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND type in (N'U'))
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type in (N'U'))
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemType]') AND type in (N'U'))
DROP TABLE [dbo].[ItemType]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
DROP TABLE [dbo].[Item]
GO
/****** Object:  Table [dbo].[FooterDetail]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FooterDetail]') AND type in (N'U'))
DROP TABLE [dbo].[FooterDetail]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Footer]') AND type in (N'U'))
DROP TABLE [dbo].[Footer]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blogs]') AND type in (N'U'))
DROP TABLE [dbo].[Blogs]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banner]') AND type in (N'U'))
DROP TABLE [dbo].[Banner]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
DROP TABLE [dbo].[Admin]
GO
/****** Object:  Table [dbo].[About]    Script Date: 7/22/2021 2:20:58 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[About]') AND type in (N'U'))
DROP TABLE [dbo].[About]
GO
/****** Object:  Table [dbo].[About]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Phone] [nvarchar](100) NULL,
	[OpenningTime] [nvarchar](40) NULL,
	[OpenningDay] [nvarchar](40) NULL,
	[Messages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Messages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterDetail]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[FooterID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyFeedback]    Script Date: 7/22/2021 2:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyFeedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[FeedBackID] [bigint] NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'a', N'1', N'b', NULL)
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'banner3.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'banner6.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (3, N'banner4.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (4, N'banner5.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [DateImport], [Title], [ShortTitle], [Picture], [Describe]) VALUES (1, CAST(N'2021-07-13T00:00:00.000' AS DateTime), N'ASUS VivoBook 15', N'ASUS VivoBook 15 Có gì nổi bật? ', N'asus.jpg', N'1. Cho dù đang làm việc hay giải trí, ASUS VivoBook 15 là chiếc máy tính xách tay nhỏ gọn giúp bạn đắm chìm trong bất cứ điều gì bạn muốn làm. Màn hình NanoEdge bốn cạnh không khung mới tự hào có viền siêu mỏng 5,7mm, mang lại tỷ lệ màn hình so với thân máy là 88% đáng kinh ngạc cho hình ảnh cực kỳ đắm chìm. Thiết kế bản lề ErgoLift cũng làm nghiêng bàn phím lên để gõ thoải mái hơn. VivoBook 15 được trang bị bộ vi xử lý Intel core i3 để giúp bạn hoàn thành công việc mà ít phiền phức nhất. Tốc độ truyền thực tế của USB 3.0, 3.1, 3.2 (Gen 1 và 2) và / hoặc Type-C sẽ khác nhau tùy thuộc vào nhiều yếu tố bao gồm tốc độ xử lý của thiết bị chủ, thuộc tính tệp và các yếu tố khác liên quan đến cấu hình hệ thống và của bạn Môi trường hoạt động. Pin: Yêu cầu 1 pin Lithium ion.')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Xiaomi', 5)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Samsung', 5)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (3, N'Apple', 5)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (4, N'Nokia', 5)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (6, N'Asus', 5)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (1, N'hoanguyen', N'1', N'HOANGUYEN', N'64/3', N'hoant2019@gmail.com                                                                                 ', N'0932273784', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Xiaomi Redmi Note 10 Pro', CAST(6 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 40, 1, 1, N'xiaomi1.jpg', 1, N' Xiaomi Redmi Note 10 Pro (8GB/128GB)', N'Xiaomi Redmi Note 10 Pro có thiết kế nguyên khối mang lại cảm giác rất đầm tay và chắc chắn, bên cạnh việc trang bị mặt kính ở hai cả hai mặt, tăng khả năng chống chịu va đập và các trầy xước không mong muốn. Thiết kế sang trọng với khung viền được gia công bằng vật liệu kim loại cao cấp, máy sử dụng bản màu thanh lịch với những màu sắc trẻ trung và năng động tùy chọn theo sở thích.

')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Xiaomi Mi 11 5G', CAST(6 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 40, 1, 1, N'xiaomi2.jpg', 1, N'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888', N'Mi 11 sở hữu thân máy thanh mảnh với độ mỏng ấn tượng 8.06 mm, được vuốt cong dần về cạnh 2 bên, nối liền hoàn hảo với phần khung kim loại siêu mỏng và màn hình ở mặt trước tạo nên một khối liền mạch, cho bạn trải nghiệm cầm nắm tốt nhất. Với tổ hợp 3 cảm biến gồm có camera chính 108 MP, camera góc siêu rộng 13 MP và camera chụp cận macro 5 MP, cùng hệ thống phần cứng tối tân được trang bị bên trong. Tất cả đã làm nên đẳng cấp nhiếp ảnh di động chuyên nghiệp trên Mi 11.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Xiaomi POCO X3 NFC', CAST(4 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 40, 1, 1, N'xiaomi3.jpg', 1, N'Xiaomi POCO X3 NFC mang theo nhiều tính năng hấp dẫn trên một chiếc điện thoại thông minh, cụm camera chất lượng, hiệu năng mạnh mẽ, dung lượng pin khủng cùng khả năng sạc nhanh vượt trội 33 W.', N'Xiaomi POCO X3 được trang bị màn hình tràn viền IPS LCD 6.67 inch với độ phân giải Full HD+ cho chất lượng hiển thị sắc nét, màu sắc chân thực. Bên cạnh đó, màn hình hỗ trợ tốc độ làm mới 120 Hz giúp cho mọi hoạt động hay chơi game mượt mà và trơn tru hơn. Máy được thiết kế nguyên khối và bọc kính cường lực Corning Gorilla Glass 5 ở mặt trước và lớp nhựa giả kính cao cấp mặt lưng góp phần tăng độ cứng cáp lẫn nét sang trọng cho máy.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Samsung Galaxy Z Fold2 5G', CAST(5 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 39, 1, 2, N'samsung1.jpg', 1, N'Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp của Samsung.', N'Samsung Galaxy Z Fold 2 vẫn giữ nguyên cơ chế màn hình gập ở thế hệ tiền nhiệm. Như một quyển sách, chiếc điện thoại mở ra để hiển thị màn hình lớn bên trong. Bên ngoài là một màn hình phụ tràn viền với thiết kế đục lỗ. ')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Samsung Galaxy A52 (8GB/256GB)', CAST(5 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 40, 1, 2, N'samsung2.jpg', 1, N'Galaxy A52 (8GB/256GB). Sở hữu vi xử lý Snapdragon 720G mạnh mẽ bậc nhất, cụm 4 camera có độ phân giải lên đến 64 MP và một vẻ ngoài hiện đại, trẻ trung tràn đầy sức sống.', N'Galaxy A52 mang trong mình con chip Snapdragon 720G 8 nhân sản xuất dựa trên quy trình 8 nm, chipset được cải tiến các thông số cao cấp, để so sánh thì Snapdragon 720G sẽ là mạnh hơn Exynos 9611 ở phiên bản tiền nhiệm cả CPU lẫn GPU. Hiệu năng sức mạnh, mượt mà của chiếc điện thoại là điều mà không một người dùng chuyên hoạt động gaming nào có thể bỏ qua.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Samsung Galaxy S21 Ultra 5G ', CAST(5 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)), CAST(N'2021-07-12T00:00:00.000' AS DateTime), 40, 1, 2, N'samsung3.jpg', 1, N'Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.', N'Không chỉ đơn thuần phục vụ giao tiếp và giải trí, Samsung Galaxy S21 Ultra 5G còn chính là món phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngoài mảnh mai và thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm và trọng lượng 228 g dù phải “vác” một viên pin lớn.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'iPhone 12 64GB', CAST(6 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), CAST(N'2021-07-13T18:02:20.133' AS DateTime), 40, 1, 3, N'iphone1.jpg', 1, N'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá', N'Apple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (9, N'Nokia 2.4', CAST(6 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), CAST(N'2021-07-13T18:04:07.660' AS DateTime), 39, 1, 4, N'nokia1.jpg', 1, N'Nokia 2.4 là một trong những smartphone nổi bật trong phân khúc giá rẻ với nhiều nâng cấp về ngoại hình lẫn chất lượng', N'Nokia 2.4 mang ngôn ngữ thiết kế hoàn toàn khác với các thế hệ Nokia 2.2 hay Nokia 2.3 khi được trang bị mặt lưng 3D họa tiết phay xước độc đáo kết hợp cùng hiệu ứng chuyển đổi màu gradient đẹp mắt ấn tượng từ cái nhìn đầu tiên.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (10, N'Nokia 8000 4G ', CAST(6 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), CAST(N'2021-07-13T18:06:53.610' AS DateTime), 40, 2, 4, N'nokia2.jpg', 1, N'Bên cạnh Nokia 6300 4G HMD Global đã cho ra mắt chiếc điện thoại Nokia 8000 4G', N'Chiếc điện thoại có khung và mặt lưng được làm từ nhựa với lớp vỏ sáng bóng như thủy tinh cao cấp và các màu sắc lấy cảm hứng từ đá quý, Nokia 8000 4G được thiết kế để tỏa sáng. Lớp hoàn thiện khung giữa mạ chrome sang trọng hoàn thiện vẻ ngoài.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Nokia 105 4G', CAST(6 AS Decimal(18, 0)), CAST(18 AS Decimal(18, 0)), CAST(N'2021-07-13T00:00:00.000' AS DateTime), 40, 2, 4, N'nokia3.jpg', 1, N'Nokia 105 4G - Chiếc điện thoại phổ thông nổi bật với thiết kế sang trọng, khả năng nghe gọi bền bỉ trong thời gian dài, hỗ trợ công nghệ 4G', N'<p>To&agrave;n th&acirc;n của m&aacute;y được ho&agrave;n thiện từ nhựa với lớp vỏ s&aacute;ng b&oacute;ng nh&igrave;n kh&aacute; đẹp mắt, tạo sự sang trọng v&agrave; tinh tế cho m&aacute;y. Một trong những điểm cộng của thiết bị l&agrave; độ bền cao hạn chế được t&igrave;nh trạng nứt vỡ khi v&ocirc; t&igrave;nh va chạm hoặc l&agrave;m rơi.</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (23, N'ASUS Gaming TUF FX516PE ', CAST(7 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(N'2021-07-22T00:00:00.000' AS DateTime), 40, 3, 6, N'laptop1.jpg', 1, N'ASUS Gaming TUF FX516PE-HN005T/i7-11370H', N'Laptop ASUS Gaming TUF FX516PE HN005T là đại diện tiêu biểu cho laptop chơi game thời đại mới, khi bạn có thể tận hưởng khả năng chơi game mạnh mẽ như những PC hàng đầu với chip Intel Core i7 gen 11 và card đồ họa RTX 30 series ở bất cứ nơi nào bạn muốn.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (24, N'Asus Vivobook S14 S433EA ', CAST(7 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(N'2021-07-22T00:00:00.000' AS DateTime), 40, 3, 6, N'laptop2.jpg', 1, N'Tháng 6 năm 2020, Asus ra mắt dòng laptop dành cho thế hệ gen Z- Asus Vivobook S433', N'Cho dù bạn là một người sử dụng laptop chỉ để xử lí công việc hàng ngày, hay thậm chí là người dùng laptop để sáng tạo, thực hiện các tác vụ nặng thì Asus Vivobook S433 hoàn toàn có thể cùng bạn trải qua cả ngày làm việc một cách nhanh chóng, mượt mà. Máy được trang bị bộ vi xử lý Intel® Gen 11th mới nhất để đem lại hiệu năng mạnh mẽ, cùng ổ SSD M.2 PCIe cho phép bạn lưu trữ siêu nhanh.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (25, N'Apple MacBook Air M1 2020', CAST(7 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), CAST(N'2021-07-22T13:45:48.970' AS DateTime), 40, 3, 3, N'laptop3.jpg', 1, N'Laptop Apple MacBook Air M1 2020 (Z12A00050) mang nét thanh lịch sang trọng với thiết kế kim loại nguyên khối cùng hiệu năng vượt trội nhờ chip M1 độc quyền của “nhà Táo”', N'Macbook M1 được bao bọc bởi lớp kim loại nguyên khối cứng cáp nhưng chỉ nhẹ 1.29 kg và mỏng 16.1 mm đảm bảo tính linh động cho chiếc máy của bạn lại không kém phần sang trọng. Thông tin cá nhân được bảo đảm an toàn nhờ bảo mật vân tay trên MacBook Air, giúp người dùng mở khóa, xác thực nhanh chóng, thanh toán online dễ dàng. Thông tin cá nhân được bảo đảm an toàn nhờ bảo mật vân tay trên MacBook Air, giúp người dùng mở khóa, xác thực nhanh chóng, thanh toán online dễ dàng.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (27, N'iMac 24 inch 2021', CAST(7 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(N'2021-07-22T13:49:13.653' AS DateTime), 40, 4, 3, N'mayban1.jpg', 1, N'Apple đã chính thức trình làng iMac 24 inch 2021 4.5K Retina M1(MJ93SA/A) vào đầu quý 2 năm 2021 với thiết kế hoàn toàn mới', N'Máy tính để bàn này của Apple cũng được trang bị các cổng kết nối thông dụng: 2 cổng Thunderbolt có thể truyền tải dữ liệu tốc độ rất cao và có thể kết nối với nhiều thiết bị hơn cùng lúc, bao gồm cả màn hình rời chất lượng 6K như màn hình Apple Pro Display XDR.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (28, N'Asus Vivo AIO V222FAK', CAST(7 AS Decimal(18, 0)), CAST(1500 AS Decimal(18, 0)), CAST(N'2021-07-22T13:53:23.477' AS DateTime), 40, 4, 6, N'mayban2.jpg', 1, N'Asus Vivo AIO V222FAK i5 (BA220T) thuộc dòng All-in-One - Tất cả trong một được tích hợp đầy đủ', N'Máy tính để bàn Asus được thiết kế liền khối dài 48.9 cm, rộng 38.7 cm, dày 5.1 cm tại vị trí mỏng nhất của máy. Tổng thể máy có trọng lượng 4.8 kg và được nâng đỡ bởi bản lề cân bằng hoàn hảo giữ cho màn hình chắc chắn, đồng thời cho phép bạn dễ dàng nghiêng màn hình đến các góc thoải mái nhất.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (29, N'Samsung Galaxy Buds Pro', CAST(7 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(N'2021-07-22T13:58:03.240' AS DateTime), 40, 5, 2, N'tainghe1.jpg', 1, N'Tai nghe Samsung Galaxy Buds Pro - Thiết kế tinh tế cùng chất âm đột phá
', N'Tai nghe không dây bluetooth Samsung Galaxy Buds Pro sở hữu một thiết kế bầu dục, khác với thiết kế bo tròn trên thế hệ tiền nhiệm. Được phủ thêm một lớp sơn bóng giúp làm nổi bật thiết kế của tai nghe thêm phần bắt mắt, nổi bật dưới mọi góc nhìn.

')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (31, N'AirPods 2 Apple MV7N2', CAST(10 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(N'2021-07-22T14:00:37.143' AS DateTime), 40, 5, 3, N'tainghe2.jpg', 1, N'Tai nghe Bluetooth AirPods 2 Apple MV7N2 Trắng vẫn giữ cho mình thiết kế hiện đại, cao cấp, hợp thời trang
', N'Tai nghe AirPods 2 trang bị chip H1 giúp tai nghe kết nối ổn định, nhanh chóng và tiết kiệm pin hơn
')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (32, N'True Wireless Redmi Airdots 3', CAST(10 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(N'2021-07-22T14:04:13.347' AS DateTime), 40, 5, 1, N'tainghe3.jpg', 1, N'Tai nghe Xiaomi Redmi AirDots 3 Pro TWS bluetooth 5.2 chính hãng Khử tiếng ồn Chủ động Tai nghe đeo tai có độ trễ thấp Tai nghe có mic - Đen COD
', N'Airdots 3 Pro đến với khả năng khử tiếng ồn chủ động lên đến 35 dB và ba tốc độ. Điều này thích ứng với các môi trường khác nhau và phù hợp với độ sâu giảm tiếng ồn thoải mái. Hỗ trợ công nghệ sạc không dây Qi, có thể được sạc chỉ với một cú nhấp chuột, hoàn toàn không bị cùm của cáp dữ liệu và có thể sạc bất cứ lúc nào.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (33, N'Samsung Galaxy Watch Active 2', CAST(10 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), CAST(N'2021-07-22T14:07:50.180' AS DateTime), 40, 6, 2, N'dongho1.jpg', 1, N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 cải tiến hơn với màn hình chống chói, hiển thị thông tin sắc nét. Các tiện ích khác cũng được nâng cấp nhằm mang lại sự tiện lợi nhất cho người dùng.
', N'Galaxy Watch Active 2 mang thiết kế gọn gàng, mặt kính tròn 44 mm viền cong sang trọng tôn dáng tay. Dây đeo chất liệu Sillicone mềm mại có thể tháo rời tiện lợi để bạn thay màu dây tùy ý. 

')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (34, N'Apple Watch S6', CAST(10 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(N'2021-07-22T14:08:36.333' AS DateTime), 40, 6, 3, N'dongho2.jpg', 1, N'Apple Watch S6 mang đến những nâng cấp hữu ích để hỗ trợ người dùng một cách tối ưu nhất. Nổi bật trong số đó là chip xử lý S6 cải thiện hiệu năng, hệ điều hành watchOS 7 với nhiều tính năng mới', N'Chiếc Apple Watch S6 40mm viền nhôm dây cao su này vẫn giữ trọn vẹn nét tinh tế và sắc sảo trong thiết kế từ trước đến nay, mặt kính Ion-X strengthened glass ưu việt, viền nhôm được vát gọt công phu và dây đeo cao su co dãn tốt, êm tay.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (35, N'Mi Watch', CAST(10 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)), CAST(N'2021-07-22T14:10:52.973' AS DateTime), 40, 6, 1, N'dongho3.jpg', 1, N'Đồng hồ thông minh Mi Watch này mang phong cách trẻ trung, cá tính và đậm chất thể thao. Đồng hồ được trang bị công nghệ màn hình AMOLED với kích thước 1.39 inc', N'Đồng hồ thông minh có trọng lượng 32 gram siêu nhẹ với khung viền nhựa tạo cảm giác thoải mái cho người dùng khi đeo đồng hồ trong suốt ngày dài. Với 100 mẫu thiết kế mặt đồng hồ được cung cấp sẵn, bạn có thể thoải mái lựa chọn và thay đổi giao diện cho chiếc đồng hồ.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (37, N'Samsung EB-P5300 20000mAh', CAST(10 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), CAST(N'2021-07-22T14:15:16.797' AS DateTime), 40, 7, 2, N'duphong1.jpg', 1, N'Tương thích và sạc được nhiều loại thiết bị với dung lượng sạc dự phòng 20.000 mAh
', N'Thiết kế gọn nhẹ, sang trọng, vỏ bọc nhựa tối ưu trọng lượng. Hỗ trợ các công nghệ sạc nhanh Super Fast Charging, Power Delivery, Quick Charge 2.0. Dung lượng pin cao 20.000 mAh, lõi pin Polymer an toàn. Công suất nguồn ra qua cổng USB, Type C tối đa 25W. Phù hợp với nhiều loại thiết bị.')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (39, N'Xiaomi Essential 10.000mAh', CAST(10 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), CAST(N'2021-07-22T14:17:12.413' AS DateTime), 40, 7, 1, N'duphong2.jpg', 1, N'Pin sạc dự phòng Xiaomi Essential - tích hợp sạc không dây 10W cùng dung lượng pin lớn
', N'Pin sạc dự phòng Xiaomi Essential được thiết kế dạng hình chữ nhật với các cạnh bo tròn quen thuộc. Kết hợp với lớn vỏ nhám chống trơn trượt, ma sát nhờ đó người dùng có thể dễ dàng và thoải mái khi cầm nắm.

Pin sở hữu trọng lượng nhẹ, chỉ khoảng 310g. Với trọng lượng này, người dùng có thể thoải mái mang theo du lịch, sử dụng mà không gặp nhiều khó khăn hay vướng víu.')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Điện thoại thông minh', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Điện thoại thường', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Laptop', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Máy Tính Bàn', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Tai nghe', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Đồng hồ', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Sạc dự phòng', 4)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Trang chủ', N'Index')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Điện thoại', N'Helmets')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Máy tính', N'RiddingGear')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (4, N'Phụ Kiện', N'Accsesories')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (5, N'Thương Hiệu', N'Brand')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (6, N'Tin tức', N'Blog')
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (7, N'Liên hệ', N'Contact')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (1, CAST(N'2021-07-12T23:04:41.777' AS DateTime), NULL, NULL, 0, CAST(16 AS Decimal(18, 0)), 1)
INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (2, CAST(N'2021-07-16T15:10:43.693' AS DateTime), NULL, NULL, 0, CAST(17 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (1, 1, 4, 1, CAST(16 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (2, 1, 9, 2, CAST(17 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E493F4B916]    Script Date: 7/22/2021 2:20:58 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[FooterDetail]  WITH CHECK ADD FOREIGN KEY([FooterID])
REFERENCES [dbo].[Footer] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[ReplyFeedback]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[ReplyFeedback]  WITH CHECK ADD FOREIGN KEY([FeedBackID])
REFERENCES [dbo].[Feedback] ([ID])
GO
