USE [PenaltyCalculation]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10.05.2020 17:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](30) COLLATE Turkish_CI_AS NULL,
	[DailyPenaltyPrice] [money] NULL,
	[Currency] [nvarchar](5) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Countrys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 10.05.2020 17:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[HolidayDate] [datetime] NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.05.2020 17:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weekend]    Script Date: 10.05.2020 17:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weekend](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[WeekendDay] [nvarchar](10) COLLATE Turkish_CI_AS NULL,
 CONSTRAINT [PK_Weekend] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([Id], [CountryName], [DailyPenaltyPrice], [Currency], [IsActive]) VALUES (1, N'Turkey', 5.5000, N'TL', 1)
GO
INSERT [dbo].[Country] ([Id], [CountryName], [DailyPenaltyPrice], [Currency], [IsActive]) VALUES (2, N'Dubai', 6.5000, N'AED', 1)
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Holiday] ON 
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (1, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (2, 1, CAST(N'2020-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (3, 1, CAST(N'2020-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (4, 1, CAST(N'2020-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (6, 1, CAST(N'2020-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (7, 1, CAST(N'2020-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (8, 1, CAST(N'2020-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (9, 1, CAST(N'2020-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (10, 1, CAST(N'2020-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (11, 1, CAST(N'2020-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (12, 1, CAST(N'2020-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (13, 1, CAST(N'2020-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (14, 1, CAST(N'2020-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (15, 1, CAST(N'2020-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (16, 2, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (17, 2, CAST(N'2020-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (18, 2, CAST(N'2020-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (19, 2, CAST(N'2020-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (20, 2, CAST(N'2020-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (21, 2, CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (22, 2, CAST(N'2020-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (23, 2, CAST(N'2020-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (24, 2, CAST(N'2020-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Holiday] ([Id], [CountryId], [HolidayDate]) VALUES (25, 2, CAST(N'2020-05-26T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Holiday] OFF
GO
SET IDENTITY_INSERT [dbo].[Weekend] ON 
GO
INSERT [dbo].[Weekend] ([Id], [CountryId], [WeekendDay]) VALUES (1, 1, N'Saturday')
GO
INSERT [dbo].[Weekend] ([Id], [CountryId], [WeekendDay]) VALUES (2, 1, N'Sunday')
GO
INSERT [dbo].[Weekend] ([Id], [CountryId], [WeekendDay]) VALUES (3, 2, N'Friday')
GO
INSERT [dbo].[Weekend] ([Id], [CountryId], [WeekendDay]) VALUES (4, 2, N'Saturday')
GO
SET IDENTITY_INSERT [dbo].[Weekend] OFF
GO
