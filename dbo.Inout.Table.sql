USE [fixture]
GO
/****** Object:  Table [dbo].[Inout]    Script Date: 2020/1/30 12:09:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inout](
	[IinOutID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ViaUserName] [varchar](100) NULL,
	[State] [varchar](10) NOT NULL,
	[LineID] [varchar](20) NULL,
	[LineName] [varchar](100) NULL,
	[Code] [varchar](20) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Location] [varchar](100) NULL,
	[Model] [varchar](100) NULL,
	[PartNo] [varchar](100) NULL,
	[FamilyID] [varchar](20) NULL,
	[FamilyName] [varchar](100) NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [varchar](20) NOT NULL,
	[AddUserName] [varchar](100) NOT NULL,
	[ReviewDate] [datetime] NULL,
	[ReviewUserID] [varchar](20) NULL,
	[ReviewUserName] [varchar](100) NULL,
 CONSTRAINT [PK_Inout] PRIMARY KEY CLUSTERED 
(
	[IinOutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
