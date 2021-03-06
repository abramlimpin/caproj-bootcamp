USE [bootcamp]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 5/30/2017 2:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[catID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 5/30/2017 2:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productNo] [int] IDENTITY(1,1) NOT NULL,
	[catID] [int] NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](300) NULL,
	[price] [decimal](10, 2) NULL,
	[image] [varchar](300) NULL,
	[available] [int] NULL,
	[critical] [int] NULL,
	[maximum] [int] NULL,
	[status] [varchar](20) NULL,
	[dateAdded] [datetime] NULL,
	[dateModified] [datetime] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[productNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[types]    Script Date: 5/30/2017 2:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[userType] [varchar](20) NULL,
 CONSTRAINT [PK_types] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 5/30/2017 2:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[typeID] [int] NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](50) NULL,
	[mobile] [char](11) NULL,
	[status] [varchar](20) NULL,
	[dateAdded] [datetime] NULL,
	[dateModified] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([catID], [name]) VALUES (1, N'Appetizer')
INSERT [dbo].[categories] ([catID], [name]) VALUES (2, N'Main Course')
INSERT [dbo].[categories] ([catID], [name]) VALUES (3, N'Soups')
INSERT [dbo].[categories] ([catID], [name]) VALUES (4, N'Entrees')
INSERT [dbo].[categories] ([catID], [name]) VALUES (5, N'Dessert')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[types] ON 

INSERT [dbo].[types] ([typeID], [userType]) VALUES (1, N'Administrator')
INSERT [dbo].[types] ([typeID], [userType]) VALUES (2, N'Sales Personnel')
INSERT [dbo].[types] ([typeID], [userType]) VALUES (3, N'Inventory Clerk')
INSERT [dbo].[types] ([typeID], [userType]) VALUES (4, N'Delivery Personnel')
INSERT [dbo].[types] ([typeID], [userType]) VALUES (5, N'Customer')
SET IDENTITY_INSERT [dbo].[types] OFF
USE [master]
GO
ALTER DATABASE [bootcamp] SET  READ_WRITE 
GO
