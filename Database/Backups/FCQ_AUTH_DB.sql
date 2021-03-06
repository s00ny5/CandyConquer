USE [master]
GO
/****** Object:  Database [FCQ_AUTH_DB]    Script Date: 24-01-2016 17:14:15 ******/
CREATE DATABASE [FCQ_AUTH_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FCQ_AUTH_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BAUSSSQL\MSSQL\DATA\FCQ_AUTH_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FCQ_AUTH_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BAUSSSQL\MSSQL\DATA\FCQ_AUTH_DB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FCQ_AUTH_DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCQ_AUTH_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET  MULTI_USER 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCQ_AUTH_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FCQ_AUTH_DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FCQ_AUTH_DB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 24-01-2016 17:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[SecondaryEmail] [varchar](max) NOT NULL,
	[SecurityQuestion] [varchar](max) NULL,
	[SecurityAnswer] [varchar](max) NULL,
	[RegistrationIP] [varchar](50) NULL,
	[LastIP] [varchar](50) NULL,
	[FirstLoginIP] [varchar](50) NULL,
	[RegistrationIPRegion] [varchar](50) NULL,
	[FirstLoginIPRegion] [varchar](50) NULL,
	[LastLoginIPRegion] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Age] [int] NULL,
	[LastAuthKey] [varchar](max) NULL,
	[LastServer] [varchar](50) NULL,
	[Banned] [bit] NOT NULL,
	[BanDescription] [varchar](max) NULL,
	[BanDate] [datetime] NULL,
	[BanRange] [varchar](50) NULL,
	[RegistrationDate] [datetime] NULL,
	[FirstLoginDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[BirthDate] [datetime] NULL,
	[PasswordKeyA] [varchar](50) NULL,
	[PasswordKeyB] [int] NULL,
	[PasswordAlgorithm] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([ID], [Name], [Password], [Email], [SecondaryEmail], [SecurityQuestion], [SecurityAnswer], [RegistrationIP], [LastIP], [FirstLoginIP], [RegistrationIPRegion], [FirstLoginIPRegion], [LastLoginIPRegion], [Country], [FirstName], [MiddleName], [LastName], [Age], [LastAuthKey], [LastServer], [Banned], [BanDescription], [BanDate], [BanRange], [RegistrationDate], [FirstLoginDate], [LastLoginDate], [BirthDate], [PasswordKeyA], [PasswordKeyB], [PasswordAlgorithm]) VALUES (1, N'bauss', N'1234', N'fuckyou@fuckyoumail.com', N'fuckyou@fuckyoumail.com', N'Some fucking question????', N'Ugh', N'127.0.0.1', N'169.254.155.116', N'169.254.155.116', N'Denmark', NULL, NULL, N'Denmark', N'Jacob', NULL, N'Jensen', 22, N'BFC1EC6;-8587479554331442108', N'Lucky7', 0, N'Attempted to use an item that he/she does not own.', CAST(N'2015-12-27 18:54:23.803' AS DateTime), N'Perm', NULL, CAST(N'2015-10-19 23:31:00.887' AS DateTime), CAST(N'2016-01-24 17:04:12.333' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Accounts_NamePassword]    Script Date: 24-01-2016 17:14:16 ******/
CREATE NONCLUSTERED INDEX [IX_Accounts_NamePassword] ON [dbo].[Accounts]
(
	[Name] ASC,
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts'
GO
USE [master]
GO
ALTER DATABASE [FCQ_AUTH_DB] SET  READ_WRITE 
GO
