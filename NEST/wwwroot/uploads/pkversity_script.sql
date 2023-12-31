USE [master]
GO
/****** Object:  Database [db_pkversity]    Script Date: 8/23/2023 1:48:15 PM ******/
CREATE DATABASE [db_pkversity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_pkversity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_pkversity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_pkversity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_pkversity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_pkversity] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_pkversity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_pkversity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_pkversity] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_pkversity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_pkversity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_pkversity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_pkversity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_pkversity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_pkversity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_pkversity] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_pkversity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_pkversity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_pkversity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_pkversity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_pkversity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_pkversity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_pkversity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_pkversity] SET RECOVERY FULL 
GO
ALTER DATABASE [db_pkversity] SET  MULTI_USER 
GO
ALTER DATABASE [db_pkversity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_pkversity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_pkversity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_pkversity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_pkversity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_pkversity] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_pkversity', N'ON'
GO
ALTER DATABASE [db_pkversity] SET QUERY_STORE = OFF
GO
USE [db_pkversity]
GO
/****** Object:  Schema [user_pkversity]    Script Date: 8/23/2023 1:48:15 PM ******/
CREATE SCHEMA [user_pkversity]
GO
/****** Object:  Table [dbo].[AcademicInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicInfo](
	[AcademicId] [int] NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[SubjectGroups] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL,
	[Board/University] [nvarchar](50) NULL,
	[PassingYear] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApprovedBy]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedBy](
	[ApprovedById] [int] IDENTITY(1,1) NOT NULL,
	[Approval] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApprovedBys] PRIMARY KEY CLUSTERED 
(
	[ApprovedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[CityCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eligibilities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eligibilities](
	[EligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](50) NULL,
	[ProgramDDId] [int] NULL,
	[ProgramDegreeDetailsId] [int] NULL,
	[Percentage] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_Eligibilitys] PRIMARY KEY CLUSTERED 
(
	[EligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExceptionHandelling]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionHandelling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[Exception] [nvarchar](500) NULL,
 CONSTRAINT [PK_ExceptionHandelling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FutureScope]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FutureScope](
	[ProgramDegreeId] [int] NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutes]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutes](
	[InstituteId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[admission_open_close] [bit] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedOn] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CityId] [int] NULL,
	[TypeOfId] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[AdminId] [int] NULL,
 CONSTRAINT [PK_Institutes] PRIMARY KEY CLUSTERED 
(
	[InstituteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDegrees]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDegrees](
	[PassingDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_PassingDegrees] PRIMARY KEY CLUSTERED 
(
	[PassingDegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDSGroups]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDSGroups](
	[PassingDSGroupsId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](60) NULL,
	[PassingDegreeId] [int] NULL,
 CONSTRAINT [PK_PassingDSGroups] PRIMARY KEY CLUSTERED 
(
	[PassingDSGroupsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramCategories]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCategories](
	[ProgramCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProgramCatagorys] PRIMARY KEY CLUSTERED 
(
	[ProgramCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegreeDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegreeDetails](
	[ProgramDegreeDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[Programs] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[TotalSemesters] [int] NULL,
	[Matric] [int] NULL,
	[FSC] [int] NULL,
	[BS] [int] NULL,
	[TotalFee] [nvarchar](50) NULL,
	[SemesterFee] [nvarchar](50) NULL,
	[ClosingMerit] [nvarchar](50) NULL,
	[ApprovedById] [nvarchar](50) NULL,
	[Morning] [bit] NULL,
	[Evening] [bit] NULL,
	[Weekened] [bit] NULL,
	[CityId] [int] NULL,
	[PassingDegreeGroups] [nvarchar](60) NULL,
	[ProgramDegreeId] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_ProgramDegreeDetails] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegrees]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegrees](
	[ProgramDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ProgramCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramDegrees] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationFrom]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationFrom](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegistrationFrom] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdFsc]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdFsc](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdMatric]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdMatric](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[SID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[StdCnic] [nvarchar](50) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[StdMobileNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectsId] [int] IDENTITY(1,1) NOT NULL,
	[SubCode] [nvarchar](50) NULL,
	[SubTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subjectss] PRIMARY KEY CLUSTERED 
(
	[SubjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfs]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfs](
	[TypeOfId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfs] PRIMARY KEY CLUSTERED 
(
	[TypeOfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (1, N'Islamabad', N'51')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (2, N'Rawalpindi', N'52')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (3, N'Karachi', N'32')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] ON 

INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (1, CAST(N'2022-09-08T16:48:23.570' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (2, CAST(N'2022-09-08T16:48:48.170' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (3, CAST(N'2022-09-08T16:50:01.470' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (4, CAST(N'2022-09-14T11:12:21.607' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (5, CAST(N'2022-09-14T11:12:27.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (6, CAST(N'2022-09-14T11:12:48.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (7, CAST(N'2022-09-14T11:12:51.073' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (8, CAST(N'2022-09-14T11:12:56.820' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (9, CAST(N'2022-09-14T11:12:58.297' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (10, CAST(N'2022-09-14T11:13:19.887' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (11, CAST(N'2022-09-14T11:26:52.120' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (12, CAST(N'2022-09-14T11:29:04.210' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (13, CAST(N'2022-09-14T11:32:30.113' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (14, CAST(N'2022-09-14T11:32:42.237' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (15, CAST(N'2022-09-14T16:30:31.140' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (16, CAST(N'2022-09-14T16:30:37.403' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (17, CAST(N'2022-09-14T16:30:39.533' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (18, CAST(N'2022-09-14T16:30:51.473' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (19, CAST(N'2022-09-14T16:31:18.867' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (20, CAST(N'2022-09-14T16:32:41.920' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (21, CAST(N'2022-09-14T16:35:20.983' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (22, CAST(N'2022-09-14T16:35:22.150' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (23, CAST(N'2022-09-14T16:35:23.640' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (24, CAST(N'2022-09-14T16:35:24.770' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (25, CAST(N'2022-09-14T16:35:25.917' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (26, CAST(N'2022-09-14T16:36:11.380' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (27, CAST(N'2022-09-16T16:16:32.073' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (28, CAST(N'2022-09-17T19:40:37.173' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpl')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (29, CAST(N'2022-09-23T15:03:51.730' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (30, CAST(N'2022-09-23T15:03:54.160' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (31, CAST(N'2022-09-23T15:56:29.143' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (32, CAST(N'2022-11-13T00:34:12.513' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (33, CAST(N'2022-11-21T16:41:33.507' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@FirstName'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (34, CAST(N'2023-01-31T21:49:32.010' AS DateTime), N'Procedure or function ''SP_SaveStudentInfo'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (35, CAST(N'2023-01-31T23:33:00.720' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (36, CAST(N'2023-01-31T23:33:58.740' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (37, CAST(N'2023-01-31T23:34:32.267' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (38, CAST(N'2023-01-31T23:35:45.130' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (39, CAST(N'2023-03-07T00:58:58.570' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (40, CAST(N'2023-03-07T00:59:10.533' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (41, CAST(N'2023-03-07T01:00:47.607' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (42, CAST(N'2023-03-07T01:02:18.990' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (43, CAST(N'2023-03-07T01:03:17.840' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (44, CAST(N'2023-03-07T01:13:23.067' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (45, CAST(N'2023-03-07T01:14:15.423' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (46, CAST(N'2023-03-07T01:15:02.577' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (47, CAST(N'2023-03-07T01:16:51.363' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (48, CAST(N'2023-03-07T01:16:58.640' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (49, CAST(N'2023-03-07T01:17:53.543' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (50, CAST(N'2023-03-07T01:19:01.487' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (51, CAST(N'2023-04-02T03:11:20.347' AS DateTime), N'Procedure or function ''SP_SaveStdFsc'' expects parameter ''@PassingDSGroup'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCop')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (52, CAST(N'2023-04-02T09:53:23.207' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (53, CAST(N'2023-04-02T09:53:37.133' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (54, CAST(N'2023-04-02T09:55:28.530' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (55, CAST(N'2023-04-02T09:55:36.210' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (56, CAST(N'2023-04-02T09:56:46.040' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (57, CAST(N'2023-04-02T09:56:52.800' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (58, CAST(N'2023-04-02T09:57:12.080' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (59, CAST(N'2023-04-02T09:58:53.643' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (60, CAST(N'2023-04-02T10:15:03.980' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (61, CAST(N'2023-04-02T10:15:55.520' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (62, CAST(N'2023-04-03T19:25:38.180' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (63, CAST(N'2023-04-03T19:27:36.750' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (64, CAST(N'2023-04-06T10:05:28.580' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (65, CAST(N'2023-04-06T10:05:41.863' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (66, CAST(N'2023-04-06T10:06:15.320' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (67, CAST(N'2023-04-06T10:06:21.973' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (68, CAST(N'2023-04-06T10:08:32.067' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (69, CAST(N'2023-04-06T10:08:33.390' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (70, CAST(N'2023-04-06T10:08:47.333' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (71, CAST(N'2023-04-06T10:09:37.337' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (72, CAST(N'2023-04-06T10:09:38.933' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (73, CAST(N'2023-04-06T10:13:09.213' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (74, CAST(N'2023-04-06T10:13:19.613' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (75, CAST(N'2023-04-06T10:13:24.717' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (76, CAST(N'2023-04-06T10:13:27.857' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (77, CAST(N'2023-04-06T10:13:28.827' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (78, CAST(N'2023-04-06T10:13:34.210' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (79, CAST(N'2023-04-06T10:31:58.453' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (80, CAST(N'2023-04-06T22:18:43.877' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (81, CAST(N'2023-04-06T22:18:55.530' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (82, CAST(N'2023-04-06T22:19:01.630' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (83, CAST(N'2023-04-06T22:19:56.243' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (84, CAST(N'2023-04-06T22:20:58.453' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (85, CAST(N'2023-04-06T22:23:39.140' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage)')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (86, CAST(N'2023-04-07T17:55:12.600' AS DateTime), N'A transport-level error has occurred when receiving results from the server. (provider: TCP Provider, error: 0 - The semaphore timeout period has expired.)   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParserStateObject.ReadSniError(TdsPars')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (87, CAST(N'2023-04-07T18:46:20.597' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Pkversity_testing\pkversity_old\PKVERSITY_ASYSEM\ClassLibraryDAL\DalFilter.cs:line 59')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (88, CAST(N'2023-04-10T09:39:02.620' AS DateTime), N'Connection Timeout Expired.  The timeout period elapsed during the post-login phase.  The connection could have timed out while waiting for server to complete the login process and respond; Or it could have timed out while attempting to create multiple active connections.  The duration spent while attempting to connect to this server was - [Pre-Login] initialization=356; handshake=428; [Login] initialization=13; authentication=45; [Post-Login] complete=28490;    at System.Data.ProviderBase.DbCon')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (89, CAST(N'2023-04-10T09:39:02.723' AS DateTime), N'Connection Timeout Expired.  The timeout period elapsed during the post-login phase.  The connection could have timed out while waiting for server to complete the login process and respond; Or it could have timed out while attempting to create multiple active connections.  The duration spent while attempting to connect to this server was - [Pre-Login] initialization=147; handshake=394; [Login] initialization=0; authentication=0; [Post-Login] complete=29474;    at System.Data.ProviderBase.DbConne')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (90, CAST(N'2023-04-10T09:39:02.973' AS DateTime), N'Timeout expired.  The timeout period elapsed prior to obtaining a connection from the pool.  This may have occurred because all pooled connections were in use and max pool size was reached.   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (91, CAST(N'2023-04-10T13:55:43.100' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnect')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (92, CAST(N'2023-04-11T05:33:30.497' AS DateTime), N'Procedure or function ''U_SP_GetUserByName'' expects parameter ''@Email'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncCl')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (93, CAST(N'2023-04-13T14:56:39.500' AS DateTime), N'Internal .NET Framework Data Provider error 6.   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (94, CAST(N'2023-04-16T00:38:10.810' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (95, CAST(N'2023-04-16T00:39:34.980' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (96, CAST(N'2023-04-16T00:41:46.080' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (97, CAST(N'2023-04-16T00:42:26.360' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (98, CAST(N'2023-04-16T00:42:30.560' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (99, CAST(N'2023-04-16T00:42:31.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
GO
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (100, CAST(N'2023-04-16T00:43:45.563' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (101, CAST(N'2023-04-16T00:44:17.887' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (102, CAST(N'2023-04-16T00:45:35.700' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (103, CAST(N'2023-04-16T00:45:37.477' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (104, CAST(N'2023-04-16T00:45:38.373' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (105, CAST(N'2023-04-16T00:57:25.480' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (106, CAST(N'2023-04-16T00:57:25.883' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (107, CAST(N'2023-04-16T00:57:27.550' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (108, CAST(N'2023-04-16T00:57:34.140' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (109, CAST(N'2023-04-16T00:57:37.730' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (110, CAST(N'2023-04-16T00:57:38.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (111, CAST(N'2023-04-16T00:59:44.093' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (112, CAST(N'2023-04-16T00:59:45.280' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (113, CAST(N'2023-04-16T01:00:11.177' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (114, CAST(N'2023-04-16T01:02:33.287' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (115, CAST(N'2023-04-16T01:02:36.260' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (116, CAST(N'2023-04-16T01:03:52.253' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (117, CAST(N'2023-04-16T01:05:14.247' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (118, CAST(N'2023-04-16T01:06:06.650' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (119, CAST(N'2023-04-16T01:07:59.610' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (120, CAST(N'2023-04-16T01:16:50.853' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (121, CAST(N'2023-04-16T01:16:57.197' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (122, CAST(N'2023-04-16T01:17:12.750' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (123, CAST(N'2023-04-16T01:17:49.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (124, CAST(N'2023-04-16T01:21:01.703' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (125, CAST(N'2023-04-16T01:21:14.563' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (126, CAST(N'2023-04-16T01:21:18.133' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (127, CAST(N'2023-04-16T01:21:19.483' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (128, CAST(N'2023-04-16T01:22:14.300' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (129, CAST(N'2023-04-16T01:22:17.033' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (130, CAST(N'2023-04-16T01:22:42.030' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (131, CAST(N'2023-04-16T01:22:43.593' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (132, CAST(N'2023-04-16T01:22:43.850' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (133, CAST(N'2023-04-16T01:22:47.420' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (134, CAST(N'2023-04-16T01:22:48.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (135, CAST(N'2023-04-16T01:23:46.847' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (136, CAST(N'2023-04-16T01:28:10.050' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (137, CAST(N'2023-04-16T01:28:14.877' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (138, CAST(N'2023-04-16T01:28:16.730' AS DateTime), N'Conversion failed when converting the nvarchar value ''air'' to data type bit.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkC')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (139, CAST(N'2023-04-16T01:28:17.093' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (140, CAST(N'2023-04-16T01:28:20.643' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (141, CAST(N'2023-04-16T01:28:21.477' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (142, CAST(N'2023-04-16T01:28:59.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (143, CAST(N'2023-04-16T01:28:59.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (144, CAST(N'2023-04-16T01:29:01.827' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (145, CAST(N'2023-04-16T01:31:06.127' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (146, CAST(N'2023-04-16T01:32:35.837' AS DateTime), N'Conversion failed when converting the nvarchar value ''air'' to data type bit.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkC')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (147, CAST(N'2023-04-16T01:32:55.137' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (148, CAST(N'2023-04-16T01:33:12.160' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] OFF
GO
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (1, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (2, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (3, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (4, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (5, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (6, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (7, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (8, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (9, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (10, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (11, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (12, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
GO
SET IDENTITY_INSERT [dbo].[Institutes] ON 

INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (1, N'Air University', N'info@au.edu.pk', N'051-0312331', 1, N'air', N'YWly', N'Apr 16 2023  1:37AM', 1, 1, 1, N'Shaheen Chowk ,E-9 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (2, N'Capital University of Science & Technology', N'info@cust.edu.pk', N'+92-51-111555666', 1, N'cust', N'Y3VzdA==', N'Apr 16 2023  1:39AM', 1, 1, 1, N' Capital University of Science & Technology , Isla', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (3, N'Bahria University', N'info@bahria.edu.pk', N'051-9260002', 0, N'bahria', N'YmFocmlh', N'Apr 16 2023  1:39AM', 1, 1, 1, N' Shangrilla Road, Sector E-8 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (4, N'COMSATS University ,Islamabad Campus ', N'alich@comsats.edu.pk', N'051-9247000', 1, N'comsatsisb', N'Y29tc2F0c2lzYg==', N'Apr 16 2023  1:44AM', 1, 1, 1, N'Park Road Tarlai Kalan ,Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (5, N'Institute of Space Technology', N'info@ist.edu.pk', N'051-9075100', 0, N'ist', N'aXN0', N'Apr 16 2023  1:46AM', 1, 1, 1, N' 1, Islamabad Expressway, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (6, N'International Islamic University', N'support@iiu.edu.pk', N'051-9257988', 1, N'iiu', N'aWl1', N'Apr 16 2023  1:49AM', 1, 1, 1, N'New Campus ,Sector H-10 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (7, N'Allama Iqbal Open University', N'support@aiou.edu.pk', N'051 111 112 468', 1, N'aiou', N'YWlvdQ==', N'', 1, 1, 1, N'Allama Iqbal Open University Sector H-8 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (8, N'Foundation University Islamabad', N'info@fui.edu.pk', N'051-111 384', 1, N'fu', N'ZnU=', N'', 1, 1, 1, N' Defence Avenue, DHA Phase-I, Islamabad ', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (9, N'Health Services Academy (HSA), Islamabad', N'academy@hsa.edu.pk', N'051 925 5590', 1, N'hsa', N'aHNh', N'', 1, 1, 1, N'Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (10, N'Ibadat International University, Islamabad', N'info@iiui.edu.pk', N'051 111 448 448', 1, N'iiu', N'aWl1', N'', 1, 1, 1, N'Japan Road Sihala', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (11, N'Muslim Youth (MY) University', N' admissions@myu.edu.pk', N'051-2355222', 1, N'myu', N'bXl1', N'', 1, 1, 1, N' Japan Road, Islamabad.', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (12, N'FEDERAL URDU UNIVERSITY OF ARTS, SCIENCES & TECHNO', N'info@fuuastisb.edu.pk', N'051-9252860', 1, N'fuu', N'ZnV1', N'', 1, 1, 1, N'Kuri Model Village Mozah Mohrian Near Bahria Encla', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (13, N'NATIONAL DEFENSE UNIVERSITY', N'registrar@ndu.edu.pk', N'051-9262068', 1, N'ndu', N'bmR1', N'', 1, 1, 1, N'Sector E-9, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (14, N'National Skills University', N'pro@nsu.edu.pk', N'051-9250908', 1, N'nsu', N'bnN1', N'', 1, 1, 1, N'Faiz Ahmed Faiz Road,
H-8/1, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (15, N'National University of Modern Languages', N'info@numl.edu.pk', N'051-90856878', 1, N'numl', N'bnVtbA==', N'', 1, 1, 1, N'H-9 Islamabad ,Pakistan.', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (16, N'National University of Sciences & Technology (NUST', N'dadmissions@nust.edu.pk', N'051-11116878', 1, N'nust', N'bnVzdA==', N'', 1, 1, 1, N'Sector H-12, Islamabad', 1234)
SET IDENTITY_INSERT [dbo].[Institutes] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDegrees] ON 

INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (1, N'Intermediate')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (2, N'A Levels')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (3, N'Matric')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (4, N'O Levels')
SET IDENTITY_INSERT [dbo].[PassingDegrees] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDSGroups] ON 

INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (1, N'Stats,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (2, N'Physics,Chemistry,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (3, N'Physics,Chemistry,Biology', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (4, N'Physics,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (5, N'Physics,Chemistry,Math,Biology', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (6, N'Physics,Chemistry,Math,Computer', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (7, N'ALL Groups', 1)
SET IDENTITY_INSERT [dbo].[PassingDSGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramCategories] ON 

INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (1, N'Computer Science')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (2, N'Engineering')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (3, N'General Sciences')
SET IDENTITY_INSERT [dbo].[ProgramCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] ON 

INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (1, NULL, N'4Year', NULL, 50, 60, NULL, N'9000000', N'850000', N'78', N'True,True', 0, 0, 0, 1, N'7,', 1, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (2, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'72000', N'67', N'True,True', 0, 0, 0, 1, N'4,2,1,', 2, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (3, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'65000', N'78.45', N'True,True', 1, 1, 1, 1, N'3,4,', 7, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (4, NULL, N'4Year', 8, 60, 50, 2, N'750000', N'65000', NULL, N'True,True', 0, 0, 0, 1, N'1,2,4,', 9, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (5, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 8, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, 8, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, 6, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (8, NULL, NULL, NULL, 50, 60, 3, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'2,', 1, 3)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (10, NULL, NULL, NULL, 50, 60, 2, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 1, 4)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (12, NULL, N'4Year', 8, 50, 60, 2, N'100,960', N'35,000', N'78.4', N'True,False', 0, 0, 0, 1, N'2,3,4,1,', 1, 5)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (13, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 3, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (14, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 4, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (15, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 5, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (16, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 6, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (17, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 21, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (18, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 22, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (19, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 73, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (20, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 7, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (21, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 8, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (22, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 9, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (23, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 13, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (24, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 14, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (25, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 41, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (26, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 97, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (27, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 10, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (28, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 11, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (29, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 17, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (30, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (31, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (32, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 23, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (33, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 24, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (34, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 19, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (35, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 20, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (43, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 1, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (44, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 2, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (45, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 2, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (46, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 3, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (47, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 4, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (48, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 14, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (49, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 55, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (50, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 58, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (51, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 75, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (52, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 23, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (53, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 61, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (54, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 62, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (55, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 63, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (56, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 65, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (57, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 67, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (58, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 67, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (59, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 70, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (60, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 47, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (61, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 11, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (62, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (63, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 46, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegrees] ON 

INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (1, N'BS Computer Science ', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (2, N'BS Information Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (3, N'BS Cyber Security', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (4, N'BS Artificial Intelligence', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (5, N'BS Data Science', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (6, N'BS Creative Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (7, N'BE Mechanical', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (8, N'BE Electrical(Telecom)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (9, N'BS Avionics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (10, N'BS Math', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (11, N'BS English', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (12, N'BS Pak Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (13, N'BE Electrical(Electronics)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (14, N'BE Electrical(Power)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (15, N'BE Mechatronics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (16, N'BE Biomedical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (17, N'BBA-Honors', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (18, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (19, N'BS Tourism and Hospitality Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (20, N'BS Healthcare Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (21, N'BS Software Engineering', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (22, N'BS Gaming Multimedia', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (23, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (24, N'BS Physics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (25, N'BS International Relationship', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (26, N'BS DataScience', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (27, N'BS Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (28, N'BS Remote Sensing & GIS', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (29, N'BS Maritime Business & Management', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (30, N'BS Coastal & Marine Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (31, N'BS Media Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (32, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (33, N'BS Chemistry', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (34, N'BS German', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (35, N'BS Punjabi', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (36, N'BS Balochi', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (37, N' BS Pashto', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (38, N'BE Materials and Surface ', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (39, N'BE Computer Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (40, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (41, N'BS Aviation Management', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (42, N'BS Tourism and Hospitality Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (43, N'BS Healthcare Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (44, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (45, N'BS Supply Chain Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (46, N'BS Economics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (47, N'BS Geology/Geophysics/Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (48, N'BS Geo sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (49, N'BS Social Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (50, N'BS Public Health', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (51, N'BS Media Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (52, N'BS Television Broadcasting & Digital Media', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (53, N'BS Biochemistry', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (54, N'BS Business Analytics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (55, N'BS Biotechnology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (56, N'BS Microbiology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (57, N'BS Accounting & Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (58, N'BS Bioinformatics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (59, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (60, N'BS Architecture', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (61, N'BS Design', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (62, N'BS Fine Arts', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (63, N'BS Interior Design', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (64, N'BS in Biosciences', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (65, N'BS Food Science and Nutrition', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (66, N'BS Chemical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (67, N'BS Chemistry', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (68, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (69, N'BS Development Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (70, N'BS Geology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (71, N'BS Geophysics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (72, N'BS Economics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (73, N'BS Computer Engineering', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (74, N'BS Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (75, N'BS Biotechnology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (76, N'BS Media and Communication Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (77, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (78, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (79, N'BS Business Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (80, N'BS Mathematics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (81, N'BS Mechanical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (82, N'BS Computer Arts', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (83, N'BS Medical Lab Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (84, N'BS Vision Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (85, N'BS Nursing', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (86, N'BS Medical Imaging Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (87, N'BS Business Analytics ', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (88, N'BS Commerce', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (89, N'BS Project Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (90, N'BS Public Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (91, N'BS History', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (92, N'BS Pakistan Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (93, N'BS Media & Communication', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (94, N'BS Political Science', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (95, N'BS Sociology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (96, N'Bachelors of Business Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (97, N'BS International Relations (Bridge Program)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (98, N'BS Sports Sciences and Physical Education', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (99, N'BS Peace & Conflict Studies', 3)
GO
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (100, N'BS Mass Communication', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (101, N'BS Islamic Thought and Culture', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (102, N'BS Urdu (Bridging)', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (103, N'BS Urdu Hons', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (104, N'BS Urdu Foreigners', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (105, N'BS Educational Leadership', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (106, N'BS Early Childhood Care and Education', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (107, N'BS Health and Physical Education', 3)
SET IDENTITY_INSERT [dbo].[ProgramDegrees] OFF
GO
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math', N'Rwp', N'970', N'1100', N'60', N'2021', N'Punjab College')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (2, N'Physics,Chemistry,Math', N'Rwp', N'1100', N'1100', N'89', N'2022', N'siddeeq')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math', N'Rwp', N'989', N'1100', N'89', N'2021', N'Punjab college information technology ')
GO
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math,Biology', N'Rwp', N'970', N'1100', N'88', N'2019', N'Al Ahmed')
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math,Biology', N'Rwp', N'968', N'1100', N'87', N'2019', N'Siddeeq')
GO
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (3, N'Rehan Akhtar ', N'Muhammad Akhtar ', N'Male', N'37405-3988888-8', N'2023-04-04', N'Rawalpindi', N'kk13c st 02 ', N'0314-5582717', N'rehan.akhtar.985@gmail.com')
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (1, N'Muhammad Awab Ahmed', N'Mustafa', N'Male', N'2324234324', N'2023-04-05', N'Rawalpindi', N'Dhoke Kashmirian d/k 325  street no 15 Rawalpindi', N'03411889638', N'muhammadawab82002@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[TypeOfs] ON 

INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (1, N'University')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (2, N'College')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (3, N'School')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (4, N'Madrisa')
SET IDENTITY_INSERT [dbo].[TypeOfs] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (1, N'Awab', N'Ahmed', N'awab@gmail.com', N'YXdhYg==', N'03411899638', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (2, N'Rehan', N'Akhtar', N'rehan@gmail.com', N'cmVoYW4=', N'03145582717', N'Rawalpindi', N'Female', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (3, N'Muhammad', N'Ahmed', N'rehan@gmail.com', N'cmVoYW4xMjM=', N'03435345', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (4, N'Saad', N'Minhas', N'saadr8840@gmail.com', N'MTIz', N'+923477848411', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (5, N'Tahir ', N'Mehmood ', N'tm448028@gmail.com', N'OWJnNjMwNXRhaGly', N'03345504576', N'Rawalpindi ', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (6, N'asim', N'ali', N'yesiamrana@gmail.com', N'MTIzNA==', N'03214700454', N'Islamabad', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (7, N'asim', N'ali', N'yesiamrana@gamil.com', N'MTIzNA==', N'03214700454', N'Islamabad ', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (8, N'muhammad ', N'aashir', N'aashirzubair84@gmail.com', N'MTIzNDU=', N'03335293875', N'islamabad', N'Male', N'User')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
/****** Object:  StoredProcedure [dbo].[A_SP_GetError]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[A_SP_GetError]
as
begin
select * from ExceptionHandelling
end
GO
/****** Object:  StoredProcedure [dbo].[A_SP_SaveAdmissionInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[A_SP_SaveAdmissionInfo]
@InstituteId int,
@admission_open_close bit
as
begin
update Institutes set admission_open_close = @admission_open_close where InstituteId=@InstituteId;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddCategoryWithID]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AddCategoryWithID]
@CAID int
as
begin
select * from ProgramCategories
where ProgramCategoryId=@CAID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddDegreeWithID]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_AddDegreeWithID]
@DID int
as
begin
select * from ProgramDegrees
where ProgramDegreeId=@DID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddProgramDegreeDetailsById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_AddProgramDegreeDetailsById]
@DDID int
as
begin
select * from ProgramDegreeDetails
where ProgramDegreeDetailsId=@DDID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteCities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteCities]
@CityId int
as
begin
delete from Cities
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteFsc]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_DeleteFsc]
@SID int
as
begin
Delete FROM StdFsc 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteInstitutes]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_DeleteInstitutes]
@InstituteId int
as
begin
delete from Institutes
where InstituteId = @InstituteId  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMatric]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteMatric]
@SID int
as
begin
Delete FROM StdMatric 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDegrees]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeletePassingDegrees] 
@PassingDegreeId int
as
begin
delete from PassingDegrees
where 
PassingDegreeId=@PassingDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDSGroups]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeletePassingDSGroups]
@PassingDSGroupsId int
as
begin
delete from PassingDSGroups 
where
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramCategory]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramCategory]
@ID int
as
begin
DELETE FROM ProgramCategories
where 
ProgramCategoryId=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegree]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegree]
@ProgramDegreeId int
as
begin
DELETE FROM ProgramDegrees
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegreeDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegreeDetails]
@ProgramDegreeDetailsId int
as
begin
DELETE FROM ProgramDegreeDetails
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteTypeOfs]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeleteTypeOfs]
@TypeOfId int
as
begin
delete from TypeOfs
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetCities]
as
begin
select *from Cities
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCityById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetCityById]
@CityId int 
as
begin
select * from Cities
where CityId = @CityId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFsc]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetFsc]
@SID int
as
begin
select * from StdFsc
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFutureScopeById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetFutureScopeById]
@ProgramDegreeId int
as
begin
select * from FutureScope where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstituteBtId]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetInstituteBtId]
@InstituteId int 
as
begin
select * from Institutes
where InstituteId = @InstituteId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstitutes]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetInstitutes]
as
begin
select InstituteId, Title, Email, Phone, UserName, [Password], CreatedOn, IsActive, CityId, TypeOfId, [Location], AdminId ,admission_open_close
from Institutes
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMatric]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetMatric]
@SID int
as
begin
select * from StdMatric
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDegrees]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDegrees]
as
begin
select * from PassingDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDegreesById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetpassingDegreesById]
@PassingDegreesId int
as
begin
select * from PassingDegrees
where
PassingDegreeId=@PassingDegreesId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDSGroups]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDSGroups]
as
begin
select * from PassingDSGroups
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDSGroupsById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetpassingDSGroupsById]
@PassingDSGroupsId int
as
begin
select * from PassingDSGroups
where
PassingDSGroupsId = @PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramCategory]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramCategory]
as
begin
Select * from ProgramCategories
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegree]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegree]
as
begin
Select * from ProgramDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegreeDetails]
as
begin
Select * from ProgramDegreeDetails
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.DegreeName, 
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramGroupsBYID]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetProgramGroupsBYID] 
@ID int,
@InstituteId int
as
begin
declare @passvales nvarchar(max)
set @passvales=(select top(1) PassingDegreeGroups  from  
ProgramDegreeDetails where ProgramDegreeDetailsId=@ID and InstituteId=@InstituteId)
select value, t.PassingDSGroups from STRING_SPLIT(@passvales,',') 
inner join PassingDSGroups as t
on
t.PassingDSGroupsId=value
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeById]
@TypeOfId int 
as
begin
select * from TypeOfs
where TypeOfId = @TypeOfId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeOfs]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeOfs]
as
begin
select *from TypeOfs
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserByName]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetUserByName]
@UserName nvarchar(50)
as
begin
select InstituteId, UserName, [Password]
from Institutes
where
UserName=@UserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveCities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveCities]
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
insert into Cities( CityName, CityCode)
values ( @CityName, @CityCode)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveDescription]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
insert into FutureScope (ProgramDegreeId,Description) values(@ProgramDegreeId,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveInstitutes]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveInstitutes]	

@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50),
@Password nvarchar(50),   
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int,
@admission_open_close bit
as
begin
insert into Institutes( Title, Email, Phone, admission_open_close ,UserName, Password, CreatedOn, IsActive, CityId, TypeOfId, Location, AdminId)
values ( @Title, @Email, @Phone, @admission_open_close,@UserName,@Password,GETDATE() , 'true', @CityId, @TypeOfId, @Location, @AdminId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDegrees]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_SavePassingDegrees]

@Title nvarchar(50)
as
begin
insert into PassingDegrees(Title)values(@Title);
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDSGroups]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SavePassingDSGroups]
@PassingDSGroups nvarchar(60),
@PassingDegreeId int
as
begin
insert into PassingDSGroups(PassingDSGroups,PassingDegreeId)values(@PassingDSGroups,@PassingDegreeId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramCategory]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramCategory]
@CategoryName nvarchar(50)
as
begin
 INSERT INTO ProgramCategories(CategoryName) VALUES( @CategoryName)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegree]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramDegree]
@DegreeName nvarchar(50),
@ProgramCategoryid int
as
begin
 INSERT INTO ProgramDegrees(DegreeName,ProgramCategoryId) VALUES( @DegreeName,@ProgramCategoryid)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegreeDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveProgramDegreeDetails]
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById int=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null
as
begin
 INSERT INTO ProgramDegreeDetails( Programs,Duration, TotalSemesters,Matric,FSC,BS,TotalFee,SemesterFee,ClosingMerit, ApprovedById,Morning, Evening, Weekened,CityId,PassingDegreeGroups, ProgramDegreeId, InstituteId) VALUES(@Programs,@Duration, @TotalSemesters,@Matric,@FSC,@BS, @TotalFee,@SemesterFee, @ClosingMerit, @ApprovedById, @Morning, @Evening, @Weekened,@CityId, @PassingDegreeGroups, @ProgramDegreeId, @InstituteId)  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveRegistrationForm]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveRegistrationForm]
@Name nvarchar(50),
@Password nvarchar(50),
@Role nvarchar(50)

as 
begin 

insert into UserData (UserName,Password,Role) values(@Name,@Password,@Role)
end

GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdFsc]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveStdFsc]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdFsc(SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdMatric]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveStdMatric]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdMatric (SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStudentInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_SaveStudentInfo]
@SID int,
@FirstName nvarchar(50),
@FatherName nvarchar(50),
@Gender nvarchar(50),
@CNIC nvarchar(50),
@DateOfBirth nvarchar(50),
@City nvarchar(50),
@Address nvarchar(50),
@StudentMobileNo nvarchar(50),
@Email nvarchar(50)
as
begin
insert into StudentInfo(SID,FirstName,FatherName,Gender,StdCnic,DateOfBirth,City,Address,StdMobileNumber,Email)values(@SID,@FirstName,@FatherName,@Gender,@CNIC,@DateOfBirth,@City,@Address,@StudentMobileNo,@Email)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveTypeOfs]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_SaveTypeOfs]
@Type nvarchar(50)
as
begin
insert into TypeOfs([Type])
values (@Type)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateCities]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateCities]
@CityId int,
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
update Cities
set
CityName = @CityName,
CityCode = @CityCode 
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateDescription]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
update FutureScope set ProgramDegreeId=@ProgramDegreeId , Description=@Description where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateInstitute]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateInstitute]
@InstituteId int, 
@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50), 
@Password nvarchar(50), 
@CreatedOn nvarchar(50), 
@IsActive bit, 
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int
as
begin
update Institutes
set  
Title = @Title, 
Email = @Email, 
Phone = @Phone, 
 
UserName = @UserName, 
[Password] = @Password, 
CreatedOn = @CreatedOn, 
IsActive = @IsActive, 
CityId = @CityId, 
TypeOfId = @TypeOfId, 
[Location] = @Location, 
AdminId = @AdminId
where InstituteId = @InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDegree]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdatePassingDegree]
@id int,
@title nvarchar(50)
as
begin
update PassingDegrees
set 
Title=@title
where 
PassingDegreeId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDSGroups]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdatePassingDSGroups]
@PassingDSGroupsId int,
@passingDSGroups nvarchar(60),
@passingDegreeId int
as
begin
update PassingDSGroups
set 
PassingDSGroups=@passingDSGroups,
PassingDegreeId=@passingDegreeId
where 
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramCategory]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramCategory]
@ProgramCategoryId int,
@CategoryName nvarchar(50)
as 
begin 
update ProgramCategories
set
CategoryName=@CategoryName
where 
ProgramCategoryId=@ProgramCategoryId
end

GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegree]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramDegree]
@ProgramDegreeId int,
@DegreeName nvarchar(50),
@ProgramCategoryid nvarchar(50)
as 
begin 
update ProgramDegrees
set
DegreeName=@DegreeName,
ProgramCategoryid =@ProgramCategoryid 
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegreeDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateProgramDegreeDetails] 
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById nvarchar(50)=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null,
@ProgramDegreeDetailsId int,
@type nvarchar(20)
as
begin

if(@type='shift')
	begin
		update ProgramDegreeDetails
		set 
		Morning=@Morning, 
		Evening=@Evening, 
		Weekened=@Weekened
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='FEE')
	begin
		update ProgramDegreeDetails
		set
		TotalFee=@TotalFee,
		SemesterFee=@SemesterFee
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='Approvedby')
begin
update ProgramDegreeDetails
set
ApprovedById=@ApprovedById
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Criteria')
begin
update ProgramDegreeDetails
set
Matric=@Matric,
FSC=@FSC,
BS=@BS
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='ClosingMerit')
begin
update ProgramDegreeDetails
set
ClosingMerit=@ClosingMerit
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='TotalSemesters')
begin
update ProgramDegreeDetails
set
TotalSemesters=@TotalSemesters
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Duration')
begin
update ProgramDegreeDetails
set
Duration=@Duration
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Groups')
begin
update ProgramDegreeDetails
set
PassingDegreeGroups=@PassingDegreeGroups
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
end


GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateTypeOfs]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateTypeOfs]
@TypeOfId int,
@Type nvarchar(50)
as
begin
update TypeOfs
set
Type = @Type 
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_DeleteStudentInfobyID]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_DeleteStudentInfobyID]
@SID int
as
begin
delete from StudentInfo
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId]
@CityId int,
@PDSGID nvarchar(50),
@Percentage int
as 
begin
select count(p.InstituteId) as Departments, i.admission_open_close,i.Title,p.InstituteId from ProgramDegreeDetails as p
inner join Institutes as i 
on
i.InstituteId=p.InstituteId
where (p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%')  or p.PassingDegreeGroups like CONCAT('%',7, '%'))
and p.CityId=@CityId and @Percentage>=p.FSC
group by p.InstituteId, i.Title,i.admission_open_close
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentDetails]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentDetails]
@PDSGID nvarchar(50),
@InstituteID int
as
begin
select 
p.[Duration],
p.[TotalSemesters], 
p.[Matric],
p.[FSC],
p.[TotalFee],
p.[SemesterFee],
p.[ClosingMerit],
p.[ProgramDegreeId], 
p.[InstituteId],
p.ProgramDegreeId,
pd.DegreeName 
from ProgramDegreeDetails as p
inner join ProgramDegrees as pd
on pd.ProgramDegreeId=p.ProgramDegreeId
where (( p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%') or  p.PassingDegreeGroups like CONCAT('%',7, '%') )and p.InstituteId=@InstituteID)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetProgramDegreeByInstituteId]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[U_SP_GetProgramDegreeByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.ProgramDegreeId,
p.DegreeName,
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetResultById]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetResultById] 
@PDSGID nvarchar(50)
as 
begin
select
P.PassingDegreeGroups,
I.Title,
I.InstituteId,
P.ProgramDegreeId,
PD.DegreeName,
C.CityId,
C.CityName
from Institutes as I
inner join ProgramDegreeDetails as P 
on p.InstituteId = I.InstituteId 
inner join ProgramDegrees as PD 
on PD.ProgramDegreeId = P.ProgramDegreeId
inner join Cities as C 
on C.CityId=P.CityId

where P.PassingDegreeGroups like  CONCAT('%',@PDSGID, '%');
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetStudentInfobyID]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_GetStudentInfobyID] 

@StdId int
as
begin
select * from StudentInfo
where SID=@StdId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetUserByName]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetUserByName]
@Email nvarchar(50)
as
begin
select * from UserInfo
where 
Email =@Email
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_SaveSignUp]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_SaveSignUp]
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@ContactNo nvarchar(50),
@City nvarchar(50),
@Gender nvarchar(50),
@Role nvarchar(50)
as
begin
Insert into UserInfo (FirstName,LastName,Email,Password,ContactNo,City,Gender,Role) values (@FirstName,@LastName,@Email,@Password,@ContactNo,@City,@Gender,@Role)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_StoreError]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_StoreError] 
@Err nvarchar(500)
as
begin
insert into ExceptionHandelling ([DateTime],Exception) values (GetDate() ,@Err)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateFSCInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateFSCInfo]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdFsc
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateMatricInfo]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateMatricInfo]

@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdMatric
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdatePassword]    Script Date: 8/23/2023 1:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[U_SP_UpdatePassword]
@UserId int,
@Password nvarchar(30)
as
begin
Update UserInfo set Password=@Password where UserId=@UserId; 
end
GO
USE [master]
GO
ALTER DATABASE [db_pkversity] SET  READ_WRITE 
GO
