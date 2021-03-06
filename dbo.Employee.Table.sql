USE [fixture]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2020/1/30 12:09:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [varchar](20) NOT NULL,
	[EmployeeName] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[UserLevel] [varchar](10) NOT NULL,
	[WorkcellID] [varchar](20) NOT NULL,
	[Job] [varchar](20) NULL,
 CONSTRAINT [PK_EmployeeID] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
