USE [master]
GO
/****** Object:  Database [FivePSocialNetWork]    Script Date: 06/02/2021 1:42:19 AM ******/
CREATE DATABASE [FivePSocialNetWork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FivePSocialNetWork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FivePSocialNetWork.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FivePSocialNetWork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FivePSocialNetWork_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FivePSocialNetWork] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FivePSocialNetWork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FivePSocialNetWork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET ARITHABORT OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FivePSocialNetWork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FivePSocialNetWork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FivePSocialNetWork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FivePSocialNetWork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FivePSocialNetWork] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FivePSocialNetWork] SET  MULTI_USER 
GO
ALTER DATABASE [FivePSocialNetWork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FivePSocialNetWork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FivePSocialNetWork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FivePSocialNetWork] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FivePSocialNetWork]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisement](
	[advertisiment_id] [int] IDENTITY(1,1) NOT NULL,
	[advertisiment_companyname] [nvarchar](300) NULL,
	[advertisiment_note] [nvarchar](max) NULL,
	[advertisiment_activate] [bit] NULL,
	[advertisiment_dateCreate] [datetime] NULL,
	[advertisiment_dateEdit] [datetime] NULL,
	[advertisiment_recycleBin] [bit] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[advertisiment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Answer]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[answer_id] [int] IDENTITY(1,1) NOT NULL,
	[answer_content] [nvarchar](max) NULL,
	[answer_dateCreate] [datetime] NULL,
	[answer_dateEdit] [datetime] NULL,
	[user_id] [int] NULL,
	[answer_activate] [bit] NULL,
	[answer_userStatus] [bit] NULL,
	[question_id] [int] NULL,
	[answer_totalRate] [int] NULL,
	[answer_medalCalculate] [int] NULL,
	[answer_recycleBin] [bit] NULL,
	[answer_admin_recycleBin] [bit] NULL,
	[answer_correct] [bit] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[answer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment_Answer]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Answer](
	[commentAnswer_id] [int] IDENTITY(1,1) NOT NULL,
	[commentAnswer_content] [nvarchar](max) NULL,
	[commentAnswer_dateCreate] [datetime] NULL,
	[commentAnswer_dateEdit] [datetime] NULL,
	[user_id] [int] NULL,
	[answer_id] [int] NULL,
	[commentAnswer_recycleBin] [bit] NULL,
	[commentAnswer_activate] [bit] NULL,
	[commentAnswer_userStatus] [bit] NULL,
 CONSTRAINT [PK_Comment_Answer] PRIMARY KEY CLUSTERED 
(
	[commentAnswer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commune]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commune](
	[commune_id] [int] IDENTITY(1,1) NOT NULL,
	[commune_name] [nvarchar](300) NULL,
	[commune_activate] [bit] NULL,
	[commune_dateCreate] [datetime] NULL,
	[commune_dateEdit] [datetime] NULL,
	[commune_recycleBin] [bit] NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_Commune] PRIMARY KEY CLUSTERED 
(
	[commune_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Denounce_User]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denounce_User](
	[denounceUser_id] [int] IDENTITY(1,1) NOT NULL,
	[accuser_id] [int] NULL,
	[discredit_id] [int] NULL,
	[denounceUser_content] [nvarchar](300) NULL,
	[denounceUser_dateCreate] [datetime] NULL,
	[denounceUser_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Denounce_User] PRIMARY KEY CLUSTERED 
(
	[denounceUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nvarchar](300) NULL,
	[district_activate] [bit] NULL,
	[district_dateCreate] [datetime] NULL,
	[district_dateEdit] [datetime] NULL,
	[district_recycleBin] [bit] NULL,
	[provincial_id] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Friend]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friend](
	[friend_id] [int] IDENTITY(1,1) NOT NULL,
	[userRequest_id] [int] NULL,
	[userResponse_id] [int] NULL,
	[friend_status] [bit] NULL,
	[friend_dateRequest] [datetime] NULL,
	[friend_dateResponse] [datetime] NULL,
	[friend_dateUnfriend] [datetime] NULL,
	[friend_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Friend] PRIMARY KEY CLUSTERED 
(
	[friend_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image_Advertisement]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image_Advertisement](
	[ImageAdvertisement_id] [int] IDENTITY(1,1) NOT NULL,
	[ImageAdvertisement_image] [varchar](max) NULL,
	[advertisement_id] [int] NULL,
	[ImageAdvertisement_note] [nvarchar](max) NULL,
	[ImageAdvertisement_activate] [bit] NULL,
	[ImageAdvertisement_dateCreate] [datetime] NULL,
	[ImageAdvertisement_dateEdit] [datetime] NULL,
	[ImageAdvertisement_recycleBin] [bit] NULL,
	[positionAdvertisement_id] [int] NULL,
 CONSTRAINT [PK_Image_Advertisement] PRIMARY KEY CLUSTERED 
(
	[ImageAdvertisement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Letters]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letters](
	[letters_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[letters_content] [nvarchar](max) NULL,
	[letters_status] [bit] NULL,
	[letters_recycleBin] [bit] NULL,
	[letters_dateCreate] [datetime] NULL,
	[letters_dateEdit] [datetime] NULL,
	[letters_statusSee] [bit] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Letters] PRIMARY KEY CLUSTERED 
(
	[letters_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Letters_Idea]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letters_Idea](
	[lettersIdea_id] [int] IDENTITY(1,1) NOT NULL,
	[lettersIdea_content] [nvarchar](300) NULL,
	[lettersIdea_activate] [bit] NULL,
	[lettersIdea_dateCreate] [datetime] NULL,
	[lettersIdea_dateEdit] [datetime] NULL,
	[lettersIdea_recycleBin] [bit] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Letters_Idea] PRIMARY KEY CLUSTERED 
(
	[lettersIdea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[message_content] [nvarchar](max) NULL,
	[messageSender_id] [int] NULL,
	[messageRecipients_id] [int] NULL,
	[message_dateSend] [datetime] NULL,
	[message_recycleBin] [bit] NULL,
	[message_status] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_content] [nvarchar](300) NULL,
	[receiver_id] [int] NULL,
	[impactUser_id] [int] NULL,
	[question_id] [int] NULL,
	[notification_status] [bit] NULL,
	[notification_dateCreate] [datetime] NULL,
	[notification_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position_Advertisement]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position_Advertisement](
	[positionAdvertisement_id] [int] IDENTITY(1,1) NOT NULL,
	[positionAdvertisement_positionName] [nvarchar](max) NULL,
	[positionAdvertisement_note] [nvarchar](max) NULL,
	[positionAdvertisement_activate] [bit] NULL,
	[positionAdvertisement_dateCreate] [datetime] NULL,
	[positionAdvertisement_dateEdit] [datetime] NULL,
 CONSTRAINT [PK_Position_Advertisement] PRIMARY KEY CLUSTERED 
(
	[positionAdvertisement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_content] [nvarchar](max) NULL,
	[post_dateCreate] [datetime] NULL,
	[post_dateEdit] [datetime] NULL,
	[user_id] [int] NULL,
	[post_activate] [bit] NULL,
	[post_title] [nvarchar](300) NULL,
	[post_view] [int] NULL,
	[post_totalLike] [int] NULL,
	[post_totalDislike] [int] NULL,
	[post_recycleBin] [bit] NULL,
	[post_userStatus] [bit] NULL,
	[post_admin_recycleBin] [bit] NULL,
	[post_image] [varchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincial]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincial](
	[provincial_id] [int] IDENTITY(1,1) NOT NULL,
	[provincial_name] [nvarchar](300) NULL,
	[provincial_activate] [bit] NULL,
	[provincial_dateCreate] [datetime] NULL,
	[provincial_dateEdit] [datetime] NULL,
	[provincial_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Provincial] PRIMARY KEY CLUSTERED 
(
	[provincial_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_content] [nvarchar](max) NULL,
	[question_dateCreate] [datetime] NULL,
	[question_dateEdit] [datetime] NULL,
	[user_id] [int] NULL,
	[question_activate] [bit] NULL,
	[question_title] [nvarchar](300) NULL,
	[question_Answer] [int] NULL,
	[question_totalComment] [int] NULL,
	[question_view] [int] NULL,
	[question_totalRate] [int] NULL,
	[question_medalCalculator] [int] NULL,
	[question_recycleBin] [bit] NULL,
	[question_userStatus] [bit] NULL,
	[question_popular] [int] NULL,
	[question_admin_recycleBin] [bit] NULL,
	[question_keywordSearch] [nvarchar](max) NULL,
	[question_totalTick] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rate_Answer]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate_Answer](
	[rateAnswer_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[answer_id] [int] NULL,
	[rateAnswer_rateStatus] [bit] NULL,
	[rateAnswer_dateCreate] [datetime] NULL,
 CONSTRAINT [PK_Rate_Answer] PRIMARY KEY CLUSTERED 
(
	[rateAnswer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rate_Post]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate_Post](
	[ratePost_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[post_id] [int] NULL,
	[ratePost_rateStatus] [bit] NULL,
	[ratePost_dateCreate] [datetime] NULL,
 CONSTRAINT [PK_Rate_Post] PRIMARY KEY CLUSTERED 
(
	[ratePost_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rate_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate_Question](
	[rateQuestion_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[question_id] [int] NULL,
	[rateQuestion_rateStatus] [bit] NULL,
	[rateQuestion_dateCreate] [datetime] NULL,
 CONSTRAINT [PK_Rate_Question] PRIMARY KEY CLUSTERED 
(
	[rateQuestion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regulations]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regulations](
	[regulations_id] [int] IDENTITY(1,1) NOT NULL,
	[regulations_name] [nvarchar](max) NULL,
	[regulations_activate] [bit] NULL,
	[regulations_recycleBin] [bit] NULL,
	[regulations_dateCreate] [datetime] NULL,
	[regulations_dateEdit] [datetime] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Regulations] PRIMARY KEY CLUSTERED 
(
	[regulations_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_User]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_User](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](300) NULL,
	[role_activate] [bit] NULL,
	[role_dateCreate] [datetime] NULL,
	[role_dateEdit] [datetime] NULL,
	[role_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Role_User] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Search]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Search](
	[search_id] [int] IDENTITY(1,1) NOT NULL,
	[search_content] [nvarchar](max) NULL,
	[search_dateCreate] [datetime] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Search] PRIMARY KEY CLUSTERED 
(
	[search_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sex_User]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_User](
	[sex_id] [int] IDENTITY(1,1) NOT NULL,
	[sex_name] [nvarchar](100) NULL,
	[sex_activate] [bit] NULL,
	[sex_dateCreate] [datetime] NULL,
	[sex_dateEdit] [datetime] NULL,
	[sex_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Sex_User] PRIMARY KEY CLUSTERED 
(
	[sex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Show_Activate_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show_Activate_Question](
	[showActivateQ_id] [int] IDENTITY(1,1) NOT NULL,
	[showActivateQ_dateCreate] [datetime] NULL,
	[question_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Show_Activate_Question] PRIMARY KEY CLUSTERED 
(
	[showActivateQ_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags_Question](
	[tagsQuestion_id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[tagsQuestion_name] [nvarchar](150) NULL,
	[tagsQuestion_dateCreate] [datetime] NULL,
 CONSTRAINT [PK_Tags_Question] PRIMARY KEY CLUSTERED 
(
	[tagsQuestion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teachnology_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachnology_Question](
	[teachnologyQuestion_id] [int] IDENTITY(1,1) NOT NULL,
	[technology_id] [int] NULL,
	[question_id] [int] NULL,
	[teachnologyQuestion_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Teachnology_Question] PRIMARY KEY CLUSTERED 
(
	[teachnologyQuestion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teachnology_User]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachnology_User](
	[technologyUser_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[technology_id] [int] NULL,
	[technology_dateCreate] [datetime] NULL,
	[technology_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Teachnology_User] PRIMARY KEY CLUSTERED 
(
	[technologyUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Technology]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Technology](
	[technology_id] [int] IDENTITY(1,1) NOT NULL,
	[technology_name] [varchar](150) NULL,
	[technology_popular] [int] NULL,
	[technology_activate] [bit] NULL,
	[technology_recycleBin] [bit] NULL,
	[technology_dateCreate] [datetime] NULL,
	[technology_dateEdit] [datetime] NULL,
	[technology_note] [nvarchar](500) NULL,
	[technology_totalQuestion] [int] NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[technology_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tick_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tick_Question](
	[tickQuestion_id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[user_id] [int] NULL,
	[tickQuestion_dateCreate] [datetime] NULL,
	[tickQuestion_recycleBin] [bit] NULL,
 CONSTRAINT [PK_Tick_Question] PRIMARY KEY CLUSTERED 
(
	[tickQuestion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_pass] [nvarchar](500) NULL,
	[user_firstName] [nvarchar](80) NULL,
	[user_lastName] [nvarchar](80) NULL,
	[user_email] [varchar](300) NULL,
	[user_token] [varchar](max) NULL,
	[role_id] [int] NULL,
	[user_code] [varchar](max) NULL,
	[user_avatar] [varchar](max) NULL,
	[user_coverImage] [varchar](max) NULL,
	[user_activate] [bit] NULL,
	[user_recycleBin] [bit] NULL,
	[user_dateCreate] [datetime] NULL,
	[user_dateEdit] [datetime] NULL,
	[user_dateLogin] [datetime] NULL,
	[user_emailAuthentication] [bit] NULL,
	[user_verifyPhoneNumber] [bit] NULL,
	[user_loginAuthentication] [bit] NULL,
	[provincial_id] [int] NULL,
	[district_id] [int] NULL,
	[commune_id] [int] NULL,
	[user_addressRemaining] [nvarchar](600) NULL,
	[sex_id] [int] NULL,
	[user_linkFacebook] [varchar](max) NULL,
	[user_linkGithub] [varchar](max) NULL,
	[user_anotherWeb] [nvarchar](max) NULL,
	[user_hobbyWork] [nvarchar](max) NULL,
	[user_hobby] [nvarchar](max) NULL,
	[user_birthday] [date] NULL,
	[user_popular] [int] NULL,
	[user_goldMedal] [int] NULL,
	[user_silverMedal] [int] NULL,
	[user_brozeMedal] [int] NULL,
	[user_vipMedal] [int] NULL,
	[user_phone] [varchar](15) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[View_Post]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View_Post](
	[viewPost_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[post_id] [int] NULL,
	[viewPost_dateCreate] [datetime] NULL,
 CONSTRAINT [PK_View_Post] PRIMARY KEY CLUSTERED 
(
	[viewPost_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[View_Question]    Script Date: 06/02/2021 1:42:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View_Question](
	[viewQuestion_id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[viewQuestion_dateCreate] [datetime] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_View_Question] PRIMARY KEY CLUSTERED 
(
	[viewQuestion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (1, N'<p>In our new requirement, there is something like a super account where all the account data can be viewed. For example, if account 1 and account 2 is selected in the user list page, users of account 1 and 2 should be combined and viewed along with search provision. Is there any way to combine more than one schema data in the apartment? or any other alternates</p>', CAST(0x0000ACB300C8E3FB AS DateTime), CAST(0x0000ACB300C8E3FB AS DateTime), 4, 1, 1, 2, 0, 0, 0, 0, 0)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (2, N'<p>In our new requirement, there is something like a super account where all the account data can be viewed. For example, if account 1 and account 2 is selected in the user list page, users of account 1 and 2 should be combined and viewed along with search provision. Is there any way to combine more than one schema data in the apartment? or any other alternates</p>', CAST(0x0000ACB300C8F9DD AS DateTime), CAST(0x0000ACB300C8F9DD AS DateTime), 4, 1, 1, 2, 0, 0, 0, 0, 1)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (3, N'<p>This package <code>react-quizzes</code>, looks not really great. Its final build not include all modules, and require importing things directly. But if you want, here''s the solution:</p><pre><code class="language-plaintext">import React, { useState } from "react";
import ReactDOM from "react-dom";
import { QuizzBuilder } from "react-quizzes";
import ToolBox from "react-quizzes/lib/ToolBox";
import "react-quizzes/lib/assets/antd.css";

const filteredToolBox = ToolBox().filter(el =&gt; el.field_name === "checkboxes_")

function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder toolBox={filteredToolBox} onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><h2>Update #1</h2><p>Added logic to override <code>ToolBox</code> label</p><pre><code class="language-plaintext">import React, { useState } from "react";
import ReactDOM from "react-dom";
import { QuizzBuilder } from "react-quizzes";
import QuizExample from "./QuizExample";
import "react-quizzes/lib/assets/antd.css";
import ToolBox from "react-quizzes/lib/ToolBox";
import { defaultMessages } from "react-quizzes/lib/translations/TranslatedText";

const filteredToolBox = ToolBox().filter(
  (el) =&gt; el.field_name === "checkboxes_"
);

const messages = {
  en: {
    ...defaultMessages.en,
    "toolbox.checkboxes.name": "Here are Checkboxes"
  }
};

function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder
        messages={messages}
        toolBox={filteredToolBox}
        onChange={setFormData}
      /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>&nbsp;</p>', CAST(0x0000ACB301491F0A AS DateTime), CAST(0x0000ACB301491F0A AS DateTime), 4, 1, 1, 3, 0, 0, 0, 0, 1)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (4, N'<p>This package <code>react-quizzes</code>, looks not really great. Its final build not include all modules, and require importing things directly. But if you want, here''s the solution:</p><pre><code class="language-javascript">import React, { useState } from "react";
import ReactDOM from "react-dom";
import { QuizzBuilder } from "react-quizzes";
import ToolBox from "react-quizzes/lib/ToolBox";
import "react-quizzes/lib/assets/antd.css";</code></pre><p>&nbsp;</p>', CAST(0x0000ACB30151C5E8 AS DateTime), CAST(0x0000ACB30151C5E8 AS DateTime), 4, 1, 1, 3, 0, 0, 0, 0, 0)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (5, N'<p>I''ve got a very simple Spring Boot application with resources at <code>/repositories</code> and <code>/persons</code>.</p><p>Here is my <code>build.gradle</code> file.</p><pre><code class="language-javascript">plugins {
    id ''org.springframework.boot'' version ''2.4.0''
    id ''io.spring.dependency-management'' version ''1.0.10.RELEASE''
    id ''java''
}

// use java 11 until keycloak is fixed
sourceCompatibility = ''11''

repositories {
    mavenCentral()
}

dependencyManagement {
    imports {
        mavenBom "org.keycloak.bom:keycloak-adapter-bom:12.0.1"
    }
}

dependencies {
    implementation ''org.springframework.boot:spring-boot-starter-web''
    implementation ''org.springframework.boot:spring-boot-starter-data-jpa''

    implementation ''org.springframework.boot:spring-boot-starter-security''
    implementation ''org.keycloak:keycloak-spring-boot-starter''

    implementation ''org.flywaydb:flyway-core''
    runtime ''org.postgresql:postgresql''

    testImplementation ''org.springframework.boot:spring-boot-starter-test''
}
</code></pre>', CAST(0x0000ACB4000443A1 AS DateTime), CAST(0x0000ACB4000443A1 AS DateTime), 4, 1, 1, 1, 0, -1, 0, 0, 1)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (6, N'<p>Here is my <code>build.gradle</code> file.</p><pre><code class="language-javascript">plugins { id ''org.springframework.boot'' version ''2.4.0'' id ''io.spring.dependency-management'' version ''1.0.10.RELEASE'' id ''java'' }</code></pre>', CAST(0x0000ACB700ECF7E6 AS DateTime), CAST(0x0000ACB700ECF7E6 AS DateTime), 5, 1, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (7, N'<p>0</p><p>glad to see you are trying to utilize the firebase''s mobile verifications but see the problem is you are trying to use the SDK, which has been programmed by the people at Firebase to perform things in a certain way.</p><p>Below example takes an assumption that you have a Firebase Firestore DB at the backend, but this can even work with RealTime DB too.</p><blockquote><p>If you can write a cloud function backend and maintain say a profile of user in a /userDetails collection where the individual document records are stored with the User UID of your Firebase Authentication, there you can store a phone number and its boolean status as phoneVerified: true or false.</p></blockquote><blockquote><p>Hence the collection in the Firestore would look like /userDetails/UserUID/ with fields phoneNumber as Number and phoneVerified:true or false</p></blockquote><p>&nbsp;</p>', CAST(0x0000ACC600ED5F9F AS DateTime), CAST(0x0000ACC600ED5F9F AS DateTime), 4, 1, 1, 9, 1, 1, 0, 0, 1)
INSERT [dbo].[Answer] ([answer_id], [answer_content], [answer_dateCreate], [answer_dateEdit], [user_id], [answer_activate], [answer_userStatus], [question_id], [answer_totalRate], [answer_medalCalculate], [answer_recycleBin], [answer_admin_recycleBin], [answer_correct]) VALUES (8, N'<pre><code class="language-javascript">sendOTP() { var self = this const phoneNumber = ''+'' + this.phone; const appVerifier = window.recaptchaVerifier; firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier) .then((confirmationResult) =&gt; { window.confirmationResult = confirmationResult; self.otpSent = true }).catch((error) =&gt; { self.errorMsg = error.code + '': '' + error.message; }); },</code></pre><p>&nbsp;</p><p>&nbsp;</p>', CAST(0x0000ACC600EEC1CC AS DateTime), CAST(0x0000ACC600EEC1CC AS DateTime), 4, 1, 1, 10, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Answer] OFF
SET IDENTITY_INSERT [dbo].[Comment_Answer] ON 

INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (1, N'I am very happy to know that you were able to find a solution solely based on Keycloak security.', CAST(0x0000ACB40007C729 AS DateTime), CAST(0x0000ACB40007C729 AS DateTime), 4, 3, 0, 1, 1)
INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (2, N' find a solution solely based on Keycloak security.', CAST(0x0000ACB400097FBD AS DateTime), CAST(0x0000ACB400097FBD AS DateTime), 4, 3, 0, 1, 1)
INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (3, N'viewed along with search provision.', CAST(0x0000ACB4000FA805 AS DateTime), CAST(0x0000ACB4000FA805 AS DateTime), 4, 2, 0, 1, 1)
INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (4, N'or any other alternates', CAST(0x0000ACB40012E2DD AS DateTime), CAST(0x0000ACB40012E2DD AS DateTime), 4, 1, 0, 1, 1)
INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (5, N'fdfd', CAST(0x0000ACB700986E49 AS DateTime), CAST(0x0000ACB700986E49 AS DateTime), 4, 4, 0, 1, 1)
INSERT [dbo].[Comment_Answer] ([commentAnswer_id], [commentAnswer_content], [commentAnswer_dateCreate], [commentAnswer_dateEdit], [user_id], [answer_id], [commentAnswer_recycleBin], [commentAnswer_activate], [commentAnswer_userStatus]) VALUES (6, N'testImplementation ''org.springframework.boot:spring-boot-starter-test''', CAST(0x0000ACB700F5AE7F AS DateTime), CAST(0x0000ACB700F5AE7F AS DateTime), 5, 5, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Comment_Answer] OFF
SET IDENTITY_INSERT [dbo].[Commune] ON 

INSERT [dbo].[Commune] ([commune_id], [commune_name], [commune_activate], [commune_dateCreate], [commune_dateEdit], [commune_recycleBin], [district_id]) VALUES (1, N'Cây Trường', 1, CAST(0x0000ACB2013D850F AS DateTime), CAST(0x0000ACB2013D850F AS DateTime), 0, 1005)
INSERT [dbo].[Commune] ([commune_id], [commune_name], [commune_activate], [commune_dateCreate], [commune_dateEdit], [commune_recycleBin], [district_id]) VALUES (2, N'Lai Uyên', 1, CAST(0x0000ACB2014069E0 AS DateTime), CAST(0x0000ACB2014069E0 AS DateTime), 0, 1005)
SET IDENTITY_INSERT [dbo].[Commune] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (1, N'Dĩ An', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 1, 1)
INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (2, N'Thuận An', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 0, 1)
INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (3, N'Quận 1', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 1, 2)
INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (4, N'Quận 2', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 0, 2)
INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (5, N'Thủ dầu một', 1, CAST(0x0000ACB200C38CA8 AS DateTime), CAST(0x0000ACB200C38CA8 AS DateTime), 0, 1)
INSERT [dbo].[District] ([district_id], [district_name], [district_activate], [district_dateCreate], [district_dateEdit], [district_recycleBin], [provincial_id]) VALUES (1005, N'Bàu Bàng', 1, CAST(0x0000ACB2013D6A74 AS DateTime), CAST(0x0000ACB2013D6A74 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Friend] ON 

INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (1, 4, 3, 1, CAST(0x0000ACB100000000 AS DateTime), CAST(0x0000ACB100000000 AS DateTime), CAST(0x0000ACB100000000 AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (2, 5, 4, 0, CAST(0x0000ACB100000000 AS DateTime), CAST(0x0000ACB100000000 AS DateTime), CAST(0x0000ACB100000000 AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (5, 6, 4, 0, CAST(0x0000ACC4010BF526 AS DateTime), CAST(0x0000ACC4010C31F5 AS DateTime), CAST(0x0000ACC400D8BC44 AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (6, 6, 7, 1, CAST(0x0000ACC400D97088 AS DateTime), CAST(0x0000ACC400D975C2 AS DateTime), CAST(0x0000ACC400D960F7 AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (7, 4, 7, 1, CAST(0x0000ACC60006E025 AS DateTime), CAST(0x0000ACC60009735D AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (8, 4, 8, 1, CAST(0x0000ACC60006E92C AS DateTime), CAST(0x0000ACC60009A046 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (9, 4, 9, 1, CAST(0x0000ACC60006EFB0 AS DateTime), CAST(0x0000ACC60009B61E AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (10, 4, 10, 1, CAST(0x0000ACC60006FC3A AS DateTime), CAST(0x0000ACC60009CD20 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (11, 4, 11, 1, CAST(0x0000ACC600070264 AS DateTime), CAST(0x0000ACC60009DF7B AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (12, 4, 12, 1, CAST(0x0000ACC6000707EA AS DateTime), CAST(0x0000ACC60009F778 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (13, 4, 13, 1, CAST(0x0000ACC600070D8C AS DateTime), CAST(0x0000ACC6000A1493 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (14, 4, 15, 1, CAST(0x0000ACC6000713E6 AS DateTime), CAST(0x0000ACC6000A9B83 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (15, 4, 16, 1, CAST(0x0000ACC6000719A8 AS DateTime), CAST(0x0000ACC6000AB41A AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (16, 4, 17, 1, CAST(0x0000ACC6000720BB AS DateTime), CAST(0x0000ACC6000ACE87 AS DateTime), CAST(0x0000ACC60007267A AS DateTime), 0)
INSERT [dbo].[Friend] ([friend_id], [userRequest_id], [userResponse_id], [friend_status], [friend_dateRequest], [friend_dateResponse], [friend_dateUnfriend], [friend_recycleBin]) VALUES (17, 4, 18, 0, CAST(0x0000ACC700017AFB AS DateTime), CAST(0x0000ACC60007267A AS DateTime), CAST(0x0000ACC700016FFA AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Friend] OFF
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (1, N'hello Long', 4, 5, CAST(0x0000ACC0017E00B2 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (2, N'hello Long', 4, 5, CAST(0x0000ACC0017F34C5 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (3, N'gì m', 5, 4, CAST(0x0000ACC0018046BD AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (4, N'mai đi chơi đê', 4, 5, CAST(0x0000ACC00180535C AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (5, N'dứt', 5, 4, CAST(0x0000ACC0018059BC AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (6, N'alo Cương', 5, 4, CAST(0x0000ACC00180776B AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (7, N'không qua nhé', 4, 3, CAST(0x0000ACC001807E6F AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (8, N'alo', 4, 5, CAST(0x0000ACC001831074 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (9, N'a', 4, 5, CAST(0x0000ACC0018405F0 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (10, N'test', 4, 5, CAST(0x0000ACC001843CF0 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (11, N'f', 4, 3, CAST(0x0000ACC00185E290 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (12, N'eee', 3, 4, CAST(0x0000ACC00185F08B AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (13, N'alo', 4, 3, CAST(0x0000ACC001864BDD AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (14, N'ê', 3, 4, CAST(0x0000ACC00186D346 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (15, N'w', 4, 3, CAST(0x0000ACC00186DA19 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (16, N'sắp dc rồi', 4, 3, CAST(0x0000ACC00187517A AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (17, N'oke thoi', 3, 4, CAST(0x0000ACC001875C4A AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (18, N'nhanh', 4, 3, CAST(0x0000ACC001882B47 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (19, N'đã qua', 3, 4, CAST(0x0000ACC00188322B AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (25, N' Chào !', 7, 6, CAST(0x0000ACC400D93ED5 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (26, N' Chào !', 6, 7, CAST(0x0000ACC400D93EE9 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (27, N' Chào !', 4, 6, CAST(0x0000ACC4010C31D8 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (28, N' Chào !', 6, 4, CAST(0x0000ACC4010C31F0 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (29, N'alo Cương hoàng', 6, 4, CAST(0x0000ACC4010C49AB AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (30, N'nghe rõ không', 6, 4, CAST(0x0000ACC4010C4F30 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (31, N'nghe rồi, đã thành true', 4, 6, CAST(0x0000ACC4010EC4F7 AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (32, N'quá tuyệt đã thành true', 6, 4, CAST(0x0000ACC4010F2166 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (33, N' Chào !', 7, 4, CAST(0x0000ACC600097358 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (34, N' Chào !', 4, 7, CAST(0x0000ACC60009735A AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (35, N' Chào !', 8, 4, CAST(0x0000ACC60009A044 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (36, N' Chào !', 4, 8, CAST(0x0000ACC60009A046 AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (37, N' Chào !', 9, 4, CAST(0x0000ACC60009B61D AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (38, N' Chào !', 4, 9, CAST(0x0000ACC60009B61E AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (39, N' Chào !', 10, 4, CAST(0x0000ACC60009CD1E AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (40, N' Chào !', 4, 10, CAST(0x0000ACC60009CD1F AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (41, N' Chào !', 11, 4, CAST(0x0000ACC60009DF79 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (42, N' Chào !', 4, 11, CAST(0x0000ACC60009DF7B AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (43, N' Chào !', 12, 4, CAST(0x0000ACC60009F776 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (44, N' Chào !', 4, 12, CAST(0x0000ACC60009F778 AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (45, N' Chào !', 13, 4, CAST(0x0000ACC6000A1492 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (46, N' Chào !', 4, 13, CAST(0x0000ACC6000A1493 AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (47, N' Chào !', 15, 4, CAST(0x0000ACC6000A9B81 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (48, N' Chào !', 4, 15, CAST(0x0000ACC6000A9B83 AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (49, N' Chào !', 16, 4, CAST(0x0000ACC6000AB419 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (50, N' Chào !', 4, 16, CAST(0x0000ACC6000AB41A AS DateTime), 0, 0)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (51, N' Chào !', 17, 4, CAST(0x0000ACC6000ACE85 AS DateTime), 0, 1)
INSERT [dbo].[Message] ([message_id], [message_content], [messageSender_id], [messageRecipients_id], [message_dateSend], [message_recycleBin], [message_status]) VALUES (52, N' Chào !', 4, 17, CAST(0x0000ACC6000ACE86 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([notification_id], [notification_content], [receiver_id], [impactUser_id], [question_id], [notification_status], [notification_dateCreate], [notification_recycleBin]) VALUES (1, N'LongHỏa Đã trả lời bài viết Accessing data from two or more schemas in a multi tenant application', 4, 5, 1, 1, CAST(0x0000ACB700ECF7E5 AS DateTime), 0)
INSERT [dbo].[Notification] ([notification_id], [notification_content], [receiver_id], [impactUser_id], [question_id], [notification_status], [notification_dateCreate], [notification_recycleBin]) VALUES (2, N'LongHỏa Đã comment bài viết Accessing data from two or more schemas in a multi tenant application', 4, 5, 1, 1, CAST(0x0000ACB700F5AE7D AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Notification] OFF
SET IDENTITY_INSERT [dbo].[Provincial] ON 

INSERT [dbo].[Provincial] ([provincial_id], [provincial_name], [provincial_activate], [provincial_dateCreate], [provincial_dateEdit], [provincial_recycleBin]) VALUES (1, N'Bình Dương', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 0)
INSERT [dbo].[Provincial] ([provincial_id], [provincial_name], [provincial_activate], [provincial_dateCreate], [provincial_dateEdit], [provincial_recycleBin]) VALUES (2, N'TP. Hồ Chí Minh', 1, CAST(0x0000ACAE00000000 AS DateTime), CAST(0x0000ACAE00000000 AS DateTime), 0)
INSERT [dbo].[Provincial] ([provincial_id], [provincial_name], [provincial_activate], [provincial_dateCreate], [provincial_dateEdit], [provincial_recycleBin]) VALUES (3, N'Bình Thuận', 1, CAST(0x0000ACB000186B25 AS DateTime), CAST(0x0000ACB000186B25 AS DateTime), 0)
INSERT [dbo].[Provincial] ([provincial_id], [provincial_name], [provincial_activate], [provincial_dateCreate], [provincial_dateEdit], [provincial_recycleBin]) VALUES (4, N'Vũng Tàu', 1, CAST(0x0000ACB00019BD4D AS DateTime), CAST(0x0000ACB00019BD4D AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Provincial] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (1, N'<p>In our new requirement, there is something like a super account where all the account data can be viewed. For example, if account 1 and account 2 is selected in the user list page, users of account 1 and 2 should be combined and viewed along with search provision. Is there any way to combine more than one schema data in the apartment? or any other alternates</p>', CAST(0x0000ACB0018A9ED6 AS DateTime), CAST(0x0000ACB0018A9ED6 AS DateTime), 4, 1, N'Accessing data from two or more schemas in a multi tenant application', 1, 1, 2, 1, -1, 0, 1, 6, 0, N'<p>In our new requirement, there is something like a super account where all the account data can be viewed. For example, if account 1 and account 2 is selected in the user list page, users of account 1 and 2 should be combined and viewed along with search provision. Is there any way to combine more than one schema data in the apartment? or any other alternates</p>Accessing data from two or more schemas in a multi tenant application', 1)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (2, N'<p>Got this error on an ubuntu server (100GB RAM) in anacondas py3.6 installation after it opened multiple files this way in a for loop (7 files * 4GB):</p><p><strong>The </strong><a href="https://stackoverflow.com/help/bounty"><strong>bounty</strong></a><strong> expires in 5 hours</strong>. Answers to this question are eligible for a +50 reputation bounty. <a href="https://stackoverflow.com/users/1601580/charlie-parker">Charlie Parker</a> is looking for a <strong>more detailed answer</strong> to this question:</p><blockquote><p>is your <code>num_workers=0</code>? (mine is and I am getting the error, where else could it be trying to open multiple files?)</p></blockquote><p>Got this error on an ubuntu server (100GB RAM) in anacondas py3.6 installation after it opened multiple files this way in a for loop (7 files * 4GB):</p><blockquote><p>temp_df = pd.read_csv(datafolder + str(file), encoding="ISO-8859-1", delimiter='';'',low_memory=False)</p></blockquote><p>this is the error, it appeared after i set</p><blockquote><p>low_memory=False</p></blockquote><p>Doesnt happen when low_memory = True</p><blockquote><p><strong>* Error in `python'': free(): invalid pointer: 0x00007fc3c90dc98e *</strong></p></blockquote><p>Anyone ideas? Thanks</p>', CAST(0x0000ACB10001507C AS DateTime), CAST(0x0000ACB10001507C AS DateTime), 3, 1, N'Error in `python'': free(): invalid pointer: 0x00007fc3c90dc98e', 0, 1, 1, 0, 0, 0, 1, 3, 0, N'<p>Got this error on an ubuntu server (100GB RAM) in anacondas py3.6 installation after it opened multiple files this way in a for loop (7 files * 4GB):</p><p><strong>The </strong><a href="https://stackoverflow.com/help/bounty"><strong>bounty</strong></a><strong> expires in 5 hours</strong>. Answers to this question are eligible for a +50 reputation bounty. <a href="https://stackoverflow.com/users/1601580/charlie-parker">Charlie Parker</a> is looking for a <strong>more detailed answer</strong> to this question:</p><blockquote><p>is your <code>num_workers=0</code>? (mine is and I am getting the error, where else could it be trying to open multiple files?)</p></blockquote><p>Got this error on an ubuntu server (100GB RAM) in anacondas py3.6 installation after it opened multiple files this way in a for loop (7 files * 4GB):</p><blockquote><p>temp_df = pd.read_csv(datafolder + str(file), encoding="ISO-8859-1", delimiter='';'',low_memory=False)</p></blockquote><p>this is the error, it appeared after i set</p><blockquote><p>low_memory=False</p></blockquote><p>Doesnt happen when low_memory = True</p><blockquote><p><strong>* Error in `python'': free(): invalid pointer: 0x00007fc3c90dc98e *</strong></p></blockquote><p>Anyone ideas? Thanks</p>Error in `python'': free(): invalid pointer: 0x00007fc3c90dc98eC#PHPangularcsshtmltest2test3', 1)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (3, N'<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>&nbsp;</p>', CAST(0x0000ACB3014884A6 AS DateTime), CAST(0x0000ACB3014884A6 AS DateTime), 4, 1, N'Limit the number of items in menu in react quizzes', 0, 1, 1, 0, 0, 0, 1, 0, 0, N'<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>&nbsp;</p>Limit the number of items in menu in react quizzesjavascripthtml', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (4, N'<p>I defined my authentication in <code>security</code> and <code>components/securitySchemes</code>. In the <a href="https://swagger.io/docs/specification/authentication/basic-authentication/#response">Swagger documentation about response</a>, they provide this example:</p><pre><code class="language-javascript">paths:
  /something:
    get:
      ...
      responses:
        ...
        ''401'':
           $ref: ''#/components/responses/UnauthorizedError''
    post:
      ...
      responses:
        ...
        ''401'':
          $ref: ''#/components/responses/UnauthorizedError''
...
components:
  responses:
    UnauthorizedError:
      description: Authentication information is missing or invalid
      headers:
        WWW_Authenticate:
          schema:
            type: string
</code></pre><p>I have a lot more paths than two, and to access any of them, the client has to be authenticated. I would like to avoid the ''401'' definition for each path, and define it once globally, if it is possible somehow.</p><p>How is it possible to use this response for each path?</p><pre><code class="language-plaintext">''401'':
  $ref: ''#/components/responses/UnauthorizedError''</code></pre>', CAST(0x0000ACC50119100F AS DateTime), CAST(0x0000ACC50119100F AS DateTime), 4, 1, N'How is it possible to avoid the duplication of 401 error response for each api path? ( OpenApi 3 )', 0, 0, 0, 0, 0, 0, 1, 0, 0, N'<p>I defined my authentication in <code>security</code> and <code>components/securitySchemes</code>. In the <a href="https://swagger.io/docs/specification/authentication/basic-authentication/#response">Swagger documentation about response</a>, they provide this example:</p><pre><code class="language-javascript">paths:
  /something:
    get:
      ...
      responses:
        ...
        ''401'':
           $ref: ''#/components/responses/UnauthorizedError''
    post:
      ...
      responses:
        ...
        ''401'':
          $ref: ''#/components/responses/UnauthorizedError''
...
components:
  responses:
    UnauthorizedError:
      description: Authentication information is missing or invalid
      headers:
        WWW_Authenticate:
          schema:
            type: string
</code></pre><p>I have a lot more paths than two, and to access any of them, the client has to be authenticated. I would like to avoid the ''401'' definition for each path, and define it once globally, if it is possible somehow.</p><p>How is it possible to use this response for each path?</p><pre><code class="language-plaintext">''401'':
  $ref: ''#/components/responses/UnauthorizedError''</code></pre>How is it possible to avoid the duplication of 401 error response for each api path? ( OpenApi 3 )C#javascriptcong nghecong nghe moi', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (5, N'<p>2</p><p>&nbsp;</p><p><strong>The </strong><a href="https://stackoverflow.com/help/bounty"><strong>bounty</strong></a><strong> expires in 51 minutes</strong>. Answers to this question are eligible for a +250 reputation bounty. <a href="https://stackoverflow.com/users/14897019/pierre-alexandre">Pierre-Alexandre</a> is looking for a <strong>canonical answer</strong>.</p><p>I am using Facebook Attribution API to collect attribution data using the Facebook graph API. I am able to make GET requests and get responses from the API but I have some trouble to build my request parameters.</p><p>If you are familiar with Facebook, there is a page available at <a href="https://business.facebook.com/attribution">https://business.facebook.com/attribution</a> where you get informations about all of your different sources channels. In my case I have around 10 different sources channels listed bellow:</p><pre><code class="language-javascript">https://graph.facebook.com/v9.0/?
    ids=&lt;BUSINESS_UNIT_ID&gt;
    &amp;fields=conversion_events
        .filter_by({"ids":["&lt;CONVERSION_EVENT_ID&gt;"]})
        .metric_scope({
            "filters":{
                "click_lookback_window":"2419200",
                "view_lookback_window":"86400",
                "visit_configuration":"include_paid_organic"
            },
            "time_period":"last_thirty_days"
        })
    {id,name,cost_per_1k_impressions,cost_per_click,cost_per_visit,net_media_cost,report_click_through_rate,report_clicks,report_impressions,report_visits,last_touch_convs,last_touch_convs_per_1k_impress,last_touch_convs_per_click,last_touch_convs_per_visit,last_touch_cpa,last_touch_revenue,last_touch_roas,total_conversions,
     metrics_breakdown
        .dimensions(["source_channel"])
        {source_channel,cost_per_1k_impressions,cost_per_click,cost_per_visit,net_media_cost,report_click_through_rate,report_clicks,report_impressions,report_visits,last_touch_convs,last_touch_convs_per_1k_impress,last_touch_convs_per_click,last_touch_convs_per_visit,last_touch_cpa,last_touch_revenue,last_touch_roas}
}
&amp;access_token=&lt;TOKEN&gt;</code></pre><p>&nbsp;</p>', CAST(0x0000ACC501196E48 AS DateTime), CAST(0x0000ACC501196E48 AS DateTime), 5, 1, N'Facebook Attribution API by custom source', 0, 0, 0, 0, 0, 0, 1, 0, 0, N'<p>2</p><p>&nbsp;</p><p><strong>The </strong><a href="https://stackoverflow.com/help/bounty"><strong>bounty</strong></a><strong> expires in 51 minutes</strong>. Answers to this question are eligible for a +250 reputation bounty. <a href="https://stackoverflow.com/users/14897019/pierre-alexandre">Pierre-Alexandre</a> is looking for a <strong>canonical answer</strong>.</p><p>I am using Facebook Attribution API to collect attribution data using the Facebook graph API. I am able to make GET requests and get responses from the API but I have some trouble to build my request parameters.</p><p>If you are familiar with Facebook, there is a page available at <a href="https://business.facebook.com/attribution">https://business.facebook.com/attribution</a> where you get informations about all of your different sources channels. In my case I have around 10 different sources channels listed bellow:</p><pre><code class="language-javascript">https://graph.facebook.com/v9.0/?
    ids=&lt;BUSINESS_UNIT_ID&gt;
    &amp;fields=conversion_events
        .filter_by({"ids":["&lt;CONVERSION_EVENT_ID&gt;"]})
        .metric_scope({
            "filters":{
                "click_lookback_window":"2419200",
                "view_lookback_window":"86400",
                "visit_configuration":"include_paid_organic"
            },
            "time_period":"last_thirty_days"
        })
    {id,name,cost_per_1k_impressions,cost_per_click,cost_per_visit,net_media_cost,report_click_through_rate,report_clicks,report_impressions,report_visits,last_touch_convs,last_touch_convs_per_1k_impress,last_touch_convs_per_click,last_touch_convs_per_visit,last_touch_cpa,last_touch_revenue,last_touch_roas,total_conversions,
     metrics_breakdown
        .dimensions(["source_channel"])
        {source_channel,cost_per_1k_impressions,cost_per_click,cost_per_visit,net_media_cost,report_click_through_rate,report_clicks,report_impressions,report_visits,last_touch_convs,last_touch_convs_per_1k_impress,last_touch_convs_per_click,last_touch_convs_per_visit,last_touch_cpa,last_touch_revenue,last_touch_roas}
}
&amp;access_token=&lt;TOKEN&gt;</code></pre><p>&nbsp;</p>Facebook Attribution API by custom sourceC#javascriptcssember', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (6, N'<p>I have migrated my code from Postgres to Mongo. In Postgres, I have used a hql query to fetch counts of same object in multiple dimensions in the same query. I am trying to achieve the same with mongo so that the number of calls to the database is reduced. I am using Spring-Data-MongoDB here.</p><p>My Document Looks like below.</p><pre><code class="language-cs">@Document
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Task {
    @Id
    String id;

    @Field(name = "name")
    String name;

    String size;

    String tag;
}
</code></pre><p>My SQL Query is something like this</p><pre><code class="language-cs">@Query(value = "select ta as tag, count(CASE WHEN t.size=''S'' THEN 1 END) as countS, count(CASE WHEN t.size=''M'' THEN 1 END) as countM, count(CASE WHEN t.size=''L'' THEN 1 END) as countL, count(CASE WHEN t.size=''XL'' THEN 1 END) as countXL from Tag ta left join UserTag ut on ta=ut.tag left join Task t on t.tag=ut.tag where ut.user=?4 and upper(ta.company)=?5 group by ta")
</code></pre><p>The above query returns me a Projection</p><pre><code class="language-cs">@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class TagCountProjection {
    public String tag;

    public int countS;

    public int countM;

    public int countL;

    public int countXL;
}
</code></pre><p>I am trying to replicate the same with Spring-Data-Mongo instead of Spring-Data-JPA.</p><p><code>int countByTagIgnoreCaseAndSize(String tag,String size);</code></p><p>But this just returns the response for 1 tag. I am looking to group by and fetch. With lot of searches, i tried to arrive at the below code, still no luck with what i exactly wanted to achieve.</p><pre><code class="language-plaintext">public List&lt;TagCountProjection&gt; getTodoCounts(String countVariable) {
GroupOperation agg = group("tag").count()
                .as(new StringBuilder().append("count").append(countVariable).toString());
        MatchOperation filter = match(new Criteria("size").is(countVariable));
        Aggregation aggregation = newAggregation(filter, agg);
        AggregationResults&lt;TagCountProjection&gt; result = mongoTemplate.aggregate(aggregation, Task.class,
                TagCountProjection.class);
......
}
</code></pre><p>The above code again has to be called 4 times for each size so that i can consolidate the result. I still have 5-6 more fields to fetch this way, so i might end up in making 10 db calls for 1 api call, which is not a good practice. How do we conver the above sql to fit into this place?</p>', CAST(0x0000ACC50119B5FA AS DateTime), CAST(0x0000ACC50119B5FA AS DateTime), 6, 1, N'Aggregate multiple count responses from Mongo DB', 0, 0, 0, 0, 0, 0, 1, 0, 0, N'<p>I have migrated my code from Postgres to Mongo. In Postgres, I have used a hql query to fetch counts of same object in multiple dimensions in the same query. I am trying to achieve the same with mongo so that the number of calls to the database is reduced. I am using Spring-Data-MongoDB here.</p><p>My Document Looks like below.</p><pre><code class="language-cs">@Document
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Task {
    @Id
    String id;

    @Field(name = "name")
    String name;

    String size;

    String tag;
}
</code></pre><p>My SQL Query is something like this</p><pre><code class="language-cs">@Query(value = "select ta as tag, count(CASE WHEN t.size=''S'' THEN 1 END) as countS, count(CASE WHEN t.size=''M'' THEN 1 END) as countM, count(CASE WHEN t.size=''L'' THEN 1 END) as countL, count(CASE WHEN t.size=''XL'' THEN 1 END) as countXL from Tag ta left join UserTag ut on ta=ut.tag left join Task t on t.tag=ut.tag where ut.user=?4 and upper(ta.company)=?5 group by ta")
</code></pre><p>The above query returns me a Projection</p><pre><code class="language-cs">@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class TagCountProjection {
    public String tag;

    public int countS;

    public int countM;

    public int countL;

    public int countXL;
}
</code></pre><p>I am trying to replicate the same with Spring-Data-Mongo instead of Spring-Data-JPA.</p><p><code>int countByTagIgnoreCaseAndSize(String tag,String size);</code></p><p>But this just returns the response for 1 tag. I am looking to group by and fetch. With lot of searches, i tried to arrive at the below code, still no luck with what i exactly wanted to achieve.</p><pre><code class="language-plaintext">public List&lt;TagCountProjection&gt; getTodoCounts(String countVariable) {
GroupOperation agg = group("tag").count()
                .as(new StringBuilder().append("count").append(countVariable).toString());
        MatchOperation filter = match(new Criteria("size").is(countVariable));
        Aggregation aggregation = newAggregation(filter, agg);
        AggregationResults&lt;TagCountProjection&gt; result = mongoTemplate.aggregate(aggregation, Task.class,
                TagCountProjection.class);
......
}
</code></pre><p>The above code again has to be called 4 times for each size so that i can consolidate the result. I still have 5-6 more fields to fetch this way, so i might end up in making 10 db calls for 1 api call, which is not a good practice. How do we conver the above sql to fit into this place?</p>Aggregate multiple count responses from Mongo DBC#công nghệ c#cong nghe', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (7, N'<p>When I run my app in localhost it works fine but when I publish it to Azure my request stop working. Getting the error : "The request was aborted: Could not create SSL/TLS secure channel."</p><p>I have an app that calls a external commercial Soap-API. The external API requires a client certificate to be passed along as I make the requests and it also needs my ip address to be whitelisted.</p><p>The commercial API have whitelisted the IP''s that I got from my app service/properties/outgoing &amp; virtual IP addresses in Azure</p><p>I''ve added my client certificate file(.p12) to a folder in my solution and when checking the files uploaded to azure I can see it there as well.</p><p>Using RestSharp, my request looks like:</p><pre><code class="language-cs">   private string RequestToBv(string pXml)
    {            
        X509Certificate2 cert = new X509Certificate2(bvCertificatePath, bvCertificatePassword);

        var client = new RestClient(mXmlApiUrl); //mXmlApiUrl = url to endpoint
        client.Timeout = -1;
        client.ClientCertificates = new X509CertificateCollection() { cert };
        var request = new RestRequest(Method.POST);
        request.AddHeader("Content-Type", "application/xml");
        request.AddParameter("application/xml", pXml, ParameterType.RequestBody);

        IRestResponse response = client.Execute(request);

        if (response.StatusCode == HttpStatusCode.OK)
        {
            return response.Content;
        }

        return "";
    }</code></pre>', CAST(0x0000ACC50119F874 AS DateTime), CAST(0x0000ACC50119F874 AS DateTime), 7, 1, N'RestRequest works local but not from azure “The request was aborted: Could not create SSL/TLS secure channel.”', 0, 0, 1, 0, 0, 0, 1, 0, 0, N'<p>When I run my app in localhost it works fine but when I publish it to Azure my request stop working. Getting the error : "The request was aborted: Could not create SSL/TLS secure channel."</p><p>I have an app that calls a external commercial Soap-API. The external API requires a client certificate to be passed along as I make the requests and it also needs my ip address to be whitelisted.</p><p>The commercial API have whitelisted the IP''s that I got from my app service/properties/outgoing &amp; virtual IP addresses in Azure</p><p>I''ve added my client certificate file(.p12) to a folder in my solution and when checking the files uploaded to azure I can see it there as well.</p><p>Using RestSharp, my request looks like:</p><pre><code class="language-cs">   private string RequestToBv(string pXml)
    {            
        X509Certificate2 cert = new X509Certificate2(bvCertificatePath, bvCertificatePassword);

        var client = new RestClient(mXmlApiUrl); //mXmlApiUrl = url to endpoint
        client.Timeout = -1;
        client.ClientCertificates = new X509CertificateCollection() { cert };
        var request = new RestRequest(Method.POST);
        request.AddHeader("Content-Type", "application/xml");
        request.AddParameter("application/xml", pXml, ParameterType.RequestBody);

        IRestResponse response = client.Execute(request);

        if (response.StatusCode == HttpStatusCode.OK)
        {
            return response.Content;
        }

        return "";
    }</code></pre>RestRequest works local but not from azure “The request was aborted: Could not create SSL/TLS secure channel.”C#c#cau hoi c# kho', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (8, N'<p>I am facing one issue where I am able to generate exe with the help of electron + angular 10+ and also able to install it. But when i run the installed application it is getting blocked by trend micro antivirus, where in other system the antivirus is not installed that let me use that installed application. I have googled and tried multiple solutions but neither of worked.</p><p>Below is my package.json file code</p><pre><code class="language-typescript">  "name": "e-chat-announcement-angular",
  "description": "CLI app",
  "author": "Me me me",
  "version": "0.0.1",
  "main": "main.js",
  "build": {
    "appId": "eChatAnnouncement",
    "productName": "ECHATANNOUNCEMENT",
    "files": [
      "**/*",
      "dist/**/*"
    ],
    "directories": {
      "output": "release",
      "buildResources": "dist"
    },
    "asar": false,
    "win": {
      "target": [
        "nsis"
      ],
      "icon": "src/icon.ico",
      "requestedExecutionLevel": "requireAdministrator"
    },
    "nsis": {
      "installerIcon": "src/icon.ico",
      "uninstallerIcon": "src/icon.ico",
      "uninstallDisplayName": "ECHATANNOUNCEMENT",
      "oneClick": false,
      "allowToChangeInstallationDirectory": true,
      "runAfterFinish": true
    }
  },
  "scripts": {
    "ng": "ng",
    "start": "ng serve",
    "build": "ng build",
    "postinstall": "install-app-deps",
    "test": "ng test",
    "lint": "ng lint",
    "e2e": "ng e2e",
    "electron-build": "ng build --prod &amp;&amp; electron .",
    "electron-package": "electron-packager .  --platform=win32 --arch=x64",
    "start:electron": "ng build --prod --base-href ./ &amp;&amp; electron .",
    "pack": "electron-builder --dir",
    "setup": "electron-builder"
  },
  "private": true,
  "dependencies": {
    "@angular/animations": "~11.0.8",
    "@angular/cdk": "^11.0.3",
    "@angular/common": "~11.0.8",
    "@angular/compiler": "~11.0.8",
    "@angular/core": "~11.0.8",
    "@angular/forms": "~11.0.8",
    "@angular/material": "^11.0.3",
    "@angular/platform-browser": "~11.0.8",
    "@angular/platform-browser-dynamic": "~11.0.8",
    "@angular/router": "~11.0.8",
    "custom-electron-titlebar": "^3.2.6",
    "jquery": "^3.5.1",
    "ngx-toastr": "^10.0.4",
    "rxjs": "~6.6.0",
    "rxjs-compat": "^6.5.5",
    "tslib": "^2.0.0",
    "zone.js": "~0.10.2"
  },
  "devDependencies": {
    "@angular-devkit/build-angular": "~0.1100.5",
    "@angular/cli": "~11.0.5",
    "@angular/compiler-cli": "~11.0.5",
    "@types/jasmine": "~3.6.0",
    "@types/node": "^12.19.13",
    "codelyzer": "^6.0.0",
    "electron": "^11.2.0",
    "electron-builder": "^22.9.1",
    "electron-packager": "^15.2.0",
    "jasmine-core": "~3.6.0",
    "jasmine-spec-reporter": "~5.0.2",
    "karma": "~5.1.1",
    "karma-chrome-launcher": "~3.1.0",
    "karma-coverage": "~2.0.3",
    "karma-jasmine": "~4.0.0",
    "karma-jasmine-html-reporter": "^1.5.0",
    "protractor": "~7.0.0",
    "ts-node": "~8.3.0",
    "tslint": "~6.1.0",
    "typescript": "~4.0.2"
  }
}</code></pre>', CAST(0x0000ACC5011A32A8 AS DateTime), CAST(0x0000ACC5011A32A8 AS DateTime), 5, 1, N'Antivirus doesn''t allow to run installed application created using angular 10+ and electron', 0, 0, 1, 0, 0, 0, 1, 0, 0, N'<p>I am facing one issue where I am able to generate exe with the help of electron + angular 10+ and also able to install it. But when i run the installed application it is getting blocked by trend micro antivirus, where in other system the antivirus is not installed that let me use that installed application. I have googled and tried multiple solutions but neither of worked.</p><p>Below is my package.json file code</p><pre><code class="language-typescript">  "name": "e-chat-announcement-angular",
  "description": "CLI app",
  "author": "Me me me",
  "version": "0.0.1",
  "main": "main.js",
  "build": {
    "appId": "eChatAnnouncement",
    "productName": "ECHATANNOUNCEMENT",
    "files": [
      "**/*",
      "dist/**/*"
    ],
    "directories": {
      "output": "release",
      "buildResources": "dist"
    },
    "asar": false,
    "win": {
      "target": [
        "nsis"
      ],
      "icon": "src/icon.ico",
      "requestedExecutionLevel": "requireAdministrator"
    },
    "nsis": {
      "installerIcon": "src/icon.ico",
      "uninstallerIcon": "src/icon.ico",
      "uninstallDisplayName": "ECHATANNOUNCEMENT",
      "oneClick": false,
      "allowToChangeInstallationDirectory": true,
      "runAfterFinish": true
    }
  },
  "scripts": {
    "ng": "ng",
    "start": "ng serve",
    "build": "ng build",
    "postinstall": "install-app-deps",
    "test": "ng test",
    "lint": "ng lint",
    "e2e": "ng e2e",
    "electron-build": "ng build --prod &amp;&amp; electron .",
    "electron-package": "electron-packager .  --platform=win32 --arch=x64",
    "start:electron": "ng build --prod --base-href ./ &amp;&amp; electron .",
    "pack": "electron-builder --dir",
    "setup": "electron-builder"
  },
  "private": true,
  "dependencies": {
    "@angular/animations": "~11.0.8",
    "@angular/cdk": "^11.0.3",
    "@angular/common": "~11.0.8",
    "@angular/compiler": "~11.0.8",
    "@angular/core": "~11.0.8",
    "@angular/forms": "~11.0.8",
    "@angular/material": "^11.0.3",
    "@angular/platform-browser": "~11.0.8",
    "@angular/platform-browser-dynamic": "~11.0.8",
    "@angular/router": "~11.0.8",
    "custom-electron-titlebar": "^3.2.6",
    "jquery": "^3.5.1",
    "ngx-toastr": "^10.0.4",
    "rxjs": "~6.6.0",
    "rxjs-compat": "^6.5.5",
    "tslib": "^2.0.0",
    "zone.js": "~0.10.2"
  },
  "devDependencies": {
    "@angular-devkit/build-angular": "~0.1100.5",
    "@angular/cli": "~11.0.5",
    "@angular/compiler-cli": "~11.0.5",
    "@types/jasmine": "~3.6.0",
    "@types/node": "^12.19.13",
    "codelyzer": "^6.0.0",
    "electron": "^11.2.0",
    "electron-builder": "^22.9.1",
    "electron-packager": "^15.2.0",
    "jasmine-core": "~3.6.0",
    "jasmine-spec-reporter": "~5.0.2",
    "karma": "~5.1.1",
    "karma-chrome-launcher": "~3.1.0",
    "karma-coverage": "~2.0.3",
    "karma-jasmine": "~4.0.0",
    "karma-jasmine-html-reporter": "^1.5.0",
    "protractor": "~7.0.0",
    "ts-node": "~8.3.0",
    "tslint": "~6.1.0",
    "typescript": "~4.0.2"
  }
}</code></pre>Antivirus doesn''t allow to run installed application created using angular 10+ and electronjavascriptcong nghe moi', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (9, N'<p>There is little information about ZeroMQ Connector, I was following the 7 video tutorials on how to interface python with a MetaTrader Terminal 4 and got no problem running them on iPython kernel just as instructed in this <a href="https://www.youtube.com/watch?v=U2VdXdm2qlM&amp;t=9s*">video</a></p><p>I have an issue is that how to check if an order has been closed by SL/TP, I am thinking one way is to get the comment as after TP or SL, in the comment, it has[tp] for example:</p><pre><code class="language-plaintext">EURUSD_Trader[tp]
</code></pre><p>Can anyone share some sample codes that I can access that to check if an order has been closed by SL/TP. I assume others may have the same problem, so I post it here.</p>', CAST(0x0000ACC5011A5D91 AS DateTime), CAST(0x0000ACC5011A5D91 AS DateTime), 4, 1, N'ZeroMQ Connector How to check if an order has been closed by SL/TP?', 1, 0, 1, 0, 0, 0, 1, 2, 0, N'<p>There is little information about ZeroMQ Connector, I was following the 7 video tutorials on how to interface python with a MetaTrader Terminal 4 and got no problem running them on iPython kernel just as instructed in this <a href="https://www.youtube.com/watch?v=U2VdXdm2qlM&amp;t=9s*">video</a></p><p>I have an issue is that how to check if an order has been closed by SL/TP, I am thinking one way is to get the comment as after TP or SL, in the comment, it has[tp] for example:</p><pre><code class="language-plaintext">EURUSD_Trader[tp]
</code></pre><p>Can anyone share some sample codes that I can access that to check if an order has been closed by SL/TP. I assume others may have the same problem, so I post it here.</p>ZeroMQ Connector How to check if an order has been closed by SL/TP?PHPphp', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (10, N'<pre><code class="language-plaintext"> sendOTP() {
        var self = this
        const phoneNumber = ''+'' + this.phone;
        const appVerifier = window.recaptchaVerifier;
        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
          .then((confirmationResult) =&gt; {
            window.confirmationResult = confirmationResult;
            self.otpSent = true
          }).catch((error) =&gt; {
            self.errorMsg = error.code + '': '' + error.message;
          });
      },
      register() {
        var self = this
        const code = this.otp;
        window.confirmationResult.confirm(code).then((result) =&gt; {
          console.log(result)
          firebase.auth().createUserWithEmailAndPassword(this.email, this.password)
            .then((userCredential) =&gt; {
              firebase.database().ref(''users'').set({
                email: this.email,
                name: this.name,
                password: this.password,
                phone: this.phone,
                userCredential: userCredential
              }, (error) =&gt; {
                if (error) {
                  // The write failed...
                  self.errorMsg = error.message
                } else {
                  self.$router.push(''/dashboard'')

                }
              });
            })
            .catch((error) =&gt; {
              self.errorMsg = error.message
            });

        }).catch((error) =&gt; {
          self.errorMsg = error.message;
        });
      }</code></pre><p>&nbsp;</p>', CAST(0x0000ACC600EE4F1E AS DateTime), CAST(0x0000ACC600EE4F1E AS DateTime), 4, 1, N'I am working on a simple registration. I planned to use email to create an account, the problem is upon submission of form, the phone number also signed in as new user.  How can I prevent that from happening? What I only need to use is the send otp feature.', 1, 0, 1, 0, 0, 0, 1, 1, 0, N'<pre><code class="language-plaintext"> sendOTP() {
        var self = this
        const phoneNumber = ''+'' + this.phone;
        const appVerifier = window.recaptchaVerifier;
        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
          .then((confirmationResult) =&gt; {
            window.confirmationResult = confirmationResult;
            self.otpSent = true
          }).catch((error) =&gt; {
            self.errorMsg = error.code + '': '' + error.message;
          });
      },
      register() {
        var self = this
        const code = this.otp;
        window.confirmationResult.confirm(code).then((result) =&gt; {
          console.log(result)
          firebase.auth().createUserWithEmailAndPassword(this.email, this.password)
            .then((userCredential) =&gt; {
              firebase.database().ref(''users'').set({
                email: this.email,
                name: this.name,
                password: this.password,
                phone: this.phone,
                userCredential: userCredential
              }, (error) =&gt; {
                if (error) {
                  // The write failed...
                  self.errorMsg = error.message
                } else {
                  self.$router.push(''/dashboard'')

                }
              });
            })
            .catch((error) =&gt; {
              self.errorMsg = error.message
            });

        }).catch((error) =&gt; {
          self.errorMsg = error.message;
        });
      }</code></pre><p>&nbsp;</p>I am working on a simple registration. I planned to use email to create an account, the problem is upon submission of form, the phone number also signed in as new user.  How can I prevent that from happening? What I only need to use is the send otp feature.javascriptjavascrip', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (11, N'<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>&nbsp;</p>', CAST(0x0000ACC601068E6A AS DateTime), CAST(0x0000ACC601068E6A AS DateTime), 4, 1, N'Limit the number of items in menu in react quizzes Cương', 0, 0, 0, 0, 0, 0, 1, 0, 0, N'<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>&nbsp;</p>Limit the number of items in menu in react quizzes Cươngjavascriptswifthtmlloi trong java', 0)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (12, N'<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>I am using react quizzes library</p>', CAST(0x0000ACC60107247D AS DateTime), CAST(0x0000ACC601395B87 AS DateTime), 4, 1, N'I am using react quizzes library', 0, 0, 2, 0, 0, 0, 1, 1, 0, N'I am using react quizzes library<p>I am using react quizzes library: <a href="https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499">https://codesandbox.io/s/react-quizzesexample-forked-2w1gj?file=/src/index.js:408-499</a><br>According to the <a href="https://github.com/hugobarragon/react-quizzes">documentation</a> we can choose just these kind of builder items from menu that we want using <code>toolBox</code>.</p><p>I want to leave just Checkboxes in the menu but i didn''t find a solution for this. Who can help?</p><pre><code class="language-plaintext">function App() {
  const [formdata, setFormData] = useState([]);

  return (
    &lt;div className="App"&gt;
      &lt;QuizzBuilder onChange={setFormData} /&gt;
    &lt;/div&gt;
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(&lt;App /&gt;, rootElement);</code></pre><p>I am using react quizzes library</p>csscssangular', 1)
INSERT [dbo].[Question] ([question_id], [question_content], [question_dateCreate], [question_dateEdit], [user_id], [question_activate], [question_title], [question_Answer], [question_totalComment], [question_view], [question_totalRate], [question_medalCalculator], [question_recycleBin], [question_userStatus], [question_popular], [question_admin_recycleBin], [question_keywordSearch], [question_totalTick]) VALUES (13, N'<p>Well.. when the e-mail arrives, e-mail client shows it correctly in HTML format. However, an HTML file is attached in the e-mail also.</p><p>That file is named, for example, <code>Attached data without title 00391.html</code>. If I open that file in browser, the e-mail body is shown.</p>', CAST(0x0000ACC6014879BD AS DateTime), CAST(0x0000ACC6014879BD AS DateTime), 11, 1, N'Changing name of automatic attached file in e-mail', 0, 0, 1, 0, 0, 0, 1, 0, 0, N'<p>Well.. when the e-mail arrives, e-mail client shows it correctly in HTML format. However, an HTML file is attached in the e-mail also.</p><p>That file is named, for example, <code>Attached data without title 00391.html</code>. If I open that file in browser, the e-mail body is shown.</p>Changing name of automatic attached file in e-mailC#angular', 0)
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Rate_Answer] ON 

INSERT [dbo].[Rate_Answer] ([rateAnswer_id], [user_id], [answer_id], [rateAnswer_rateStatus], [rateAnswer_dateCreate]) VALUES (1, 4, 5, 0, CAST(0x0000ACB700CFEC4A AS DateTime))
INSERT [dbo].[Rate_Answer] ([rateAnswer_id], [user_id], [answer_id], [rateAnswer_rateStatus], [rateAnswer_dateCreate]) VALUES (2, 4, 6, 1, CAST(0x0000ACC60015A43D AS DateTime))
INSERT [dbo].[Rate_Answer] ([rateAnswer_id], [user_id], [answer_id], [rateAnswer_rateStatus], [rateAnswer_dateCreate]) VALUES (3, 4, 7, 1, CAST(0x0000ACC600ED6889 AS DateTime))
SET IDENTITY_INSERT [dbo].[Rate_Answer] OFF
SET IDENTITY_INSERT [dbo].[Rate_Question] ON 

INSERT [dbo].[Rate_Question] ([rateQuestion_id], [user_id], [question_id], [rateQuestion_rateStatus], [rateQuestion_dateCreate]) VALUES (1, 4, 1, 1, CAST(0x0000ACB700AB3CD9 AS DateTime))
SET IDENTITY_INSERT [dbo].[Rate_Question] OFF
SET IDENTITY_INSERT [dbo].[Role_User] ON 

INSERT [dbo].[Role_User] ([role_id], [role_name], [role_activate], [role_dateCreate], [role_dateEdit], [role_recycleBin]) VALUES (1, N'Bình thường', 1, CAST(0x0000ACAC00000000 AS DateTime), CAST(0x0000ACB600000000 AS DateTime), 0)
INSERT [dbo].[Role_User] ([role_id], [role_name], [role_activate], [role_dateCreate], [role_dateEdit], [role_recycleBin]) VALUES (2, N'Nhà văn', 0, CAST(0x0000ACAC00000000 AS DateTime), CAST(0x0000ACAC00000000 AS DateTime), 0)
INSERT [dbo].[Role_User] ([role_id], [role_name], [role_activate], [role_dateCreate], [role_dateEdit], [role_recycleBin]) VALUES (3, N'Administrator', 1, CAST(0x0000ACAC00000000 AS DateTime), CAST(0x0000ACAC00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Role_User] OFF
SET IDENTITY_INSERT [dbo].[Sex_User] ON 

INSERT [dbo].[Sex_User] ([sex_id], [sex_name], [sex_activate], [sex_dateCreate], [sex_dateEdit], [sex_recycleBin]) VALUES (1, N'Nam', 1, CAST(0x0000ACAD00000000 AS DateTime), CAST(0x0000ACAD00000000 AS DateTime), 0)
INSERT [dbo].[Sex_User] ([sex_id], [sex_name], [sex_activate], [sex_dateCreate], [sex_dateEdit], [sex_recycleBin]) VALUES (2, N'Nữ', 1, CAST(0x0000ACAD00000000 AS DateTime), CAST(0x0000ACAD00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Sex_User] OFF
SET IDENTITY_INSERT [dbo].[Show_Activate_Question] ON 

INSERT [dbo].[Show_Activate_Question] ([showActivateQ_id], [showActivateQ_dateCreate], [question_id], [user_id]) VALUES (2, CAST(0x0000ACB700C5F278 AS DateTime), 2, 4)
INSERT [dbo].[Show_Activate_Question] ([showActivateQ_id], [showActivateQ_dateCreate], [question_id], [user_id]) VALUES (3, CAST(0x0000ACB700C68A13 AS DateTime), 1, 4)
SET IDENTITY_INSERT [dbo].[Show_Activate_Question] OFF
SET IDENTITY_INSERT [dbo].[Tags_Question] ON 

INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (1, 1, N'angular', CAST(0x0000ACB0018A9ED5 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (2, 1, N'html', CAST(0x0000ACB0018A9ED6 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (3, 1, N'css', CAST(0x0000ACB0018A9ED6 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (4, 1, N'test1', CAST(0x0000ACB0018A9ED6 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (5, 2, N'angular', CAST(0x0000ACB10001507B AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (6, 2, N'css', CAST(0x0000ACB10001507B AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (7, 2, N'html', CAST(0x0000ACB10001507B AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (8, 2, N'test2', CAST(0x0000ACB10001507B AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (9, 2, N'test3', CAST(0x0000ACB10001507C AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (10, 3, N'html', CAST(0x0000ACB3014884A6 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (11, 4, N'cong nghe', CAST(0x0000ACC50119100F AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (12, 4, N'cong nghe moi', CAST(0x0000ACC50119100F AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (13, 5, N'css', CAST(0x0000ACC501196E48 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (14, 5, N'ember', CAST(0x0000ACC501196E48 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (15, 6, N'công nghệ c#', CAST(0x0000ACC50119B5FA AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (16, 6, N'cong nghe', CAST(0x0000ACC50119B5FA AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (17, 7, N'c#', CAST(0x0000ACC50119F874 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (18, 7, N'cau hoi c# kho', CAST(0x0000ACC50119F874 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (19, 8, N'cong nghe moi', CAST(0x0000ACC5011A32A8 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (20, 9, N'php', CAST(0x0000ACC5011A5D91 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (21, 10, N'javascrip', CAST(0x0000ACC600EE4F1D AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (22, 3, N'html', CAST(0x0000ACC601068E69 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (23, 3, N'loi trong java', CAST(0x0000ACC601068E69 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (24, 3, N'html', CAST(0x0000ACC60107247D AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (25, 3, N'html', CAST(0x0000ACC60107247D AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (26, 3, N'loi trong java', CAST(0x0000ACC60107247D AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (30, 12, N'css', CAST(0x0000ACC601317687 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (31, 12, N'angular', CAST(0x0000ACC60131DD09 AS DateTime))
INSERT [dbo].[Tags_Question] ([tagsQuestion_id], [question_id], [tagsQuestion_name], [tagsQuestion_dateCreate]) VALUES (32, 13, N'angular', CAST(0x0000ACC6014879BC AS DateTime))
SET IDENTITY_INSERT [dbo].[Tags_Question] OFF
SET IDENTITY_INSERT [dbo].[Teachnology_Question] ON 

INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (1, 1, 1, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (2, 2, 1, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (3, 4, 1, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (4, 1, 2, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (5, 2, 2, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (6, 3, 3, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (7, 1, 4, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (8, 3, 4, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (9, 1, 5, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (10, 3, 5, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (11, 1, 6, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (12, 1, 7, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (13, 3, 8, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (14, 2, 9, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (15, 3, 10, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (16, 3, 3, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (18, 23, 3, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (19, 25, 3, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (21, 10, 12, 0)
INSERT [dbo].[Teachnology_Question] ([teachnologyQuestion_id], [technology_id], [question_id], [teachnologyQuestion_recycleBin]) VALUES (24, 1, 13, 0)
SET IDENTITY_INSERT [dbo].[Teachnology_Question] OFF
SET IDENTITY_INSERT [dbo].[Teachnology_User] ON 

INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (4, 4, 1, CAST(0x0000ACBD013346A1 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (6, 4, 3, CAST(0x0000ACBD013346A1 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (7, 7, 1, CAST(0x0000ACC70019F817 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (8, 7, 2, CAST(0x0000ACC70019F822 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (9, 7, 3, CAST(0x0000ACC70019F822 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (10, 7, 7, CAST(0x0000ACC70019F822 AS DateTime), 0)
INSERT [dbo].[Teachnology_User] ([technologyUser_id], [user_id], [technology_id], [technology_dateCreate], [technology_recycleBin]) VALUES (11, 7, 10, CAST(0x0000ACC70019F822 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Teachnology_User] OFF
SET IDENTITY_INSERT [dbo].[Technology] ON 

INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (1, N'C#', 6, 1, 0, CAST(0x0000ACAD00000000 AS DateTime), CAST(0x0000ACAD00000000 AS DateTime), N'không có', 11)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (2, N'PHP', 7, 1, 0, CAST(0x0000ACAD00000000 AS DateTime), CAST(0x0000ACAD00000000 AS DateTime), N'không có', 10)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (3, N'javascript', 25, 1, 0, CAST(0x0000ACAF00127F52 AS DateTime), CAST(0x0000ACAF00127F52 AS DateTime), N'chưa bk', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (4, N'Java', 10, 1, 0, CAST(0x0000ACAF0187A180 AS DateTime), CAST(0x0000ACAF0187A180 AS DateTime), N'chưa bk', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (5, N'python', 10, 1, 0, CAST(0x0000ACC5011B1572 AS DateTime), CAST(0x0000ACC5011B1572 AS DateTime), N'a multi-paradigm, dynamically typed, multipurpose programming language. It is designed to be quick to learn, understand, and use, and enforce a', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (6, N'android', 10, 1, 0, CAST(0x0000ACC5011B349B AS DateTime), CAST(0x0000ACC5011B349B AS DateTime), N'Google''s mobile operating system, used for programming or developing digital devices (Smartphones, Tablets, Automobiles, TVs, Wear, Glass, IoT).', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (7, N'html', 10, 1, 0, CAST(0x0000ACC5011B4419 AS DateTime), CAST(0x0000ACC5011B4419 AS DateTime), N'the markup language for creating web pages and other information to be displayed in a web browser. Questions regarding HTML should include a minimal reproducible ex…', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (8, N'jquery', 10, 1, 0, CAST(0x0000ACC5011B5301 AS DateTime), CAST(0x0000ACC5011B5301 AS DateTime), N'a JavaScript library, consider also adding the JavaScript tag. jQuery is a popular cross-browser JavaScript library that facilitates Document Object Model (DOM) traversal, event', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (9, N'c++', 10, 1, 0, CAST(0x0000ACC5011B6112 AS DateTime), CAST(0x0000ACC5011B6112 AS DateTime), N'a general-purpose programming language. It was originally designed as an extension to C and has a similar syntax, but it is now a completely different language. Use this tag for', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (10, N'css', 10, 1, 0, CAST(0x0000ACC5011B742B AS DateTime), CAST(0x0000ACC5011B742B AS DateTime), N'a representation style sheet language used for describing the look and formatting of HTML (HyperText Markup Language), XML (Extensible Markup', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (11, N'ios', 10, 1, 0, CAST(0x0000ACC5011B8321 AS DateTime), CAST(0x0000ACC5011B8321 AS DateTime), N'the mobile operating system running on the Apple iPhone, iPod touch, and iPad. Use this tag [ios] for questions related to programming on the iOS platform. Use the related tags', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (12, N'mysql', 10, 1, 0, CAST(0x0000ACC5011B8F7F AS DateTime), CAST(0x0000ACC5011B8F7F AS DateTime), N'a free, open source Relational Database Management System (RDBMS) that uses Structured Query Language (SQL). DO NOT USE this tag for other DBs such as SQL Server,', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (13, N'sql', 10, 1, 0, CAST(0x0000ACC5011B9DDE AS DateTime), CAST(0x0000ACC5011B9DDE AS DateTime), N'a language for querying databases. Questions should include code examples, table structure, sample data, and a tag for the DBMS implementation', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (14, N'node.js', 10, 1, 0, CAST(0x0000ACC5011BAC07 AS DateTime), CAST(0x0000ACC5011BAC07 AS DateTime), N'an event-based, non-blocking, asynchronous I/O runtime that uses Google''s V8 JavaScript engine and libuv library. It is used for developing', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (15, N'asp.net', 10, 1, 0, CAST(0x0000ACC5011BC600 AS DateTime), CAST(0x0000ACC5011BC600 AS DateTime), N'a Microsoft web application development framework that allows programmers to build dynamic web sites, web applications and web services. It is useful to use this tag in conjunction with the… 361545', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (16, N'arrays', 10, 1, 0, CAST(0x0000ACC5011BDC53 AS DateTime), CAST(0x0000ACC5011BDC53 AS DateTime), N'an ordered linear data structure consisting of a collection of elements (values, variables, or references), each identified by one or more indexes.', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (17, N'c', 10, 1, 0, CAST(0x0000ACC5011BEAAA AS DateTime), CAST(0x0000ACC5011BEAAA AS DateTime), N'a general-purpose programming language used for system programming (OS and embedded), libraries, games and cross-platform.', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (18, N'ruby-on-rails', 10, 1, 0, CAST(0x0000ACC5011BF937 AS DateTime), CAST(0x0000ACC5011BF937 AS DateTime), N'an open source full-stack web application framework written in Ruby. It follows the popular MVC framework model and is known for its "convention', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (19, N'json', 10, 1, 0, CAST(0x0000ACC5011C0725 AS DateTime), CAST(0x0000ACC5011C0725 AS DateTime), N'a serializable data interchange format intended to be machine and human readable. Do not use this tag for native JavaScript objects or JavaScript object literals. …', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (20, N'.net', 10, 1, 0, CAST(0x0000ACC5011C133E AS DateTime), CAST(0x0000ACC5011C133E AS DateTime), N'Do NOT use for questions about .NET Core - use [.net-core] instead. The .NET framework is a software framework designed mainly for the Microsoft Windows operating system.', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (21, N'sql-server', 10, 1, 0, CAST(0x0000ACC5011C1F08 AS DateTime), CAST(0x0000ACC5011C1F08 AS DateTime), N'a relational database management system (RDBMS). Use this tag for all SQL Server editions including Compact, Express, Azure, Fast-track,', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (22, N'objective-c', 10, 1, 0, CAST(0x0000ACC5011C2C64 AS DateTime), CAST(0x0000ACC5011C2C64 AS DateTime), N'should be used only on questions that are about Objective-C features or depend on code in the language. The tags [cocoa] and [cocoa-touch] should be used to ask about Apple''s', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (23, N'swift', 10, 1, 0, CAST(0x0000ACC5011C39F9 AS DateTime), CAST(0x0000ACC5011C39F9 AS DateTime), N'a safe, fast, and expressive general-purpose programming language developed by Apple Inc. for its platforms and Linux. Swift is open-', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (24, N'reactjs', 10, 1, 0, CAST(0x0000ACC5011C46B1 AS DateTime), CAST(0x0000ACC5011C46B1 AS DateTime), N'a JavaScript library for building user interfaces. It uses a declarative, component-based paradigm and aims to be both efficient and flexible.', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (25, N'python-3.x', 10, 1, 0, CAST(0x0000ACC5011C5625 AS DateTime), CAST(0x0000ACC5011C5625 AS DateTime), N'For questions about Python programming that are specific to version 3+ of the language. Use the more generic [python] tag on all Pytho', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (26, N'angularjs', 10, 1, 0, CAST(0x0000ACC5011C62F0 AS DateTime), CAST(0x0000ACC5011C62F0 AS DateTime), N'Use for questions about AngularJS (1.x), the open-source JavaScript framework. Do NOT use this tag for Angular 2 or later versions; instead', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (27, N'django', 10, 1, 0, CAST(0x0000ACC5011C7083 AS DateTime), CAST(0x0000ACC5011C7083 AS DateTime), N'an open-source server-side web application framework written in Python. It is designed to reduce the effort required to create complex data', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (28, N'angular', 10, 1, 0, CAST(0x0000ACC5011C7D97 AS DateTime), CAST(0x0000ACC5011C7D97 AS DateTime), N'Questions about Angular (not to be confused with AngularJS), the web framework from Google. Use this tag for Angular questions which are not specific to an individual version. For th', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (29, N'excel', 10, 1, 0, CAST(0x0000ACC5011C89CA AS DateTime), CAST(0x0000ACC5011C89CA AS DateTime), N'Only for questions on programming against Excel objects or files, or complex formula development. You may combine the Excel tag with VBA,', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (30, N'regex', 10, 1, 0, CAST(0x0000ACC5011C96FA AS DateTime), CAST(0x0000ACC5011C96FA AS DateTime), N'Regular expressions provide a declarative language to match patterns within strings. They are commonly used for string validation, parsing, and transformation. Because regular', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (31, N'ajax', 10, 1, 0, CAST(0x0000ACC5011CA59F AS DateTime), CAST(0x0000ACC5011CA59F AS DateTime), N'a technique for creating interactive website user interfaces without the traditional web page refresh or reload. It uses asynchronous data exchange', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (32, N'ruby', 10, 1, 0, CAST(0x0000ACC5011CB31C AS DateTime), CAST(0x0000ACC5011CB31C AS DateTime), N'a multi-platform open-source, dynamic object-oriented interpreted language. The [ruby] tag is for questions related to the Ruby language, including its syntax and its libraries. Ruby on Rails', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (33, N'xml', 10, 1, 0, CAST(0x0000ACC5011CBF5B AS DateTime), CAST(0x0000ACC5011CBF5B AS DateTime), N'a structured document format defining text encoding rules. When using this tag include additional tags such as programming language, tool sets, XML', 0)
INSERT [dbo].[Technology] ([technology_id], [technology_name], [technology_popular], [technology_activate], [technology_recycleBin], [technology_dateCreate], [technology_dateEdit], [technology_note], [technology_totalQuestion]) VALUES (34, N'linux', 10, 1, 0, CAST(0x0000ACC5011CCCAC AS DateTime), CAST(0x0000ACC5011CCCAC AS DateTime), N'LINUX QUESTIONS MUST BE PROGRAMMING RELATED. Use this tag only if your question relates to programming using Linux APIs or Linux-specific behavior, not just', 0)
SET IDENTITY_INSERT [dbo].[Technology] OFF
SET IDENTITY_INSERT [dbo].[Tick_Question] ON 

INSERT [dbo].[Tick_Question] ([tickQuestion_id], [question_id], [user_id], [tickQuestion_dateCreate], [tickQuestion_recycleBin]) VALUES (5, 3, 4, CAST(0x0000ACC600153730 AS DateTime), 1)
INSERT [dbo].[Tick_Question] ([tickQuestion_id], [question_id], [user_id], [tickQuestion_dateCreate], [tickQuestion_recycleBin]) VALUES (6, 1, 4, CAST(0x0000ACC6001569A8 AS DateTime), 0)
INSERT [dbo].[Tick_Question] ([tickQuestion_id], [question_id], [user_id], [tickQuestion_dateCreate], [tickQuestion_recycleBin]) VALUES (7, 12, 4, CAST(0x0000ACC60136633D AS DateTime), 1)
INSERT [dbo].[Tick_Question] ([tickQuestion_id], [question_id], [user_id], [tickQuestion_dateCreate], [tickQuestion_recycleBin]) VALUES (8, 2, 4, CAST(0x0000ACC70010E9B0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Tick_Question] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (3, N'202cb962ac59075b964b07152d234b70', N'Cương', N'Em', N'cuongembaubang@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 3, N'#IOGHTKADM-445', N'Man.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC5011ADED1 AS DateTime), 0, 0, 1, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu', N'thích nghiên cứu', CAST(0x08420B00 AS Date), 0, 0, 0, 0, 0, N'0377416054')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (4, N'202cb962ac59075b964b07152d234b70', N'Cương', N'Hoàng', N'hoangmaicuong99@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 1, N'#IOGHTKADM-445', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC7001ABE80 AS DateTime), 1, 0, 0, 1, 1005, 2, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu và phát triển', N'thích nghiên cứu máy tính', CAST(0x1C230B00 AS Date), 55, 2, 4, 7, 8, N'0377416055')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (5, N'202cb962ac59075b964b07152d234b70', N'Long', N'Hỏa', N'm@gmail.com', N'12063979-fda6-495c-b619-7091dda2d181', 1, N'#TNHUTKMGF-915', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACC001803101 AS DateTime), 0, 0, 0, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (6, N'202cb962ac59075b964b07152d234b70', N'En', N'N', N'n@gmail.com', N'6d6cb046-472b-4ecd-8601-ed26e190715a', 1, N'#LOPGTJQKP-565', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC4010EE7E0 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (7, N'202cb962ac59075b964b07152d234b70', N'C@gmail.com', N'', N'c@gmail.com', N'797792b2-470b-4d21-ad66-2869acc318c0', 1, N'#SPRDPFMSU-859', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC70019E431 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (8, N'202cb962ac59075b964b07152d234b70', N'q@gmail.com', NULL, N'q@gmail.com', N'740fbc5a-45f4-49a0-a36e-0b0594fbdeea', 1, N'#RMUGMSTLS-810', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC6000997A7 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (9, N'202cb962ac59075b964b07152d234b70', N'w@gmail.com', N'Hoàng', N'w@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 1, N'#IOGHTKADM-445', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC60009AC21 AS DateTime), 1, 0, 0, 1, 1005, 2, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu và phát triển', N'thích nghiên cứu máy tính', CAST(0x1C230B00 AS Date), 55, 2, 4, 7, 8, N'0377416055')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (10, N'202cb962ac59075b964b07152d234b70', N'e@gmail.com', N'Hỏa', N'e@gmail.com', N'12063979-fda6-495c-b619-7091dda2d181', 1, N'#TNHUTKMGF-915', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACC60009C728 AS DateTime), 0, 0, 0, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (11, N'202cb962ac59075b964b07152d234b70', N'r@gmail.com', N'N', N'r@gmail.com', N'6d6cb046-472b-4ecd-8601-ed26e190715a', 1, N'#LOPGTJQKP-565', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC6014845F4 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (12, N'202cb962ac59075b964b07152d234b70', N't@gmail.com', N'', N't@gmail.com', N'797792b2-470b-4d21-ad66-2869acc318c0', 1, N'#SPRDPFMSU-859', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC60009F197 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (13, N'202cb962ac59075b964b07152d234b70', N'y@gmail.com', NULL, N'y@gmail.com', N'740fbc5a-45f4-49a0-a36e-0b0594fbdeea', 1, N'#RMUGMSTLS-810', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC6000A0C7B AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (14, N'202cb962ac59075b964b07152d234b70', N'u@gmail.com', N'Em', N'u@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 3, N'#IOGHTKADM-445', N'Man.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC6000A76EE AS DateTime), 0, 0, 1, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu', N'thích nghiên cứu', CAST(0x08420B00 AS Date), 0, 0, 0, 0, 0, N'0377416054')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (15, N'202cb962ac59075b964b07152d234b70', N'i@gmail.com', N'Hoàng', N'i@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 1, N'#IOGHTKADM-445', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC6000A9216 AS DateTime), 1, 0, 0, 1, 1005, 2, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu và phát triển', N'thích nghiên cứu máy tính', CAST(0x1C230B00 AS Date), 55, 2, 4, 7, 8, N'0377416055')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (16, N'202cb962ac59075b964b07152d234b70', N'o@gmail.com', N'Hỏa', N'o@gmail.com', N'12063979-fda6-495c-b619-7091dda2d181', 1, N'#TNHUTKMGF-915', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACC6000AAB6A AS DateTime), 0, 0, 0, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (17, N'202cb962ac59075b964b07152d234b70', N'p@gmail.com', N'N', N'p@gmail.com', N'6d6cb046-472b-4ecd-8601-ed26e190715a', 1, N'#LOPGTJQKP-565', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC6000AC57C AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (18, N'202cb962ac59075b964b07152d234b70', N'a@gmail.com', N'', N'a@gmail.com', N'797792b2-470b-4d21-ad66-2869acc318c0', 1, N'#SPRDPFMSU-859', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D85FED AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (19, N'202cb962ac59075b964b07152d234b70', N's@gmail.com', NULL, N's@gmail.com', N'740fbc5a-45f4-49a0-a36e-0b0594fbdeea', 1, N'#RMUGMSTLS-810', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (20, N'202cb962ac59075b964b07152d234b70', N'd@gmail.com', N'Hoàng', N'd@gmail.com', N'5d2ede6a-1a0d-4b98-a90f-f1d6f8b17b54', 1, N'#IOGHTKADM-445', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACAD000AEB54 AS DateTime), CAST(0x0000ACC501149FFC AS DateTime), 1, 0, 0, 1, 1005, 2, N'Thị trấn Bàu Bàng', 1, N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'https://www.facebook.com/hoangmaicuong.99/', N'thích nghiên cứu và phát triển', N'thích nghiên cứu máy tính', CAST(0x1C230B00 AS Date), 55, 2, 4, 7, 8, N'0377416055')
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (21, N'202cb962ac59075b964b07152d234b70', N'f@gmail.com', N'Hỏa', N'f@gmail.com', N'12063979-fda6-495c-b619-7091dda2d181', 1, N'#TNHUTKMGF-915', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACB700EC88B8 AS DateTime), CAST(0x0000ACC001803101 AS DateTime), 0, 0, 0, NULL, NULL, NULL, N'Thị trấn Bàu Bàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (22, N'202cb962ac59075b964b07152d234b70', N'g@gmail.com', N'N', N'g@gmail.com', N'6d6cb046-472b-4ecd-8601-ed26e190715a', 1, N'#LOPGTJQKP-565', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC400C535FF AS DateTime), CAST(0x0000ACC4010EE7E0 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (23, N'202cb962ac59075b964b07152d234b70', N'h@gmail.com', N'', N'h@gmail.com', N'797792b2-470b-4d21-ad66-2869acc318c0', 1, N'#SPRDPFMSU-859', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D2D4E0 AS DateTime), CAST(0x0000ACC400D85FED AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[User] ([user_id], [user_pass], [user_firstName], [user_lastName], [user_email], [user_token], [role_id], [user_code], [user_avatar], [user_coverImage], [user_activate], [user_recycleBin], [user_dateCreate], [user_dateEdit], [user_dateLogin], [user_emailAuthentication], [user_verifyPhoneNumber], [user_loginAuthentication], [provincial_id], [district_id], [commune_id], [user_addressRemaining], [sex_id], [user_linkFacebook], [user_linkGithub], [user_anotherWeb], [user_hobbyWork], [user_hobby], [user_birthday], [user_popular], [user_goldMedal], [user_silverMedal], [user_brozeMedal], [user_vipMedal], [user_phone]) VALUES (24, N'202cb962ac59075b964b07152d234b70', N'j@gmail.com', NULL, N'j@gmail.com', N'740fbc5a-45f4-49a0-a36e-0b0594fbdeea', 1, N'#RMUGMSTLS-810', N'user.png', N'coverImage.png', 1, 0, CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), CAST(0x0000ACC5011D3B60 AS DateTime), 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[View_Question] ON 

INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (1, 1, CAST(0x0000AB51009E9C16 AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (2, 2, CAST(0x0000ACBF00954C6E AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (3, 9, CAST(0x0000ACC501560FD4 AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (4, 3, CAST(0x0000ACC50156188B AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (5, 8, CAST(0x0000ACC501563A53 AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (6, 7, CAST(0x0000ACC6000665C0 AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (7, 10, CAST(0x0000ACC600EE602B AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (8, 12, CAST(0x0000ACC6014948A0 AS DateTime), 4)
INSERT [dbo].[View_Question] ([viewQuestion_id], [question_id], [viewQuestion_dateCreate], [user_id]) VALUES (9, 13, CAST(0x0000ACC60149B5EF AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[View_Question] OFF
ALTER TABLE [dbo].[Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Advertisement_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Advertisement] CHECK CONSTRAINT [FK_Advertisement_User]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_User]
GO
ALTER TABLE [dbo].[Comment_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Answer_Answer] FOREIGN KEY([answer_id])
REFERENCES [dbo].[Answer] ([answer_id])
GO
ALTER TABLE [dbo].[Comment_Answer] CHECK CONSTRAINT [FK_Comment_Answer_Answer]
GO
ALTER TABLE [dbo].[Comment_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Answer_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Comment_Answer] CHECK CONSTRAINT [FK_Comment_Answer_User]
GO
ALTER TABLE [dbo].[Commune]  WITH CHECK ADD  CONSTRAINT [FK_Commune_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[Commune] CHECK CONSTRAINT [FK_Commune_District]
GO
ALTER TABLE [dbo].[Denounce_User]  WITH CHECK ADD  CONSTRAINT [FK_Denounce_User_User] FOREIGN KEY([accuser_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Denounce_User] CHECK CONSTRAINT [FK_Denounce_User_User]
GO
ALTER TABLE [dbo].[Denounce_User]  WITH CHECK ADD  CONSTRAINT [FK_Denounce_User_User1] FOREIGN KEY([discredit_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Denounce_User] CHECK CONSTRAINT [FK_Denounce_User_User1]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Provincial] FOREIGN KEY([provincial_id])
REFERENCES [dbo].[Provincial] ([provincial_id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Provincial]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User] FOREIGN KEY([userRequest_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User1] FOREIGN KEY([userResponse_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User1]
GO
ALTER TABLE [dbo].[Image_Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Image_Advertisement_Advertisement] FOREIGN KEY([advertisement_id])
REFERENCES [dbo].[Advertisement] ([advertisiment_id])
GO
ALTER TABLE [dbo].[Image_Advertisement] CHECK CONSTRAINT [FK_Image_Advertisement_Advertisement]
GO
ALTER TABLE [dbo].[Image_Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Image_Advertisement_Position_Advertisement] FOREIGN KEY([positionAdvertisement_id])
REFERENCES [dbo].[Position_Advertisement] ([positionAdvertisement_id])
GO
ALTER TABLE [dbo].[Image_Advertisement] CHECK CONSTRAINT [FK_Image_Advertisement_Position_Advertisement]
GO
ALTER TABLE [dbo].[Letters]  WITH CHECK ADD  CONSTRAINT [FK_Letters_Role_User] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_User] ([role_id])
GO
ALTER TABLE [dbo].[Letters] CHECK CONSTRAINT [FK_Letters_Role_User]
GO
ALTER TABLE [dbo].[Letters]  WITH CHECK ADD  CONSTRAINT [FK_Letters_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Letters] CHECK CONSTRAINT [FK_Letters_User]
GO
ALTER TABLE [dbo].[Letters_Idea]  WITH CHECK ADD  CONSTRAINT [FK_Letters_Idea_Role_User] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_User] ([role_id])
GO
ALTER TABLE [dbo].[Letters_Idea] CHECK CONSTRAINT [FK_Letters_Idea_Role_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([messageSender_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User1] FOREIGN KEY([messageRecipients_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User1]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Question]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_User] FOREIGN KEY([receiver_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_User]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_User1] FOREIGN KEY([impactUser_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_User1]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_User]
GO
ALTER TABLE [dbo].[Rate_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Answer_Answer] FOREIGN KEY([answer_id])
REFERENCES [dbo].[Answer] ([answer_id])
GO
ALTER TABLE [dbo].[Rate_Answer] CHECK CONSTRAINT [FK_Rate_Answer_Answer]
GO
ALTER TABLE [dbo].[Rate_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Answer_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Rate_Answer] CHECK CONSTRAINT [FK_Rate_Answer_User]
GO
ALTER TABLE [dbo].[Rate_Post]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Post_Post] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[Rate_Post] CHECK CONSTRAINT [FK_Rate_Post_Post]
GO
ALTER TABLE [dbo].[Rate_Post]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Post_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Rate_Post] CHECK CONSTRAINT [FK_Rate_Post_User]
GO
ALTER TABLE [dbo].[Rate_Question]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Rate_Question] CHECK CONSTRAINT [FK_Rate_Question_Question]
GO
ALTER TABLE [dbo].[Rate_Question]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Question_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Rate_Question] CHECK CONSTRAINT [FK_Rate_Question_User]
GO
ALTER TABLE [dbo].[Regulations]  WITH CHECK ADD  CONSTRAINT [FK_Regulations_Role_User] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_User] ([role_id])
GO
ALTER TABLE [dbo].[Regulations] CHECK CONSTRAINT [FK_Regulations_Role_User]
GO
ALTER TABLE [dbo].[Search]  WITH CHECK ADD  CONSTRAINT [FK_Search_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Search] CHECK CONSTRAINT [FK_Search_User]
GO
ALTER TABLE [dbo].[Show_Activate_Question]  WITH CHECK ADD  CONSTRAINT [FK_Show_Activate_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Show_Activate_Question] CHECK CONSTRAINT [FK_Show_Activate_Question_Question]
GO
ALTER TABLE [dbo].[Show_Activate_Question]  WITH CHECK ADD  CONSTRAINT [FK_Show_Activate_Question_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Show_Activate_Question] CHECK CONSTRAINT [FK_Show_Activate_Question_User]
GO
ALTER TABLE [dbo].[Tags_Question]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Tags_Question] CHECK CONSTRAINT [FK_Tags_Question_Question]
GO
ALTER TABLE [dbo].[Teachnology_Question]  WITH CHECK ADD  CONSTRAINT [FK_Teachnology_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Teachnology_Question] CHECK CONSTRAINT [FK_Teachnology_Question_Question]
GO
ALTER TABLE [dbo].[Teachnology_Question]  WITH CHECK ADD  CONSTRAINT [FK_Teachnology_Question_Technology] FOREIGN KEY([technology_id])
REFERENCES [dbo].[Technology] ([technology_id])
GO
ALTER TABLE [dbo].[Teachnology_Question] CHECK CONSTRAINT [FK_Teachnology_Question_Technology]
GO
ALTER TABLE [dbo].[Teachnology_User]  WITH CHECK ADD  CONSTRAINT [FK_Teachnology_User_Technology] FOREIGN KEY([technology_id])
REFERENCES [dbo].[Technology] ([technology_id])
GO
ALTER TABLE [dbo].[Teachnology_User] CHECK CONSTRAINT [FK_Teachnology_User_Technology]
GO
ALTER TABLE [dbo].[Teachnology_User]  WITH CHECK ADD  CONSTRAINT [FK_Teachnology_User_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Teachnology_User] CHECK CONSTRAINT [FK_Teachnology_User_User]
GO
ALTER TABLE [dbo].[Tick_Question]  WITH CHECK ADD  CONSTRAINT [FK_Tick_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[Tick_Question] CHECK CONSTRAINT [FK_Tick_Question_Question]
GO
ALTER TABLE [dbo].[Tick_Question]  WITH CHECK ADD  CONSTRAINT [FK_Tick_Question_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Tick_Question] CHECK CONSTRAINT [FK_Tick_Question_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Commune] FOREIGN KEY([commune_id])
REFERENCES [dbo].[Commune] ([commune_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Commune]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_District]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Provincial] FOREIGN KEY([provincial_id])
REFERENCES [dbo].[Provincial] ([provincial_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Provincial]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_User] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_User] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Sex_User] FOREIGN KEY([sex_id])
REFERENCES [dbo].[Sex_User] ([sex_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Sex_User]
GO
ALTER TABLE [dbo].[View_Post]  WITH CHECK ADD  CONSTRAINT [FK_View_Post_Post] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[View_Post] CHECK CONSTRAINT [FK_View_Post_Post]
GO
ALTER TABLE [dbo].[View_Post]  WITH CHECK ADD  CONSTRAINT [FK_View_Post_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[View_Post] CHECK CONSTRAINT [FK_View_Post_User]
GO
ALTER TABLE [dbo].[View_Question]  WITH CHECK ADD  CONSTRAINT [FK_View_Question_Question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([question_id])
GO
ALTER TABLE [dbo].[View_Question] CHECK CONSTRAINT [FK_View_Question_Question]
GO
ALTER TABLE [dbo].[View_Question]  WITH CHECK ADD  CONSTRAINT [FK_View_Question_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[View_Question] CHECK CONSTRAINT [FK_View_Question_User]
GO
USE [master]
GO
ALTER DATABASE [FivePSocialNetWork] SET  READ_WRITE 
GO
