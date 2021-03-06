USE [kingdom_knn]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] NOT NULL,
	[c_id] [int] NULL,
	[prod_id] [int] NULL,
	[prod_qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] NOT NULL,
	[cat_name] [varchar](30) NULL,
	[cat_desc] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[c_id] [int] NOT NULL,
	[email] [varchar](40) NOT NULL,
	[pass] [varchar](40) NOT NULL,
	[fname] [varchar](20) NULL,
	[mname] [varchar](20) NULL,
	[lname] [varchar](20) NULL,
	[mobile_num] [bigint] NULL,
	[address1] [varchar](30) NULL,
	[address2] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[state_address] [varchar](30) NULL,
	[country] [varchar](30) NULL,
	[credit_card_num] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_id] [int] NOT NULL,
	[payment_type] [varchar](30) NULL,
	[order_date] [date] NULL,
	[total_amount] [float] NULL,
	[order_status] [varchar](30) NULL,
	[discount] [float] NULL,
	[ship_date] [date] NULL,
	[ship_address] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordered_prod]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordered_prod](
	[order_id] [int] NOT NULL,
	[c_id] [int] NOT NULL,
	[prod_id] [int] NOT NULL,
	[prod_qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[c_id] ASC,
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[prod_id] [int] NOT NULL,
	[pname] [varchar](40) NULL,
	[qty_per_unit] [int] NULL,
	[unit_price] [float] NULL,
	[unit_weight] [float] NULL,
	[cat_id] [int] NULL,
	[sup_id] [int] NULL,
	[size] [float] NULL,
	[colour] [varchar](30) NULL,
	[prod_desc] [varchar](400) NULL,
	[picture] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 04-12-2020 12:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[sup_id] [int] NOT NULL,
	[contact_num] [bigint] NULL,
	[company_name] [varchar](40) NULL,
	[contact_fname] [varchar](30) NULL,
	[contact_lname] [varchar](30) NULL,
	[contact_email] [varchar](40) NULL,
	[address1] [varchar](30) NULL,
	[address2] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[state_address] [varchar](30) NULL,
	[country] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[sup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cart] ([cart_id], [c_id], [prod_id], [prod_qty]) VALUES (21779, 0, 3, 1)
INSERT [dbo].[cart] ([cart_id], [c_id], [prod_id], [prod_qty]) VALUES (37124, 0, 2, 1)
GO
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (1, N'Mobiles', N'Smartphones!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (2, N'Television', N'TV!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (3, N'Laptop', N'Portable PC!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (4, N'Camera', N'Snap!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (5, N'Footwear', N'Walk the walk!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (6, N'Luggage and Handbags', N'Carry one carry all!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (7, N'Books', N'Read on!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (8, N'Musical Instruments', N'Jazz up your music!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (9, N'Jewellery', N'Adorn yourself!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (10, N'Home and Kitchen', N'Style your home!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (11, N'Toys and Games', N'Play with it!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (12, N'Beauty and Grooming', N'Keep it beautiful!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (13, N'Sports', N'Stay active!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (14, N'Pet Supplies', N'Keep them happy too!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (15, N'Baby Care', N'For your little ones!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (16, N'Health Care', N'Stay healthy!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (17, N'Food Products', N'Dont forget to eat!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (18, N'Clothing', N'Look cool!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (19, N'Eyewear', N'Let them stare!')
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_desc]) VALUES (20, N'Office accessories', N'For your workspace!')
GO
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (0, N'knn@knn.com', N'knn', N'Pearl', N'A', N'Harbour', 6127970211, N'15, Sector 20, Matheran Road', N'', N'Mumbai', N'Maharashtra', N'India', 4716704135886368)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (1023, N'Vivekseth87@gmail.com', N'56572310                      ', N'Vivek', N'Hari', N'Seth', 9875641238, N'8A jeevan Heights', N'Kanjurmarg', N'Mumbai', N'Maharashtra', N'India', 15647487632148)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (1151, N'example9@gmail.com', N'ex9                           ', N'Balahadra', N'J', N'Prabhu', 7492014951, N'F 24/162 2nd Floor Sector 7', N'', N'Jaipur', N'Rajasthan', N'India', 2720990025971158)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (1666, N'example7@gmail.com', N'ex7                           ', N'Srilekha', N'H', N'Varghese', 6319008115, N'11, Neelkanth Apt, Datta Nagar', N'', N'Surat', N'Gujarat', N'India', 4917003254855370)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (1867, N'example5@gmail.com', N'ex5                           ', N'Minti', N'F', N'Ramnarine', 6127979636, N'9-Imbrahim Tower', N'', N'Chennai', N'Tamil Nadu', N'India', 6011493127954660)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (2537, N'royjoshi20@gmail.com', N'638275                        ', N'Roy', N'Dan', N'Joshi', 7902822682, N'15A,Jammy Gandhi Nagar', N'Bhandup East', N'Mumbai', N'Maharashtra', N'India', 1639202638229)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (3142, N'marrysmith12@gmail.com', N'MS12                          ', N'Marry', N'Elizabeth', N'smith', 9874563701, N'5A,First Street', N'Pasedena Subway ', N'Pasedena', N'Pasedena', N'California', 12345234897892)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (3707, N'example2@gmail.com', N'ex2                           ', N'Marty', N'C', N'Walters', 7317789129, N'309, Nagappa Street, Halli', N'', N'Bangalore', N'Karnataka', N'India', 4716378597764466)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (3806, N'example8@gmail.com', N'ex8                           ', N'Varen', N'I', N'Gantare', 8079985503, N'64, RK Chambers, Poona Road', N'', N'Pune', N'Maharashtra', N'India', 4844973826966566)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (4480, N'example4@gmail.com', N'ex4                           ', N'Bhishma', N'E', N'Vala', 8079027343, N'L-461, Odhav', N'', N'Ahmedabad', N'Gujarat', N'India', 6011798646089782)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (5274, N'riadoshi67@gmail.com', N'Ria56                         ', N'Ria', N'Sam', N'Doshi', 8073292580, N'7B Flora Blg,Rajiv Nagar', N'Vikroli East', N'Mumbai', N'Maharashtra', N'India', 14379463929264)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (5623, N'lizbrown23@gmail.com', N'liz23@                        ', N'Liz', N'Brown', N'smith', 6135550195, N'1A, Second Street', N'KL Mart', N'Toronto', N'Ontario', N'Canada', 19807654327896)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (5689, N'joycebhatt56@gmail.com', N'9678974                       ', N'Joyce', N'Nel', N'Bhatt', 8975463217, N'8B,Bounty Heights', N'Ghatkopar West', N'Mumbai', N'Maharashtra', N'India', 15987642531878)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (6663, N'example6@gmail.com', N'ex6                           ', N'Malajit', N'G', N'Bal', 6127927145, N'22 ,kalibari Lane, Dhakuria', N'', N'Kolkata', N'West Bengal', N'India', 4913030631019564)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (6745, N'jaysinghania45@gmail.com', N'jayS45                        ', N'Jay', N'R', N'Singhania', 9873627901, N'607,Shiv Heights', N'DJ Nagar,mulund west', N'Mumbai', N'Maharashtra', N'India', 12673468002464)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (7829, N'brijeshbhatt56@gmail.com', N'56572310                      ', N'Brijesh', N'Neel', N'Bhatt', 8457517648, N'8A,KGH Heights', N'Powai', N'Mumbai', N'Maharashtra', N'India', 156478931878)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (7839, N'NeelamPatel56@gmail.com', N'123456                        ', N'Neelam', N'Jay', N'Patel', 8457587544, N'9A,KC Heights', N'Powai', N'Mumbai', N'Maharashtra', N'India', 15465723872548)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (8902, N'devgandhi78@gmail.com', N'DevG67@                       ', N'Dev', N'Ramesh', N'Gandhi', 8026299262, N'2A,Glory Heights', N'Vidyavihar west', N'Mumbai', N'Maharashtra', N'India', 16398290591620)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (9066, N'example3@gmail.com', N'ex3                           ', N'Alberto', N'D', N'Miles', 6127985389, N'41, Osmangunj', N'', N'Hyderabad', N'Telangana', N'India', 6011669495393197)
INSERT [dbo].[customer] ([c_id], [email], [pass], [fname], [mname], [lname], [mobile_num], [address1], [address2], [city], [state_address], [country], [credit_card_num]) VALUES (9351, N'example1@gmail.com', N'ex1                           ', N'Regina', N'B', N'Gonzales', 7286826484, N'9, Charkop Chs, Charkop', N'', N'Delhi', N'Delhi', N'India', 4716553732350876)
GO
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (144, N'CASH', CAST(N'2020-05-29' AS Date), 900, N'PROCESSING', 0, NULL, NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (151, N'CARD', CAST(N'2020-05-13' AS Date), 45000, N'DELIVERED', 0, CAST(N'2020-05-14' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (250, N'CARD', CAST(N'2020-06-30' AS Date), 350, N'DELIVERED', 0, CAST(N'2020-07-01' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (251, N'CASH', CAST(N'2019-11-29' AS Date), 175, N'DELIVERED', 1, CAST(N'2019-11-30' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (252, N'CASH', CAST(N'2020-05-08' AS Date), 37000, N'PROCESSING', 0, NULL, NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (406, N'CASH', CAST(N'2020-02-26' AS Date), 1000, N'PROCESSING', 0, NULL, NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (416, N'CASH', CAST(N'2020-02-03' AS Date), 40000, N'DELIVERED', 0, CAST(N'2020-02-04' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (478, N'CASH', CAST(N'2020-08-29' AS Date), 1300, N'DELIVERED', 100, CAST(N'2020-09-01' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (518, N'CARD', CAST(N'2019-09-21' AS Date), 42000, N'DELIVERED', 0, CAST(N'2019-09-23' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (532, N'CARD', CAST(N'2019-12-29' AS Date), 1100, N'DELIVERED', 0, CAST(N'2019-12-31' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (637, N'CARD', CAST(N'2020-05-14' AS Date), 250, N'DELIVERED', 0, CAST(N'2020-05-15' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (693, N'CARD', CAST(N'2020-03-15' AS Date), 2000, N'DELIVERED', 0, CAST(N'2020-03-16' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (706, N'CASH', CAST(N'2020-03-23' AS Date), 7000, N'DELIVERED', 0, CAST(N'2020-03-24' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (778, N'CARD', CAST(N'2020-04-13' AS Date), 1600, N'DELIVERED', 0, CAST(N'2020-04-14' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (784, N'CASH', CAST(N'2020-02-29' AS Date), 100000, N'PROCESSING', 1000, NULL, NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (816, N'CASH', CAST(N'2020-10-31' AS Date), 750, N'DELIVERED', 0, CAST(N'2020-11-01' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (851, N'CARD', CAST(N'2020-10-10' AS Date), 500, N'DELIVERED', 0, CAST(N'2020-10-11' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (858, N'CASH', CAST(N'2020-11-03' AS Date), 75, N'DELIVERED', 0, CAST(N'2020-11-04' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (943, N'CARD', CAST(N'2020-08-04' AS Date), 2500, N'DELIVERED', 0, CAST(N'2020-08-05' AS Date), NULL)
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (3883, N'CARD', CAST(N'2020-11-20' AS Date), 47895.83, N'PROCESSING', 104.17, CAST(N'2020-11-21' AS Date), N'Name : Pearl A Harbour

Address 1: 15, Sector 20, Matheran Road

Address 2: 

City: Mumbai

State: Maharashtra

Country: India')
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (4433, N'CASH', CAST(N'2020-11-21' AS Date), 29924.61, N'PROCESSING', 75.39, CAST(N'2020-11-22' AS Date), N'Name : Pearl A Harbour

Address 1: 15, Sector 20, Matheran Road

Address 2: 

City: Mumbai

State: Maharashtra

Country: India')
INSERT [dbo].[order_details] ([order_id], [payment_type], [order_date], [total_amount], [order_status], [discount], [ship_date], [ship_address]) VALUES (8373, N'CASH', CAST(N'2020-12-02' AS Date), 70560, N'PROCESSING', 1440, CAST(N'2020-12-03' AS Date), N'Name : Pearl A Harbour

Address 1: 15, Sector 20, Matheran Road

Address 2: 

City: Mumbai

State: Maharashtra

Country: India')
GO
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (144, 5623, 12, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (151, 3707, 3, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (250, 1023, 19, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (251, 7839, 20, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (252, 9066, 6, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (406, 7829, 18, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (416, 1666, 4, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (478, 1151, 10, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (518, 3806, 5, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (532, 5689, 17, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (637, 8902, 15, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (693, 3142, 11, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (706, 1867, 8, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (778, 6663, 9, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (784, 9351, 2, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (816, 2537, 16, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (851, 6745, 13, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (858, 5274, 14, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (943, 4480, 7, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (3883, 0, 1, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (3883, 0, 8, 2)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (3883, 0, 11, 2)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (4433, 0, 1, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (8373, 0, 1, 1)
INSERT [dbo].[ordered_prod] ([order_id], [c_id], [prod_id], [prod_qty]) VALUES (8373, 0, 5, 1)
GO
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (1, N'Xiaomi', 1, 30000, 0.14, 1, 1, 5.6, N'Black', N'It is powered by Qualcomm Snapdragon 865 and has 8GB of RAM.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Xiaomi.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (2, N'Apple', 1, 100000, 0.15, 1, 2, 5.1, N'White', N'It comes with a 6.10-inch display with resolution 1170 X 2532 pixels and 460 PPI', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Iphone.png')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (3, N'Panasonic', 1, 45000, 12, 2, 3, 36, N'Grey', N'It offers a picture quality with peppy sound.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Panasonic TV.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (4, N'LG', 1, 40000, 13, 2, 4, 34, N'Black', N'It delivers incredibly vibrant colours, a modern design and precise image detail.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\LG TV.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (5, N'Lenovo', 1, 42000, 2, 3, 5, 13, N'Black', N'It has 14.00-inch display with resolution of 1920x1080 pixels.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Lenovo Laptop.jpeg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (6, N'Dell', 1, 37000, 2.5, 3, 6, 14, N'Red', N'It has 15.60-inch display with resolution of 1920x1080 pixels.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Dell Laptop.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (7, N'Nikon', 1, 2500, 0.2, 4, 7, 8, N'Black', N'It is F-series of 35 mm film SLR cameras', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Nikon Camera.png')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (8, N'DSLR', 1, 7000, 0.23, 4, 8, 7.5, N'Black', N'It has mechanisms of a single-lens reflex camera with a digital imaging sensor.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Canon camera.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (9, N'Nike', 1, 1500, 0.21, 5, 9, 9, N'Green', N'Feels Comfortable', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Nike Shoe.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (10, N'Adidas', 1, 1300, 0.2, 5, 10, 8, N'Orange', N'Really fits good', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Addidas shoe.png')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (11, N'Guitar', 1, 2000, 3.6, 8, 11, 8, N'Brown', N'It is fretted musical instrument that usually has six strings.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Guitar.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (12, N'Flute', 1, 900, 0.3, 8, 12, 4, N'Brown', N'Its an aerophone or reedless wind instrument', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Flute.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (13, N'Cricket Bat', 2, 500, 1.2, 13, 13, 6, N'Brown', N'It has overall depth no more than 2.64 in (67 mm) and edge no more than 1.56.', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Cricket Bat.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (14, N'Cricket Ball', 5, 75, 0.2, 13, 14, 2, N'Red', N'Season ball', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Cricket Ball.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (15, N'Shirt', 3, 450, 0.35, 18, 15, 41, N'Blue', N'Nice T-Shirt', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Shirt.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (16, N'Jeans', 2, 750, 1.7, 18, 16, 38, N'Navy Blue', N'Strechable Jeans', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Jeans.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (17, N'Samsonite', 1, 1100, 1.1, 6, 17, 76, N'Grey', N'Can carry heavy stuff', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Samsonite Luggage.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (18, N'TravelPro', 1, 1000, 0.9, 6, 18, 67, N'Green', N'For carrying light stuff', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Travel Pro Luggage.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (19, N'Harry Potter', 1, 350, 0.31, 7, 19, 400, N'null', N'It has 9.1 review rating', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Harry Potter book.jpg')
INSERT [dbo].[product] ([prod_id], [pname], [qty_per_unit], [unit_price], [unit_weight], [cat_id], [sup_id], [size], [colour], [prod_desc], [picture]) VALUES (20, N'Wimpy Kid', 1, 175, 0.29, 7, 20, 225, N'null', N'It has 9.5 review rating', N'C:\\Users\\vkris\\OneDrive\\Desktop\\Java project\\products\\Wimpy Kid book.jpg')
GO
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (1, 4426481591, N'Ziboss', N'Krista ', N'Neal', N'podmaster@outlook.com', N'1661  Tanglewood Road', N'', N'Shuqualak', N'Mississippi', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (2, 4425356511, N'Botweet', N'Sheri ', N'Meyer', N'roamer@optonline.net', N'4823  Fannie Street', N'', N'Clute', N'Texas', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (3, 2225802396, N'Camwhiz', N'Mary ', N'Stewart', N'mirod@sbcglobal.net', N'1703  Zappia Drive', N'', N'Lexington', N'Kentucky', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (4, 2228731114, N'Unitedglee', N'Cheryl ', N'Hart', N'wojciech@yahoo.com', N'879  Cook Hill Road', N'', N'LINDSTROM', N'Minnesota', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (5, 4023192027, N'Olmana', N'Orville ', N'Gilbert', N'stefano@me.com', N'2830  Austin Avenue', N'', N'Omega', N'Georgia', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (6, 22144117, N'Hybridopen', N'Wendy ', N'French', N'bryanw@me.com', N'4445  School House Road', N'', N'MURDOCK', N'Nebraska', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (7, 1123958701, N'Growroll', N'Glenn ', N'Chavez', N'bdthomas@hotmail.com', N'805  Loving Acres Road', N'', N'Euless', N'Texas', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (8, 2226151243, N'Germanwell', N'Juanita ', N'Copeland', N'papathan@me.com', N'469  Brookside Drive', N'', N'LA LUZ', N'New Mexico', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (9, 2225223449, N'Dlyule', N'Arnold ', N'Thomas', N'bjoern@att.net', N'3822  Stanton Hollow Road', N'', N'Boston', N'Massachusetts', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (10, 2226439211, N'Secondkind', N'Wilbert ', N'Johnson', N'sburke@outlook.com', N'3715  Rardin Drive', N'', N'San Francisco', N'California', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (11, 7955416676, N'Lionrich', N'Leland ', N'Yates', N'wsnyder@verizon.net', N'3334  Poe Lane', N'', N'Kansas City', N'Kansas', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (12, 24284332, N'Expertdote', N'Julia ', N'Santos', N'pjacklam@me.com', N'1175  Jerry Toth Drive', N'', N'Holy Cross', N'Alaska', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (13, 41726768, N'Moveooze', N'Marianne ', N'Kelley', N'gavollink@verizon.net', N'898  Paul Wayne Haggerty Road', N'', N'Metairie', N'Louisiana', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (14, 1123969065, N'Blogflip', N'Holly ', N'Armstrong', N'dvdotnet@aol.com', N'4781  Rogers Street', N'', N'Cincinnati', N'Ohio', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (15, 2025461585, N'Roseding', N'Agnes ', N'Byrd', N'atmarks@live.com', N'1197  Fincham Road', N'', N'Lake Isabella', N'California', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (16, 2226174557, N'Pigmild', N'Raquel ', N'Carpenter', N'fviegas@outlook.com', N'3466  Goldie Lane', N'', N'DIVIDE', N'Montana', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (17, 2223887336, N'Battlezany', N'Melvin ', N'Smith', N'daveed@live.com', N'4481  Sunrise Road', N'', N'Las Vegas', N'Nevada', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (18, 225633445, N'Idahomost', N'Blanche ', N'Estrada', N'scottlee@mac.com', N'4260  Leroy Lane', N'', N'Sioux Falls', N'South Dakota', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (19, 25616604, N'Madisonbold', N'Gary ', N'Neal', N'skythe@msn.com', N'2770  School Street', N'', N'New Haven', N'Connecticut', N'USA')
INSERT [dbo].[supplier] ([sup_id], [contact_num], [company_name], [contact_fname], [contact_lname], [contact_email], [address1], [address2], [city], [state_address], [country]) VALUES (20, 22292995, N'Mastersway', N'Jeff ', N'Black', N'delpino@me.com', N'4977  Bedford Street', N'', N'Scarsdale', N'Connecticut', N'USA')
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[customer] ([c_id])
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([prod_id])
REFERENCES [dbo].[product] ([prod_id])
GO
ALTER TABLE [dbo].[ordered_prod]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order_details] ([order_id])
GO
ALTER TABLE [dbo].[ordered_prod]  WITH CHECK ADD FOREIGN KEY([prod_id])
REFERENCES [dbo].[product] ([prod_id])
GO
ALTER TABLE [dbo].[ordered_prod]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[customer] ([c_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[category] ([cat_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([sup_id])
REFERENCES [dbo].[supplier] ([sup_id])
GO
