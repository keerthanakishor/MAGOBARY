[dbo].[Registration]

drop table Registration

USE [MAGOBARY]
GO

/****** Object:  Table [dbo].[Registration]    Script Date: 3/15/2019 2:49:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Registration]
(
	rno int primary key,
	[fname] [varchar](50) NULL,
	[mname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[dob] [date] NULL,
	[gender] [varchar](50) NULL,
	[course] [varchar](50) NULL,
	[Batch] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

