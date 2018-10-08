USE [BDResennasJuegos]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[PuntajeTotal] [int] NULL,
	[Avatar] [nvarchar](500) NULL,
	[Baneado] [bit] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](100) NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[FechaPublicacion] [datetime] NOT NULL,
	[Autor] [nvarchar](128) NOT NULL,
	[Post] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[Eliminado] [bit] NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComentariosDenunciados]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComentariosDenunciados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdComentario] [int] NULL,
	[Usuario] [nvarchar](128) NULL,
	[Motivo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_ComentariosDenunciados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estados]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Juegos]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juegos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Imagen] [nvarchar](500) NULL,
 CONSTRAINT [PK_Juegos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MotivosDenuncia]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivosDenuncia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_MotivosDenuncia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](200) NULL,
	[Contenido] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
	[Foto] [nvarchar](500) NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostDenunciados]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostDenunciados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPost] [int] NULL,
	[Usuario] [nvarchar](128) NULL,
	[Motivo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Denuncias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[FechaPublicacion] [datetime] NOT NULL,
	[IdCategoria] [int] NULL,
	[Autor] [nvarchar](128) NOT NULL,
	[Puntaje] [int] NULL,
	[IdEstado] [int] NOT NULL,
	[Eliminado] [bit] NULL,
	[Descripcion] [nvarchar](375) NULL,
	[IdJuego] [int] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostsTags]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostsTags](
	[IdPost] [int] NOT NULL,
	[IdTags] [int] NOT NULL,
 CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED 
(
	[IdPost] ASC,
	[IdTags] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Votos]    Script Date: 08/10/2018 06:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPost] [int] NULL,
	[Usuario] [nvarchar](128) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Votos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Administrador')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Moderadores')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Usuario')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'16e08475-d33a-4f03-83a6-870795309934', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'16e08475-d33a-4f03-83a6-870795309934', N'gastonsorati@gmail.com', 1, N'ACXhQrsGXDsGJS0tYV9IpvLv7AxTT9i+yCSDrlqKYGFDurvSSMs446FMHH6ZwL0IfQ==', N'7e540b0f-d565-4680-b8b0-f1d9fc3ef5f5', NULL, 0, 0, NULL, 1, 0, N'gastonsorati@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'1cfe9cdf-be8c-4358-ac79-94b17d614eec', N'prueba@prueba.com', 0, N'ADHpHncxA2BEF0Mm6dWIYLKry85BrvKhEJ10F/NFz9jgIdz8vVP1BLwpchL/6U+v+w==', N'3b4f2f2d-cafa-4051-a1e0-a38fc7df13f5', NULL, 0, 0, NULL, 1, 0, N'prueba@prueba.com', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'64e1242c-ae66-4d11-bc19-e99f5c51b56a', N'gaston_sorati@hotmail.com', 0, N'123456', N'93823b52-ffc9-47cf-b5c0-e98d23246ab6', NULL, 0, 0, NULL, 0, 0, N'gaston_sorati@hotmail.com', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'89b3b32b-c590-4033-838b-235d0a731583', N'as@as.com', 0, N'ALkSeyVa14U0RztjF1QxjWeaJyxc6C6LNInBZ1pB5Xi8BIzi/sVPT2fcCpdprULirQ==', N'd1a833af-ab80-49b8-9e03-14650995451b', NULL, 0, 0, NULL, 1, 0, N'as@as.com', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'a438ddf6-efe8-4c55-99e2-cd5d5c8973ec', N'sorati@arnet.com.ar', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 0, N'sorati@arnet.com.ar', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado]) VALUES (N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', N'admin@admin.com', 1, N'AEtbMxDpthx5W1yT3SVfIPkCDwyVtyUN0eaoOS8eFUCG7XDI4IcHhvMzs0uN8YH2wQ==', N'745e8231-5ef1-442e-be33-46f7937a71d0', NULL, 1, 0, NULL, 1, 0, N'admin@admin.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (1, N'PC')
INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (2, N'PS4')
INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (3, N'X360')
INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (4, N'PS3')
INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (5, N'Android')
INSERT [dbo].[Categorias] ([Id], [Categoria]) VALUES (6, N'Wii')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (21, NULL, N'asd', CAST(N'2018-10-07 01:30:35.147' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (22, NULL, N'sad', CAST(N'2018-10-07 01:31:26.840' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (23, NULL, N'asd', CAST(N'2018-10-07 01:34:19.383' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (24, NULL, N'ads', CAST(N'2018-10-07 01:34:50.977' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (25, NULL, N'asd', CAST(N'2018-10-07 01:37:36.863' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (26, NULL, N'asd', CAST(N'2018-10-07 02:10:51.193' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (27, NULL, N'sad', CAST(N'2018-10-07 02:11:35.910' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (28, NULL, N'sd', CAST(N'2018-10-07 02:12:08.977' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (29, NULL, N'asd', CAST(N'2018-10-07 02:13:45.467' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 7, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (30, NULL, N'as', CAST(N'2018-10-07 02:19:27.050' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (31, NULL, N'asd', CAST(N'2018-10-07 02:21:01.827' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 8, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (32, NULL, N'adsadad', CAST(N'2018-10-07 03:07:50.760' AS DateTime), N'16e08475-d33a-4f03-83a6-870795309934', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (33, NULL, N'Ha llegado el momento de aprender a introducir un texto en una página web, pero antes es necesario comprender cómo será interpretado este texto. Cuando un navegador lee el código HTML de una página y lo interpreta para mostrar la página, todos los espaciados múltiples, tabulados o saltos de línea que se haya incluido en los textos serán interpretados como un único espacio. ', CAST(N'2018-10-07 03:08:06.603' AS DateTime), N'16e08475-d33a-4f03-83a6-870795309934', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (34, NULL, N'ddddddddddd asdda', CAST(N'2018-10-07 05:06:03.970' AS DateTime), N'16e08475-d33a-4f03-83a6-870795309934', 2, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (35, NULL, N'prueba', CAST(N'2018-10-08 00:19:07.553' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (36, NULL, N'prueba', CAST(N'2018-10-08 00:19:17.250' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (37, NULL, N'asda', CAST(N'2018-10-08 00:35:37.510' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (38, NULL, N'asdsad', CAST(N'2018-10-08 01:19:11.913' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 7, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (39, NULL, N'sadsad', CAST(N'2018-10-08 01:19:22.823' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 7, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (40, NULL, N'sad', CAST(N'2018-10-08 02:37:16.230' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (41, NULL, N'asd', CAST(N'2018-10-08 03:06:26.590' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (42, NULL, N'asd', CAST(N'2018-10-08 03:06:31.927' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (43, NULL, N'asd', CAST(N'2018-10-08 03:06:35.387' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 9, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (44, NULL, N'adasd', CAST(N'2018-10-08 04:50:57.300' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 8, 3, 1)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
SET IDENTITY_INSERT [dbo].[ComentariosDenunciados] ON 

INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (1, 23, N'16e08475-d33a-4f03-83a6-870795309934', 1, CAST(N'2018-10-08 05:57:25.523' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ComentariosDenunciados] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (2, N'Suspendido')
INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (3, N'Eliminado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
SET IDENTITY_INSERT [dbo].[Juegos] ON 

INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen]) VALUES (4, N'Fifa 19', 2, N'/Imagenes/ImagenJuegos/5449dd68-652c-43a0-b25a-45931761fef6.jpg')
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen]) VALUES (7, N'Shadow of the Tomb Raider', 1, N'/Imagenes/ImagenJuegos/436c97e9-862b-4f7f-a451-96de69d10619.jpg')
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen]) VALUES (8, N' Assassin’s Creed: Odyssey', 1, N'/Imagenes/ImagenJuegos/758ce986-155a-4820-a7a5-ed4a76a4b8c2.jpg')
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen]) VALUES (10, N'Battlefield 5', 2, N'/Imagenes/ImagenJuegos/a8d5372e-6490-4231-ad30-559a64f9fd7d.jpeg')
SET IDENTITY_INSERT [dbo].[Juegos] OFF
SET IDENTITY_INSERT [dbo].[MotivosDenuncia] ON 

INSERT [dbo].[MotivosDenuncia] ([Id], [Descripcion]) VALUES (1, N'Contenido Inapropiado')
INSERT [dbo].[MotivosDenuncia] ([Id], [Descripcion]) VALUES (2, N'Contenido Discriminatorio')
SET IDENTITY_INSERT [dbo].[MotivosDenuncia] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (1, N'Prueba1', N'Prueba', CAST(N'2018-09-25 03:07:44.000' AS DateTime), 1, N'64e1242c-ae66-4d11-bc19-e99f5c51b56a', NULL, 1, NULL, N'Prueba 1 Prueba 1 Prueba 1 Prueba 1', 4)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (2, N'Prueba2', N' Ha llegado el momento de aprender a introducir un texto en una página web, pero antes es necesario comprender cómo será interpretado este texto. Cuando un navegador lee el código HTML de una página y lo interpreta para mostrar la página, todos los espaciados múltiples, tabulados o saltos de línea que se haya incluido en los textos serán interpretados como un único espacio. Esta característica suele sorprender (e incluso molestar) al principio, pero es innegable que esta forma de actuar es necesaria y concuerda con el carácter descriptivo de HTML.    La mejor manera de habituarse es probar, para ello proponemos los siguientes ejemplos de código que serán mostrados de la misma forma por el navegador aunque algunos contengan saltos de línea, otros tabulados entre las palabras, etc.', CAST(N'2018-09-25 03:09:28.000' AS DateTime), 1, N'64e1242c-ae66-4d11-bc19-e99f5c51b56a', NULL, 1, NULL, N' el mome', 4)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (4, N'Prueba3', N'Prueba3', CAST(N'2018-10-03 21:07:18.000' AS DateTime), 1, N'64e1242c-ae66-4d11-bc19-e99f5c51b56a', NULL, 2, NULL, N' el mome', 8)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (7, N'Prueba5', N'Prueba5', CAST(N'2018-10-03 21:19:34.000' AS DateTime), 1, N'64e1242c-ae66-4d11-bc19-e99f5c51b56a', NULL, 1, NULL, N'Prueba5', 7)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (8, N'Prueba6', N'Prueba6', CAST(N'2018-10-04 03:38:08.000' AS DateTime), 2, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', NULL, 1, NULL, N'Prueba6', 7)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (9, N'Prueba 6', N'Prueba 6', CAST(N'2018-10-06 02:37:25.510' AS DateTime), 1, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', NULL, 1, NULL, NULL, 10)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [IdCategoria], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (10, N'  ', N'   ', CAST(N'2018-10-06 21:27:46.393' AS DateTime), 1, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', NULL, 1, NULL, N'     ', 4)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (12, N'Fifa')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (13, N'Deportes')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (14, N'Accion')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (15, N'Aventura')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (16, N'Estrategia')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (17, N'Marvel')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (18, N'Spider Man')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (19, N'Sega')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (20, N'Electronic Art')
INSERT [dbo].[Tags] ([Id], [Descripcion]) VALUES (21, N' Assassin’s Creed')
SET IDENTITY_INSERT [dbo].[Tags] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_AspNetUsers] FOREIGN KEY([Autor])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_AspNetUsers]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Estados]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Post] FOREIGN KEY([Post])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Post]
GO
ALTER TABLE [dbo].[ComentariosDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosDenunciados_AspNetUsers] FOREIGN KEY([Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ComentariosDenunciados] CHECK CONSTRAINT [FK_ComentariosDenunciados_AspNetUsers]
GO
ALTER TABLE [dbo].[ComentariosDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosDenunciados_Comentarios] FOREIGN KEY([IdComentario])
REFERENCES [dbo].[Comentarios] ([Id])
GO
ALTER TABLE [dbo].[ComentariosDenunciados] CHECK CONSTRAINT [FK_ComentariosDenunciados_Comentarios]
GO
ALTER TABLE [dbo].[ComentariosDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosDenunciados_MotivosDenuncia] FOREIGN KEY([Motivo])
REFERENCES [dbo].[MotivosDenuncia] ([Id])
GO
ALTER TABLE [dbo].[ComentariosDenunciados] CHECK CONSTRAINT [FK_ComentariosDenunciados_MotivosDenuncia]
GO
ALTER TABLE [dbo].[Juegos]  WITH CHECK ADD  CONSTRAINT [FK_Juegos_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Juegos] CHECK CONSTRAINT [FK_Juegos_Categorias]
GO
ALTER TABLE [dbo].[PostDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_PostDenunciados_AspNetUsers] FOREIGN KEY([Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PostDenunciados] CHECK CONSTRAINT [FK_PostDenunciados_AspNetUsers]
GO
ALTER TABLE [dbo].[PostDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_PostDenunciados_MotivosDenuncia] FOREIGN KEY([Motivo])
REFERENCES [dbo].[MotivosDenuncia] ([Id])
GO
ALTER TABLE [dbo].[PostDenunciados] CHECK CONSTRAINT [FK_PostDenunciados_MotivosDenuncia]
GO
ALTER TABLE [dbo].[PostDenunciados]  WITH CHECK ADD  CONSTRAINT [FK_PostDenunciados_Posts] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[PostDenunciados] CHECK CONSTRAINT [FK_PostDenunciados_Posts]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_AspNetUsers] FOREIGN KEY([Autor])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_AspNetUsers]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Categorias]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Estados]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Juegos] FOREIGN KEY([IdJuego])
REFERENCES [dbo].[Juegos] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Juegos]
GO
ALTER TABLE [dbo].[PostsTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[PostsTags] CHECK CONSTRAINT [FK_PostTags_Post]
GO
ALTER TABLE [dbo].[PostsTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Tags] FOREIGN KEY([IdTags])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[PostsTags] CHECK CONSTRAINT [FK_PostTags_Tags]
GO
ALTER TABLE [dbo].[Votos]  WITH CHECK ADD  CONSTRAINT [FK_Votos_AspNetUsers] FOREIGN KEY([Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Votos] CHECK CONSTRAINT [FK_Votos_AspNetUsers]
GO
ALTER TABLE [dbo].[Votos]  WITH CHECK ADD  CONSTRAINT [FK_Votos_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Votos] CHECK CONSTRAINT [FK_Votos_Post]
GO
