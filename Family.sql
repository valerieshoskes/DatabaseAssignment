USE [ShoskesShelterAssignment]
GO

/****** Object:  Table [dbo].[Family]    Script Date: 10/11/2016 4:47:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Family](
	[FamilyID] [int] IDENTITY(1,1) NOT NULL,
	[FencedInYard] [varchar](50) NOT NULL,
	[NumberOfChildren] [int] NOT NULL,
	[OtherPets] [varchar](50) NULL,
	[AdoptionID] [int] NULL,
 CONSTRAINT [PK_Family] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Family]  WITH CHECK ADD  CONSTRAINT [FK_Family_Adoption] FOREIGN KEY([AdoptionID])
REFERENCES [dbo].[Adoption] ([AdoptionID])
GO

ALTER TABLE [dbo].[Family] CHECK CONSTRAINT [FK_Family_Adoption]
GO

