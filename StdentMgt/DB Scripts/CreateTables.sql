USE [StudentMgt]
GO

/****** Object:  Table [dbo].[Enrollment]    Script Date: 1/25/2021 10:57:20 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment]') AND type in (N'U'))
DROP TABLE [dbo].[Enrollment]
GO

/****** Object:  Table [dbo].[Enrollment]    Script Date: 1/25/2021 10:57:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Enrollment](
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL
) ON [PRIMARY]
GO
USE [StudentMgt]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 1/25/2021 10:56:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
DROP TABLE [dbo].[Course]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 1/25/2021 10:56:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Course Name] [nvarchar](50) NULL,
	[Content] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [StudentMgt]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 1/25/2021 10:58:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 1/25/2021 10:58:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](50) NULL,
	[Last Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

