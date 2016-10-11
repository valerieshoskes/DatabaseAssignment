USE [ShoskesShelterAssignment]
GO

/****** Object:  Table [dbo].[Animal]    Script Date: 10/11/2016 4:46:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Animal](
	[AnimalID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Species] [varchar](50) NOT NULL,
	[Breed] [varchar](50) NULL,
	[AdoptionID] [int] NULL,
 CONSTRAINT [PK_Animal] PRIMARY KEY CLUSTERED 
(
	[AnimalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Adoption] FOREIGN KEY([AdoptionID])
REFERENCES [dbo].[Adoption] ([AdoptionID])
GO

ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Adoption]
GO

