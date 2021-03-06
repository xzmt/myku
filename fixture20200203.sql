USE [master]
GO
/****** Object:  Database [fixture]    Script Date: 2020/2/3 22:42:18 ******/
CREATE DATABASE [fixture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fixture', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\fixture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fixture_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\fixture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [fixture] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fixture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fixture] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fixture] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fixture] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fixture] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fixture] SET ARITHABORT OFF 
GO
ALTER DATABASE [fixture] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fixture] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fixture] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fixture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fixture] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fixture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fixture] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fixture] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fixture] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fixture] SET  DISABLE_BROKER 
GO
ALTER DATABASE [fixture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fixture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fixture] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fixture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fixture] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fixture] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fixture] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fixture] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [fixture] SET  MULTI_USER 
GO
ALTER DATABASE [fixture] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fixture] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fixture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fixture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fixture] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [fixture] SET QUERY_STORE = OFF
GO
USE [fixture]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2020/2/3 22:42:19 ******/
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
/****** Object:  Table [dbo].[Family]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Family](
	[FamilyID] [varchar](20) NOT NULL,
	[FamilyName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Family] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inout]    Script Date: 2020/2/3 22:42:19 ******/
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
/****** Object:  Table [dbo].[Jig]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jig](
	[Code] [varchar](20) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FamilyID] [varchar](20) NOT NULL,
	[FamilyName] [varchar](100) NOT NULL,
	[Model] [varchar](100) NULL,
	[PartNo] [varchar](100) NULL,
	[WorkcellID] [varchar](20) NOT NULL,
	[WorkcellName] [varchar](100) NOT NULL,
	[UsedFor] [varchar](100) NULL,
	[UPL] [int] NULL,
	[OwnerID] [varchar](20) NULL,
	[OwnerName] [varchar](100) NULL,
	[PMPeriod] [int] NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [varchar](20) NOT NULL,
	[AddUserName] [varchar](100) NOT NULL,
	[EditDate] [datetime] NULL,
	[EditUserID] [varchar](100) NULL,
	[EditUserName] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [PK_Jig] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jigitem]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jigitem](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[SeqID] [int] NOT NULL,
	[BillNo] [varchar](100) NULL,
	[RegDate] [datetime] NOT NULL,
	[UsedCount] [int] NULL,
	[Location] [varchar](100) NULL,
	[State] [varchar](100) NOT NULL,
	[Pic] [varchar](100) NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [varchar](20) NOT NULL,
	[AddUserName] [varchar](100) NOT NULL,
	[FirstReviewDate] [datetime] NULL,
	[FirstReviewUserID] [varchar](20) NULL,
	[FirstReviewUserName] [varchar](100) NULL,
	[SecondReviewDate] [datetime] NULL,
	[SecondReviewUserID] [varchar](20) NULL,
	[SecondReviewUserName] [varchar](100) NULL,
	[WaitTime] [datetime] NULL,
	[BackNote] [varchar](200) NULL,
 CONSTRAINT [PK_Jigitem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Line]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Line](
	[LineID] [varchar](20) NOT NULL,
	[LineName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Line] PRIMARY KEY CLUSTERED 
(
	[LineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repair]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repair](
	[RepairID] [int] NOT NULL,
	[CheckID] [int] NULL,
	[ItemID] [int] NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FamilyID] [varchar](20) NULL,
	[FamilyName] [varchar](100) NULL,
	[Model] [varchar](100) NULL,
	[PartNo] [varchar](100) NULL,
	[Problem] [varchar](100) NULL,
	[Pic] [varchar](100) NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [varchar](20) NOT NULL,
	[AddUserName] [varchar](100) NOT NULL,
	[RepairDate] [datetime] NULL,
	[RepairUserName] [varchar](100) NULL,
	[RepairState] [varchar](20) NULL,
 CONSTRAINT [PK_repatr] PRIMARY KEY CLUSTERED 
(
	[RepairID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workcell]    Script Date: 2020/2/3 22:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workcell](
	[WorkcellID] [varchar](20) NOT NULL,
	[WorkcellName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_workcell] PRIMARY KEY CLUSTERED 
(
	[WorkcellID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Workcell] FOREIGN KEY([WorkcellID])
REFERENCES [dbo].[Workcell] ([WorkcellID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Workcell]
GO
ALTER TABLE [dbo].[Jigitem]  WITH CHECK ADD  CONSTRAINT [FK_Jigitem_Code] FOREIGN KEY([Code])
REFERENCES [dbo].[Jig] ([Code])
GO
ALTER TABLE [dbo].[Jigitem] CHECK CONSTRAINT [FK_Jigitem_Code]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'夹具代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Jigitem', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'夹具序列号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Jigitem', @level2type=N'COLUMN',@level2name=N'SeqID'
GO
USE [master]
GO
ALTER DATABASE [fixture] SET  READ_WRITE 
GO
