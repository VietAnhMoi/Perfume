USE [Perfume]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cusid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [varchar](10) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[cusid] [int] NULL,
	[orderdate] [date] NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfumes]    Script Date: 08/07/2024 21:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfumes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [int] NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[releaseDate] [date] NOT NULL,
	[bid] [int] NULL,
	[cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [username], [password], [role]) VALUES (6, N'moi', N'123', 1)
INSERT [dbo].[Admins] ([ID], [username], [password], [role]) VALUES (7, N'chy', N'123', 2)
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([ID], [name], [image]) VALUES (1, N'Gucci', N'gucci.jpg')
INSERT [dbo].[Brands] ([ID], [name], [image]) VALUES (2, N'Chanel', N'chanel.jpg')
INSERT [dbo].[Brands] ([ID], [name], [image]) VALUES (3, N'Tom Ford', N'tomford.jpg')
INSERT [dbo].[Brands] ([ID], [name], [image]) VALUES (4, N'Guerlain', N'guerlain.jpg')
INSERT [dbo].[Brands] ([ID], [name], [image]) VALUES (5, N'Christian Dior', N'dior.jpg')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [name]) VALUES (1, N'Woman')
INSERT [dbo].[Categories] ([ID], [name]) VALUES (2, N'Man')
INSERT [dbo].[Categories] ([ID], [name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([ID], [username], [password], [name], [phone], [email], [image]) VALUES (4, N'moi', N'123', N'Moi Moi', N'0961664938', N'vietanhv830@gmail.com', NULL)
INSERT [dbo].[Customers] ([ID], [username], [password], [name], [phone], [email], [image]) VALUES (6, N'chy', N'111', N'Chy Chy', N'0865825555', N'chy@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [oid], [pid], [quantity]) VALUES (18, 1, 5, 2)
INSERT [dbo].[OrderDetails] ([ID], [oid], [pid], [quantity]) VALUES (19, 1, 6, 1)
INSERT [dbo].[OrderDetails] ([ID], [oid], [pid], [quantity]) VALUES (20, 2, 2, 1)
INSERT [dbo].[OrderDetails] ([ID], [oid], [pid], [quantity]) VALUES (21, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
INSERT [dbo].[Orders] ([ID], [cusid], [orderdate], [address], [status]) VALUES (1, 4, CAST(N'2024-07-08' AS Date), N'Chương Mỹ, Hà Nội', N'denied')
INSERT [dbo].[Orders] ([ID], [cusid], [orderdate], [address], [status]) VALUES (2, 4, CAST(N'2024-07-08' AS Date), N'Hoài Đức, Hà Nội', N'complete')
GO
SET IDENTITY_INSERT [dbo].[Perfumes] ON 

INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (1, N'Flora Gorgeous Gardenia', 168, 8, 100, N'gucci_flora_gorgeous_gardenia.jpg', CAST(N'2022-08-12' AS Date), 1, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (2, N'Guilty Pour Homme', 151, 28, 90, N'gucci_guilty_pour_homme.jpg', CAST(N'2023-07-12' AS Date), 1, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (3, N'A Floral Verse', 384, 20, 100, N'gucci_a_floral_verse.jpg', CAST(N'2023-02-22' AS Date), 1, 3)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (4, N'Gabrielle Perfume', 135, 20, 50, N'chanel_gabrielle_perfume.jpg', CAST(N'2023-09-10' AS Date), 2, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (5, N'Bleu De Chanel', 150, 50, 100, N'chanel_bleu_de_chanel.jpg', CAST(N'2022-10-02' AS Date), 2, 2)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (6, N'Coco', 165, 50, 100, N'chanel_coco.jpg', CAST(N'2021-10-12' AS Date), 2, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (7, N'Oud Wood', 425, 20, 100, N'tomford_oud_wood.jpg', CAST(N'2021-03-22' AS Date), 3, 3)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (8, N'Black Orchid Perfume', 155, 50, 50, N'tomford_black_orchid_perfume.jpg', CAST(N'2023-07-09' AS Date), 3, 3)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (9, N'Néroli Outrenoir', 355, 20, 100, N'guerlain_neroli_outrenoir.jpg', CAST(N'2022-04-24' AS Date), 4, 3)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (10, N'Shalimar', 372, 50, 30, N'guerlain_shalimar.jpg', CAST(N'2021-03-30' AS Date), 4, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (11, N'J''adore', 160, 60, 100, N'dior_jadore.jpg', CAST(N'2022-05-16' AS Date), 5, 1)
INSERT [dbo].[Perfumes] ([ID], [name], [price], [quantity], [size], [image], [releaseDate], [bid], [cid]) VALUES (12, N'Miss Dior', 160, 60, 100, N'dior_miss_dior.jpg', CAST(N'2023-09-19' AS Date), 5, 1)
SET IDENTITY_INSERT [dbo].[Perfumes] OFF
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD FOREIGN KEY([cusid])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Perfumes] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([oid])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Perfumes] ([ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([cusid])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Perfumes]  WITH CHECK ADD FOREIGN KEY([bid])
REFERENCES [dbo].[Brands] ([ID])
GO
ALTER TABLE [dbo].[Perfumes]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Categories] ([ID])
GO
