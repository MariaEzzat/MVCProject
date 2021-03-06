USE [sschool]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/15/2022 7:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Age] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Grade] [nvarchar](max) NOT NULL,
	[level_id] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Degree] [int] NOT NULL,
	[MinDegree] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
	[level_id] [int] NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubResults]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Degree] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
 CONSTRAINT [PK_SubResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Salary] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachLevels]    Script Date: 7/15/2022 7:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachLevels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[level_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
 CONSTRAINT [PK_TeachLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220714233644_ooooooo', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220715000115_rrrrrrrrrrrrrrrrrr', N'6.0.6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'22b22d5b-9f83-4e08-a0d7-bf9f5ffb729e', N'13', N'Nader', N'NADER', NULL, NULL, 0, N'AQAAAAEAACcQAAAAECeeoUnGhr+Eo9St5KVaaXvIuNIrpiid7bN59vidS2CXcCOjPxEgzkc44qjgLvC1Bw==', N'EKYMYUTLKDBYVPDNVPOY3G56IF5MF6QI', N'7d145a17-1ef6-4953-b3c0-71f6e4dff6e8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'861436af-e7a2-490c-a3a1-a4e3eefd2060', N'13', N'Neven', N'NEVEN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEGGYJlnI3zPPF6y5fnnjJ/DrgUHWraRfKz8MaLpFRqtO3tX1wTPFkx8Z47KqvM6WbA==', N'7I2LRZ4GXZTMW26E6VOIEIARITT6CAJE', N'7a4b39f7-cbfa-4a1a-8ab0-c8f6a9c92562', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'89f982cc-78c0-40b1-b3b7-0e7981c11c15', N'12', N'Noha', N'NOHA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEBub9ncITCjl1bC116zfrRk96V3ejNa26xsdZ6ud24LwAtdZIoE/UmYNzlIAM/ntHA==', N'TGLM6L445CC6GAMDMSRQFICPAAJRL7K6', N'06e2803e-9315-4593-b0e0-3e695ff6a5db', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc66b597-58c1-4dc5-91d4-1b26c1c3fe95', N'13', N'DoDo', N'DODO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOJ87oda1SycIU/ZHzIj1KE9JjrMcnlgnXiwKsoDKlgmEP3Vq5/DOQwMvMgPCBPGTg==', N'F6DS5EP45YQPSG3MKLLBN6W2BWOCNNT5', N'e5cdf859-fe81-455a-b80c-b68b1028141f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Levels] ON 

INSERT [dbo].[Levels] ([Id], [Name]) VALUES (1, N'Prep1')
INSERT [dbo].[Levels] ([Id], [Name]) VALUES (2, N'Prep2')
INSERT [dbo].[Levels] ([Id], [Name]) VALUES (3, N'Prep3')
SET IDENTITY_INSERT [dbo].[Levels] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (1, N'Noha', N'Assuit', N'F.png', 13, N'A', 1)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (2, N'Mary', N'Assuit', N'F.png', 14, N'B', 2)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (3, N'Nancy', N'Assuit', N'F.png', 15, N'C', 3)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (4, N'Nader', N'Assuit', N'm.png', 12, N'A', 1)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (5, N'Marian', N'Assuit', N'F.png', 13, N'B', 2)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Image], [Age], [Grade], [level_id]) VALUES (6, N'Shery', N'Assuit', N'm.png', 15, N'A', 3)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (1, N'Math', 100, 50, 1, 2)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (2, N'Arabic', 100, 50, 2, 3)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (3, N'English', 100, 50, 3, 1)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (4, N'Arabic', 100, 50, 2, 1)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (5, N'Math', 100, 50, 1, 2)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (6, N'English', 100, 50, 3, 2)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (7, N'Math', 100, 50, 1, 3)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (8, N'Arabic', 100, 50, 2, 3)
INSERT [dbo].[Subjects] ([Id], [Name], [Degree], [MinDegree], [teacher_id], [level_id]) VALUES (9, N'English', 100, 50, 3, 3)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[SubResults] ON 

INSERT [dbo].[SubResults] ([Id], [Degree], [subject_id], [student_id]) VALUES (1, 90, 1, 1)
INSERT [dbo].[SubResults] ([Id], [Degree], [subject_id], [student_id]) VALUES (2, 70, 2, 2)
INSERT [dbo].[SubResults] ([Id], [Degree], [subject_id], [student_id]) VALUES (3, 60, 3, 3)
INSERT [dbo].[SubResults] ([Id], [Degree], [subject_id], [student_id]) VALUES (4, 75, 2, 4)
SET IDENTITY_INSERT [dbo].[SubResults] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (1, N'Andro', N'm.png', 7000, N'Assuit', N'Teacher')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (2, N'Shry', N'F.png', 4000, N'Minya', N'Manager')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (3, N'Noha', N'F.png', 2500, N'Assuit', N'Teacher')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (4, N'Abanob', N'm.png', 3000, N'Sohag', N'Teacher')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (5, N'bebo', N'm.png', 2000, N'ASSUIT', N'Teacher')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (1002, N'Andro', N'm.png', 3000, N'ASSUIT', N'Teacher')
INSERT [dbo].[Teachers] ([Id], [Name], [Image], [Salary], [Address], [Position]) VALUES (1003, N'Nancy', N'F.png', 5000, N'ASSUIT', N'Teacher')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[TeachLevels] ON 

INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (1, 1, 1)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (2, 2, 1)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (4, 3, 1)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (5, 1, 2)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (6, 2, 2)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (7, 3, 2)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (10, 1, 3)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (11, 2, 3)
INSERT [dbo].[TeachLevels] ([Id], [level_id], [teacher_id]) VALUES (12, 3, 3)
SET IDENTITY_INSERT [dbo].[TeachLevels] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_level_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Students_level_id] ON [dbo].[Students]
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subjects_level_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subjects_level_id] ON [dbo].[Subjects]
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subjects_teacher_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subjects_teacher_id] ON [dbo].[Subjects]
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubResults_student_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubResults_student_id] ON [dbo].[SubResults]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubResults_subject_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubResults_subject_id] ON [dbo].[SubResults]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeachLevels_level_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_TeachLevels_level_id] ON [dbo].[TeachLevels]
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeachLevels_teacher_id]    Script Date: 7/15/2022 7:29:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_TeachLevels_teacher_id] ON [dbo].[TeachLevels]
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Levels_level_id] FOREIGN KEY([level_id])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Levels_level_id]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Levels_level_id] FOREIGN KEY([level_id])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Levels_level_id]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Teachers_teacher_id] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Teachers_teacher_id]
GO
ALTER TABLE [dbo].[SubResults]  WITH CHECK ADD  CONSTRAINT [FK_SubResults_Students_student_id] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[SubResults] CHECK CONSTRAINT [FK_SubResults_Students_student_id]
GO
ALTER TABLE [dbo].[SubResults]  WITH CHECK ADD  CONSTRAINT [FK_SubResults_Subjects_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[SubResults] CHECK CONSTRAINT [FK_SubResults_Subjects_subject_id]
GO
ALTER TABLE [dbo].[TeachLevels]  WITH CHECK ADD  CONSTRAINT [FK_TeachLevels_Levels_level_id] FOREIGN KEY([level_id])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[TeachLevels] CHECK CONSTRAINT [FK_TeachLevels_Levels_level_id]
GO
ALTER TABLE [dbo].[TeachLevels]  WITH CHECK ADD  CONSTRAINT [FK_TeachLevels_Teachers_teacher_id] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[TeachLevels] CHECK CONSTRAINT [FK_TeachLevels_Teachers_teacher_id]
GO
