USE [CustomerDB]
GO
/****** Object:  Table [dbo].[CustomerTB]    Script Date: 09/24/2017 17:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerTB](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Phoneno] [varchar](10) NULL,
 CONSTRAINT [PK_CustomerTB] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerTB] ON
INSERT [dbo].[CustomerTB] ([CustomerID], [Name], [Address], [Country], [City], [Phoneno]) VALUES (1, N'Saineshwar', N'Mumbai', N'India', N'Mumbai', N'12345678')
INSERT [dbo].[CustomerTB] ([CustomerID], [Name], [Address], [Country], [City], [Phoneno]) VALUES (2, N'Saineshwar Bageri', N'Mumbai', N'India', N'Mumbai', N'12345678')
SET IDENTITY_INSERT [dbo].[CustomerTB] OFF
