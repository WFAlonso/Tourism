USE [TourismDB]
GO
/****** Object:  User [test]    Script Date: 8/08/2024 2:22:05 a. m. ******/
CREATE USER [test] FOR LOGIN [test] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 8/08/2024 2:22:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[IdBooking] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdHotel] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[TotalPerson] [int] NOT NULL,
	[DateInicial] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[TypeCustomer] [int] NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[IdBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdCustomer] [int] NOT NULL,
	[TypeDocument] [int] NOT NULL,
	[NumDocument] [numeric](12, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[Birthday] [date] NULL,
	[Gender] [char](10) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailBooking]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailBooking](
	[IdDetail] [int] NOT NULL,
	[IdBooking] [int] NOT NULL,
	[IdHotelRoom] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[TypeCustomer] [int] NOT NULL,
 CONSTRAINT [PK_DetailBooking] PRIMARY KEY CLUSTERED 
(
	[IdDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Commission] [int] NOT NULL,
	[Favorite] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Hoteles] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelRoom]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelRoom](
	[IdHotelRoom] [int] IDENTITY(1,1) NOT NULL,
	[IdHotel] [int] NOT NULL,
	[IdRoom] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_HotelRoom] PRIMARY KEY CLUSTERED 
(
	[IdHotelRoom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[IdRoom] [int] NOT NULL,
	[TypeRoom] [varchar](50) NOT NULL,
	[MinPerson] [int] NOT NULL,
	[MaxPerson] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[IdRoom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeCustomer]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeCustomer](
	[TypeCustomer] [int] IDENTITY(1,1) NOT NULL,
	[NameCustomer] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeCustomer] PRIMARY KEY CLUSTERED 
(
	[TypeCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeDocument]    Script Date: 8/08/2024 2:22:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeDocument](
	[TypeDocument] [int] IDENTITY(1,1) NOT NULL,
	[NameDocument] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeDocument] PRIMARY KEY CLUSTERED 
(
	[TypeDocument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Booking] ([IdBooking], [IdCustomer], [IdHotel], [Amount], [TotalPerson], [DateInicial], [DateEnd], [Status], [TypeCustomer]) VALUES (12001, 12344, 0, CAST(56777655.00 AS Numeric(18, 2)), 3, CAST(N'2024-06-06' AS Date), CAST(N'2024-08-06' AS Date), N'true', 2)
INSERT [dbo].[Booking] ([IdBooking], [IdCustomer], [IdHotel], [Amount], [TotalPerson], [DateInicial], [DateEnd], [Status], [TypeCustomer]) VALUES (12002, 1221, 0, CAST(234234.00 AS Numeric(18, 2)), 1, CAST(N'2024-06-21' AS Date), CAST(N'2024-07-06' AS Date), N'true', 2)
INSERT [dbo].[Booking] ([IdBooking], [IdCustomer], [IdHotel], [Amount], [TotalPerson], [DateInicial], [DateEnd], [Status], [TypeCustomer]) VALUES (12003, 23, 0, CAST(400000.00 AS Numeric(18, 2)), 2, CAST(N'2024-09-13' AS Date), CAST(N'2024-09-15' AS Date), N'true', 2)
GO
INSERT [dbo].[Customer] ([IdCustomer], [TypeDocument], [NumDocument], [Name], [Lastname], [Birthday], [Gender], [Email], [Phone]) VALUES (23, 1, CAST(123 AS Numeric(12, 0)), N'pepe', N'perez', CAST(N'1980-08-08' AS Date), N'1         ', N'pepe@gmail.com', N'3126789098')
INSERT [dbo].[Customer] ([IdCustomer], [TypeDocument], [NumDocument], [Name], [Lastname], [Birthday], [Gender], [Email], [Phone]) VALUES (24, 1, CAST(3456 AS Numeric(12, 0)), N'juanito', N'perez', CAST(N'2025-09-10' AS Date), N'1         ', N'pepe@gmail.com', N'3126789098')
INSERT [dbo].[Customer] ([IdCustomer], [TypeDocument], [NumDocument], [Name], [Lastname], [Birthday], [Gender], [Email], [Phone]) VALUES (25, 1, CAST(456 AS Numeric(12, 0)), N'juana', N'perez', CAST(N'2011-05-08' AS Date), N'2         ', N'juana@gmail.com', N'3126789013')
INSERT [dbo].[Customer] ([IdCustomer], [TypeDocument], [NumDocument], [Name], [Lastname], [Birthday], [Gender], [Email], [Phone]) VALUES (1221, 2, CAST(1211 AS Numeric(12, 0)), N'hijo', N'dos', CAST(N'2000-05-12' AS Date), N'1         ', NULL, N'221122111')
INSERT [dbo].[Customer] ([IdCustomer], [TypeDocument], [NumDocument], [Name], [Lastname], [Birthday], [Gender], [Email], [Phone]) VALUES (12344, 1, CAST(11111 AS Numeric(12, 0)), N'uno', N'dos', CAST(N'1994-12-12' AS Date), NULL, N'uno@correo.com', N'221122111')
GO
INSERT [dbo].[DetailBooking] ([IdDetail], [IdBooking], [IdHotelRoom], [IdCustomer], [TypeCustomer]) VALUES (1, 12001, 1, 12344, 1)
INSERT [dbo].[DetailBooking] ([IdDetail], [IdBooking], [IdHotelRoom], [IdCustomer], [TypeCustomer]) VALUES (2, 12002, 2, 1221, 1)
INSERT [dbo].[DetailBooking] ([IdDetail], [IdBooking], [IdHotelRoom], [IdCustomer], [TypeCustomer]) VALUES (3, 12003, 1, 23, 1)
INSERT [dbo].[DetailBooking] ([IdDetail], [IdBooking], [IdHotelRoom], [IdCustomer], [TypeCustomer]) VALUES (4, 12003, 1, 24, 1)
INSERT [dbo].[DetailBooking] ([IdDetail], [IdBooking], [IdHotelRoom], [IdCustomer], [TypeCustomer]) VALUES (5, 12003, 2, 25, 1)
GO
INSERT [dbo].[Hotel] ([IdHotel], [Name], [City], [Commission], [Favorite], [Active]) VALUES (0, N'Hotel1', N'city1', 0, 0, 1)
INSERT [dbo].[Hotel] ([IdHotel], [Name], [City], [Commission], [Favorite], [Active]) VALUES (2, N'hotel2', N'ciudad2', 20, 1, 1)
INSERT [dbo].[Hotel] ([IdHotel], [Name], [City], [Commission], [Favorite], [Active]) VALUES (9901, N'Hotel99', N'City99', 50, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[HotelRoom] ON 

INSERT [dbo].[HotelRoom] ([IdHotelRoom], [IdHotel], [IdRoom], [Amount], [Active]) VALUES (1, 0, 1, CAST(100.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[HotelRoom] ([IdHotelRoom], [IdHotel], [IdRoom], [Amount], [Active]) VALUES (2, 0, 2, CAST(200.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[HotelRoom] ([IdHotelRoom], [IdHotel], [IdRoom], [Amount], [Active]) VALUES (3, 0, 3, CAST(75.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[HotelRoom] ([IdHotelRoom], [IdHotel], [IdRoom], [Amount], [Active]) VALUES (6, 0, 4, CAST(65.99 AS Numeric(18, 2)), 1)
INSERT [dbo].[HotelRoom] ([IdHotelRoom], [IdHotel], [IdRoom], [Amount], [Active]) VALUES (7, 0, 101, CAST(0.00 AS Numeric(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[HotelRoom] OFF
GO
INSERT [dbo].[Room] ([IdRoom], [TypeRoom], [MinPerson], [MaxPerson], [Active]) VALUES (1, N'd', 1, 2, 1)
INSERT [dbo].[Room] ([IdRoom], [TypeRoom], [MinPerson], [MaxPerson], [Active]) VALUES (2, N'd', 2, 2, 1)
INSERT [dbo].[Room] ([IdRoom], [TypeRoom], [MinPerson], [MaxPerson], [Active]) VALUES (3, N'c', 1, 1, 1)
INSERT [dbo].[Room] ([IdRoom], [TypeRoom], [MinPerson], [MaxPerson], [Active]) VALUES (4, N'k', 3, 5, 0)
INSERT [dbo].[Room] ([IdRoom], [TypeRoom], [MinPerson], [MaxPerson], [Active]) VALUES (101, N'doble', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[TypeCustomer] ON 

INSERT [dbo].[TypeCustomer] ([TypeCustomer], [NameCustomer]) VALUES (1, N'Huespedes')
INSERT [dbo].[TypeCustomer] ([TypeCustomer], [NameCustomer]) VALUES (2, N'Principal Reserva')
SET IDENTITY_INSERT [dbo].[TypeCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeDocument] ON 

INSERT [dbo].[TypeDocument] ([TypeDocument], [NameDocument]) VALUES (1, N'cc')
INSERT [dbo].[TypeDocument] ([TypeDocument], [NameDocument]) VALUES (2, N'nit')
SET IDENTITY_INSERT [dbo].[TypeDocument] OFF
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hoteles_Favorita]  DEFAULT ((0)) FOR [Favorite]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([IdCustomer])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Hotel] FOREIGN KEY([IdHotel])
REFERENCES [dbo].[Hotel] ([IdHotel])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Hotel]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_TypeCustomer] FOREIGN KEY([TypeCustomer])
REFERENCES [dbo].[TypeCustomer] ([TypeCustomer])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_TypeCustomer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_TypeDocument] FOREIGN KEY([TypeDocument])
REFERENCES [dbo].[TypeDocument] ([TypeDocument])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_TypeDocument]
GO
ALTER TABLE [dbo].[DetailBooking]  WITH CHECK ADD  CONSTRAINT [FK_DetailBooking_Booking] FOREIGN KEY([IdBooking])
REFERENCES [dbo].[Booking] ([IdBooking])
GO
ALTER TABLE [dbo].[DetailBooking] CHECK CONSTRAINT [FK_DetailBooking_Booking]
GO
ALTER TABLE [dbo].[DetailBooking]  WITH CHECK ADD  CONSTRAINT [FK_DetailBooking_Customer] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([IdCustomer])
GO
ALTER TABLE [dbo].[DetailBooking] CHECK CONSTRAINT [FK_DetailBooking_Customer]
GO
ALTER TABLE [dbo].[DetailBooking]  WITH CHECK ADD  CONSTRAINT [FK_DetailBooking_HotelRoom] FOREIGN KEY([IdHotelRoom])
REFERENCES [dbo].[HotelRoom] ([IdHotelRoom])
GO
ALTER TABLE [dbo].[DetailBooking] CHECK CONSTRAINT [FK_DetailBooking_HotelRoom]
GO
ALTER TABLE [dbo].[DetailBooking]  WITH CHECK ADD  CONSTRAINT [FK_DetailBooking_TypeCustomer] FOREIGN KEY([TypeCustomer])
REFERENCES [dbo].[TypeCustomer] ([TypeCustomer])
GO
ALTER TABLE [dbo].[DetailBooking] CHECK CONSTRAINT [FK_DetailBooking_TypeCustomer]
GO
ALTER TABLE [dbo].[HotelRoom]  WITH CHECK ADD  CONSTRAINT [FK_HotelRoom_HotelRoom] FOREIGN KEY([IdRoom])
REFERENCES [dbo].[Room] ([IdRoom])
GO
ALTER TABLE [dbo].[HotelRoom] CHECK CONSTRAINT [FK_HotelRoom_HotelRoom]
GO
