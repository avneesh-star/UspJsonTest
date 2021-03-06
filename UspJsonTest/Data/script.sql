USE [master]
GO
/****** Object:  Database [JsonTestDb]    Script Date: 23-02-2022 23:51:14 ******/
CREATE DATABASE [JsonTestDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JsonTestDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\JsonTestDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JsonTestDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\JsonTestDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JsonTestDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JsonTestDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JsonTestDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JsonTestDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JsonTestDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JsonTestDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JsonTestDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [JsonTestDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JsonTestDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JsonTestDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JsonTestDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JsonTestDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JsonTestDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JsonTestDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JsonTestDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JsonTestDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JsonTestDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JsonTestDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JsonTestDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JsonTestDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JsonTestDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JsonTestDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JsonTestDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JsonTestDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JsonTestDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JsonTestDb] SET  MULTI_USER 
GO
ALTER DATABASE [JsonTestDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JsonTestDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JsonTestDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JsonTestDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JsonTestDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JsonTestDb] SET QUERY_STORE = OFF
GO
USE [JsonTestDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [JsonTestDb]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 23-02-2022 23:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](128) NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 23-02-2022 23:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
	[Mobile] [varchar](15) NULL,
	[Email] [varchar](128) NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[pincode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblState]    Script Date: 23-02-2022 23:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 

INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (1, N'Meerut', 1)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (2, N'Rampur', 1)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (3, N'Hardoi', 1)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (4, N'Indore', 2)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (5, N'Bhopal', 2)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (6, N'Satna', 2)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (7, N'Sonipat', 3)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (8, N'Hisar', 3)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (9, N'Jajjar', 3)
SET IDENTITY_INSERT [dbo].[tblCity] OFF
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 

INSERT [dbo].[tblCustomer] ([Id], [Name], [Mobile], [Email], [StateId], [CityId], [pincode]) VALUES (1, N'avneesh', N'8756059656', N'avneesg@gmail.com', 1, 1, 121212)
INSERT [dbo].[tblCustomer] ([Id], [Name], [Mobile], [Email], [StateId], [CityId], [pincode]) VALUES (2, N'rajeev', N'7011320126', N'rajeev@gmail.com', 1, 2, 121212)
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
SET IDENTITY_INSERT [dbo].[tblState] ON 

INSERT [dbo].[tblState] ([StateId], [StateName]) VALUES (1, N'Uttar Pradesh')
INSERT [dbo].[tblState] ([StateId], [StateName]) VALUES (2, N'Madhya Pradesh')
INSERT [dbo].[tblState] ([StateId], [StateName]) VALUES (3, N'Haryana')
SET IDENTITY_INSERT [dbo].[tblState] OFF
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([StateId])
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[tblCity] ([CityId])
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([StateId])
GO
/****** Object:  StoredProcedure [dbo].[sp_get_state]    Script Date: 23-02-2022 23:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- tblState
-- tblCity

CREATE PROCEDURE [dbo].[sp_get_state]
(
@StateId int = 0
)
AS 
BEGIN
	IF(@StateId = 0)
	BEGIN
		SELECT a.stateId as 'id', a.statename as 'name', cityid as 'city.id', cityname as 'city.name'
		FROM tblState a
		inner join tblCity city on a.stateid = city.stateid
		for json auto,ROOT('data')
	END
	ELSE
	BEGIN
		SELECT a.stateId as 'id', a.statename as 'name', cityid as 'city.id', cityname as 'city.name'
		FROM tblState a
		inner join tblCity city on a.stateid = city.stateid
		WHERE a.stateId = @StateId
		for json auto,WITHOUT_ARRAY_WRAPPER
	END

END


GO
/****** Object:  StoredProcedure [dbo].[sp_get_tblCustomer]    Script Date: 23-02-2022 23:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_get_tblCustomer] 
(
@cutomerId int  = 0
)
AS
BEGIN
	IF(@cutomerId <= 0)
	BEGIN
		SELECT a.id, a.name, a.mobile, a.email, b.stateid as 'state.id', b.statename as 'state.name', c.cityid as 'city.id' , c.cityname as 'city.name' 
		FROM tblCustomer a
		INNER JOIN tblState b on a.stateid = b.stateid
		inner join tblcity c on a.cityId = a.cityid
		FOR JSON path,ROOT('data')
	END
	ELSE
	BEGIN
		SELECT a.id, a.name, a.mobile, a.email, b.stateid as 'id', b.statename as 'name', c.cityid as 'id' , c.cityname as 'name' 
		FROM tblCustomer a
		INNER JOIN tblState b on a.stateid = b.stateid
		inner join tblcity c on a.cityId = a.cityid
		WHERE id = @cutomerId
		FOR JSON AUTO,without_array_wrapper
	END
END

GO
USE [master]
GO
ALTER DATABASE [JsonTestDb] SET  READ_WRITE 
GO
