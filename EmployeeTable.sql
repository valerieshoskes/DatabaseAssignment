USE [ShoskesShelterAssignment]
GO

/****** Object:  Table [dbo].[EmployeeTable]    Script Date: 10/11/2016 4:47:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EmployeeTable](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[HourlyPay] [money] NULL,
	[DateOfHire] [date] NULL,
	[Name] [varchar](50) NULL,
	[JobTitle] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeTable] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

