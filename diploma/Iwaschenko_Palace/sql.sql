USE [master]
GO
/****** Object:  Database [Iwaschenko_Palace]    Script Date: 11/15/2019 3:44:01 PM ******/
CREATE DATABASE [Iwaschenko_Palace]
 CONTAINMENT = NONE
 COLLATE Cyrillic_General_CS_AS
GO
ALTER DATABASE [Iwaschenko_Palace] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Iwaschenko_Palace].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Iwaschenko_Palace] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET ARITHABORT OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Iwaschenko_Palace] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Iwaschenko_Palace] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Iwaschenko_Palace] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Iwaschenko_Palace] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Iwaschenko_Palace] SET  MULTI_USER 
GO
ALTER DATABASE [Iwaschenko_Palace] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Iwaschenko_Palace] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Iwaschenko_Palace] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Iwaschenko_Palace] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Iwaschenko_Palace] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Iwaschenko_Palace] SET QUERY_STORE = OFF
GO
USE [Iwaschenko_Palace]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/15/2019 3:44:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[IdDepartments] [int] NOT NULL,
	[Title] [text] COLLATE Cyrillic_General_CS_AS NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[IdDepartments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/15/2019 3:44:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[IdEvent] [int] NOT NULL,
	[IdWorkers] [int] NULL,
	[Date] [date] NULL,
	[Title] [text] COLLATE Cyrillic_General_CS_AS NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movemente]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movemente](
	[IdMovemente] [int] NOT NULL,
	[Title] [text] COLLATE Cyrillic_General_CS_AS NULL,
 CONSTRAINT [PK_Movemente] PRIMARY KEY CLUSTERED 
(
	[IdMovemente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participation]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participation](
	[IdParticipation] [int] NOT NULL,
	[IdEvent] [int] NULL,
 CONSTRAINT [PK_Participation] PRIMARY KEY CLUSTERED 
(
	[IdParticipation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[IdPhoto] [int] NOT NULL,
	[IdEvent] [int] NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[IdPhoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[IdPosition] [int] NOT NULL,
	[Title] [text] COLLATE Cyrillic_General_CS_AS NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[IdPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
	[Tittle] [text] COLLATE Cyrillic_General_CS_AS NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] NOT NULL,
	[Login] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NULL,
	[Password] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NULL,
	[Name] [text] COLLATE Cyrillic_General_CS_AS NULL,
	[Surname] [text] COLLATE Cyrillic_General_CS_AS NULL,
	[Patronymic] [text] COLLATE Cyrillic_General_CS_AS NULL,
	[Phone] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NULL,
	[Email] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NULL,
	[Date] [date] NULL,
	[IdRole] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NULL,
	[Education] [text] COLLATE Cyrillic_General_CS_AS NULL,
	[Address] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[IdVolunteer] [int] NOT NULL,
	[IdMovement] [int] NULL,
	[IdParticipation] [int] NULL,
	[IdUsers] [int] NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[IdVolunteer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 11/15/2019 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[IdWorkers] [int] NOT NULL,
	[IdDepartment] [int] NULL,
	[IdPosition] [int] NULL,
	[IdMovemente] [int] NULL,
	[IdUsers] [int] NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[IdWorkers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (1, N'Отдел по реализации молодежных проектов')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (2, N'Отдел патриотического воспитания')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (3, N'Отдел организации массовых мероприятий')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (4, N'Отдел поддержки талантливой молодёжи')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (5, N'Отдел хозяйственного обеспечения')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (6, N'Организационный отдел')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (7, N'Отдел финансовой работы')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (8, N'Отдел технического обеспечения мероприятий')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (9, N'Отдел общественных связей и информационных технологий

')
INSERT [dbo].[Department] ([IdDepartments], [Title]) VALUES (10, N'Ресурсный центр добровольчества')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (1, 1, CAST(N'2019-10-11' AS Date), N'"Диалог на равных"')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (2, 2, CAST(N'2019-12-05' AS Date), N'"Диалог с героем"')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (3, 3, CAST(N'2019-11-22' AS Date), N'Концерт группы "Нервы"')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (4, 4, CAST(N'2020-01-22' AS Date), N'Встреча участников форумной кампании')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (5, 5, CAST(N'2019-09-01' AS Date), N'Мастер-класс по целеполаганию')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (6, 6, CAST(N'2019-12-12' AS Date), N'Закрытие года добра')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (7, 7, CAST(N'2019-11-11' AS Date), N'Уроки финансовой грамотности')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (8, 8, CAST(N'2019-10-07' AS Date), N'Музыкальный конкурс "Детская волна"')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (9, 9, CAST(N'2020-01-02' AS Date), N'Мастер-класс по SMM')
INSERT [dbo].[Event] ([IdEvent], [IdWorkers], [Date], [Title]) VALUES (10, 10, CAST(N'2020-02-04' AS Date), N'Концерт "Добро в контент"')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (1, N'"Волонтеры Победы"')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (2, N'"Волонтеры-медики"')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (3, N'"Киберпатруль"')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (4, N'Добровольчество в сфере туризма')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (5, N'Добровольчество в сфере финансового просвещения')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (6, N'Корпоративное добровольчество')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (7, N'Событийное добровольчество')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (8, N'Экологическое добровольчество')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (9, N'"Лиза Алерт"')
INSERT [dbo].[Movemente] ([IdMovemente], [Title]) VALUES (10, N'Волонтеры в сфере культуры')
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (1, 1)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (2, 2)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (3, 3)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (4, 4)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (5, 5)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (6, 6)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (7, 7)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (8, 8)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (9, 9)
INSERT [dbo].[Participation] ([IdParticipation], [IdEvent]) VALUES (10, 10)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (1, 1)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (2, 2)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (3, 3)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (4, 4)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (5, 5)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (6, 6)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (7, 7)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (8, 8)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (9, 9)
INSERT [dbo].[Photo] ([IdPhoto], [IdEvent]) VALUES (10, 10)
INSERT [dbo].[Position] ([IdPosition], [Title]) VALUES (1, N'Начальник отдела')
INSERT [dbo].[Position] ([IdPosition], [Title]) VALUES (2, N'Главный специалист')
INSERT [dbo].[Position] ([IdPosition], [Title]) VALUES (3, N'Специалист')
INSERT [dbo].[Position] ([IdPosition], [Title]) VALUES (4, N'Стажер')
INSERT [dbo].[Position] ([IdPosition], [Title]) VALUES (5, N'Руководитель волонтеров')
INSERT [dbo].[Role] ([IdRole], [Tittle]) VALUES (N'А', N'Админ')
INSERT [dbo].[Role] ([IdRole], [Tittle]) VALUES (N'Б', N'Сотрудник')
INSERT [dbo].[Role] ([IdRole], [Tittle]) VALUES (N'В', N'Волонтер')
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (1, N'rogovanast', N'1234', N'Анастасия', N'Рогова', N'Сергеевна', N'89606878633', N'rogovanast@yandex.ru', CAST(N'2000-06-24' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (2, N'turkodi', N'4321', N'Диана', N'Турко', N'Владимировна', N'89510889974', N'turkodi@yandex.ru', CAST(N'2000-06-24' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (3, N'orldan', N'1234', N'Даниил', N'Орлов', N'Сергеевич', N'89191702324', N'orldan@yandex.ru', CAST(N'2002-10-08' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (4, N'alrom', N'6754', N'Роман', N'Алипенков', N'Дмитриевич', N'89524922470', N'alrom@yandex.ru', CAST(N'2000-12-15' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (5, N'dravi', N'1223', N'Виктория', N'Драчук', N'Сергеевна ', N'89045279159', N'dravi@yandex.ru', CAST(N'2000-07-21' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (6, N'mamedvik', N'3453', N'Виктория', N'Мамедова', N'Наримановна', N'89510860261', N'mamedvik@yandex.ru', CAST(N'2000-08-05' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (7, N'koban', N'4587', N'Анна', N'Кобыльских', N'Алексеевна', N'89191741200', N'koban@yandex.ru', CAST(N'1998-09-28' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (8, N'novnik', N'4532', N'Никита', N'Новиков', N'Сергеевич', N'89510874523', N'novnik@yandex.ru', CAST(N'2000-01-17' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (9, N'ogarkal', N'2456', N'Алла', N'Огаркова', N'Вячеславовна', N'89038752943', N'ogarkal@yandex.ru', CAST(N'1998-09-28' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (10, N'dobrtat', N'2345', N'Татьяна', N'Добрынина', N'Михайловна', N'89513340719', N'dobrtat@yandex.ru', CAST(N'2001-07-15' AS Date), N'В', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (11, N'zajjj', N'3546', N'Ирина', N'Зайцева', N'Николаевна', N'89510700467', N'zajjj@yandex.ru', CAST(N'1986-06-17' AS Date), N'А', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (12, N'baza', N'5445', N'Кристина', N'Баздырева', N'Геннадьевна', N'89202696702', N'baza@yandex.ru', CAST(N'1993-08-21' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (13, N'mihal', N'5564', N'Александра', N'Михайлова', N'Владимировна', N'89192193455', N'mihal@yandex.ru', CAST(N'1996-10-18' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (14, N'trofim', N'6666', N'Анна', N'Трофимова', N'Александровна', N'89202675577', N'trofim@yandex.ru', CAST(N'2000-09-05' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (15, N'antonaga', N'8888', N'Антон', N'Агарков', N'Юрьевич', N'89102150771', N'antonaga@yandex.ru', CAST(N'1989-08-05' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (16, N'ovch', N'7777', N'Анастасия', N'Овчинникова', N'Анатольевна', N'89510752227', N'ovch@yandex.ru', CAST(N'1990-02-14' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (17, N'annyou', N'3333', N'Анна', N'Яковцова', N'Николаевна', N'89050414478', N'annyou@yandex.ru', CAST(N'1995-07-21' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (18, N'ignat', N'0000', N'Анна', N'Игнатова', N'Викторовна', N'89102149158', N'ignat@yandex.ru', CAST(N'1997-08-11' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (19, N'petroj', N'3902', N'Юлия', N'Петрова', N'Андреевна', N'89207390217', N'petroj@yandex.ru', CAST(N'1985-03-14' AS Date), N'А', NULL, NULL)
INSERT [dbo].[User] ([IdUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [Email], [Date], [IdRole], [Education], [Address]) VALUES (20, N'talov', N'4297', N'Степан', N'Талов', N'Андреевич', N'89513256642', N'talov@yandex.ru', CAST(N'1995-11-28' AS Date), N'Б', NULL, NULL)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (2, 2, 2, 2)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (3, 3, 3, 3)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (4, 4, 4, 4)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (5, 5, 5, 5)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (6, 6, 6, 6)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (7, 7, 7, 7)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (8, 8, 8, 8)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (9, 9, 9, 9)
INSERT [dbo].[Volunteer] ([IdVolunteer], [IdMovement], [IdParticipation], [IdUsers]) VALUES (10, 10, 10, 10)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (1, 1, 1, 1, 11)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (2, 2, 2, 2, 12)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (3, 3, 3, 3, 13)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (4, 4, 4, 4, 14)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (5, 5, 5, 5, 15)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (6, 6, 5, 6, 16)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (7, 7, 3, 7, 17)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (8, 8, 2, 8, 18)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (9, 9, 1, 9, 19)
INSERT [dbo].[Worker] ([IdWorkers], [IdDepartment], [IdPosition], [IdMovemente], [IdUsers]) VALUES (10, 10, 4, 10, 20)
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Worker] FOREIGN KEY([IdWorkers])
REFERENCES [dbo].[Worker] ([IdWorkers])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Worker]
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[Event] ([IdEvent])
GO
ALTER TABLE [dbo].[Participation] CHECK CONSTRAINT [FK_Participation_Event]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[Event] ([IdEvent])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Event]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Movemente] FOREIGN KEY([IdMovement])
REFERENCES [dbo].[Movemente] ([IdMovemente])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Movemente]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Participation] FOREIGN KEY([IdParticipation])
REFERENCES [dbo].[Participation] ([IdParticipation])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Participation]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_User] FOREIGN KEY([IdUsers])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_User]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Department] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Department] ([IdDepartments])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Department]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Movemente] FOREIGN KEY([IdMovemente])
REFERENCES [dbo].[Movemente] ([IdMovemente])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Movemente]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Position] FOREIGN KEY([IdPosition])
REFERENCES [dbo].[Position] ([IdPosition])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Position]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_User1] FOREIGN KEY([IdUsers])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_User1]
GO
USE [master]
GO
ALTER DATABASE [Iwaschenko_Palace] SET  READ_WRITE 
GO
