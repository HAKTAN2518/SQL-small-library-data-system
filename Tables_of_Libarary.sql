USE [library]
GO
/****** Object:  Table [dbo].[islem]    Script Date: 28.02.2024 14:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[islem](
	[islemno] [int] NULL,
	[ogrno] [int] NULL,
	[kitapno] [int] NULL,
	[atarih] [date] NULL,
	[vtarih] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kitap]    Script Date: 28.02.2024 14:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitap](
	[kitapno] [int] IDENTITY(1,1) NOT NULL,
	[isbno] [int] NULL,
	[kitapadı] [nvarchar](50) NULL,
	[yazarno] [int] NULL,
	[turno] [int] NULL,
	[sayfasayısı] [int] NULL,
	[puan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kitapno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenci]    Script Date: 28.02.2024 14:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenci](
	[ogrno] [int] IDENTITY(1,1) NOT NULL,
	[ograd] [nvarchar](50) NULL,
	[ogrsoyad] [nvarchar](50) NULL,
	[cinsiyet] [nchar](1) NULL,
	[dtarih] [date] NULL,
	[sinif] [int] NULL,
	[puan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ogrno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tur]    Script Date: 28.02.2024 14:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tur](
	[turno] [int] IDENTITY(1,1) NOT NULL,
	[turadı] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yazar]    Script Date: 28.02.2024 14:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yazar](
	[yazarno] [int] IDENTITY(1,1) NOT NULL,
	[yazarad] [nvarchar](50) NULL,
	[yazarsoyad] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[yazarno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[islem]  WITH CHECK ADD FOREIGN KEY([kitapno])
REFERENCES [dbo].[kitap] ([kitapno])
GO
ALTER TABLE [dbo].[islem]  WITH CHECK ADD FOREIGN KEY([ogrno])
REFERENCES [dbo].[ogrenci] ([ogrno])
GO
ALTER TABLE [dbo].[kitap]  WITH CHECK ADD FOREIGN KEY([turno])
REFERENCES [dbo].[tur] ([turno])
GO
ALTER TABLE [dbo].[kitap]  WITH CHECK ADD FOREIGN KEY([yazarno])
REFERENCES [dbo].[yazar] ([yazarno])
GO
