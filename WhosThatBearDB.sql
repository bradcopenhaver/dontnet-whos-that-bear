USE [WhosThatBear]
GO
/****** Object:  Table [dbo].[Sightings]    Script Date: 2/6/2017 4:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sightings](
	[SightingId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](max) NOT NULL,
	[Latitude] [int] NOT NULL,
	[Longitude] [int] NOT NULL,
	[SpeciesId] [int] NOT NULL,
 CONSTRAINT [PK_Sightings] PRIMARY KEY CLUSTERED 
(
	[SightingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Species]    Script Date: 2/6/2017 4:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[SpeciesId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Species] PRIMARY KEY CLUSTERED 
(
	[SpeciesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Sightings] ON 

INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (1, N'Jan 3', 234, 432, 2)
INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (3, N'Jan 4', 273, 423, 1)
INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (4, N'Feb 3', 237, 423, 4)
INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (5, N'Jan 24', 327, 342, 3)
INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (6, N'Jan 15', 234, 324, 2)
INSERT [dbo].[Sightings] ([SightingId], [Date], [Latitude], [Longitude], [SpeciesId]) VALUES (8, N'Feb 28', 444, 333, 3)
SET IDENTITY_INSERT [dbo].[Sightings] OFF
SET IDENTITY_INSERT [dbo].[Species] ON 

INSERT [dbo].[Species] ([SpeciesId], [Name]) VALUES (1, N'Gray Wolf')
INSERT [dbo].[Species] ([SpeciesId], [Name]) VALUES (2, N'Gray Squirrel')
INSERT [dbo].[Species] ([SpeciesId], [Name]) VALUES (3, N'Brown Bear')
INSERT [dbo].[Species] ([SpeciesId], [Name]) VALUES (4, N'Black Bear')
INSERT [dbo].[Species] ([SpeciesId], [Name]) VALUES (5, N'Bald Eagle')
SET IDENTITY_INSERT [dbo].[Species] OFF
ALTER TABLE [dbo].[Sightings]  WITH CHECK ADD  CONSTRAINT [FK_Sightings_Species] FOREIGN KEY([SpeciesId])
REFERENCES [dbo].[Species] ([SpeciesId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sightings] CHECK CONSTRAINT [FK_Sightings_Species]
GO
