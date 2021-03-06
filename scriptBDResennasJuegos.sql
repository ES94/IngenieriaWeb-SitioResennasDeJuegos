USE [BDResennasJuegos]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
	[PuntajeTotal] [int] NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[Baneado] [bit] NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Eliminado] [bit] NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[ComentariosDenunciados]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Estados]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Juegos]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juegos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Imagen] [nvarchar](500) NULL,
	[Eliminado] [bit] NULL,
 CONSTRAINT [PK_Juegos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MotivosDenuncia]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Noticias]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](200) NULL,
	[Contenido] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
	[Eliminado] [bit] NULL,
	[Foto] [nvarchar](500) NULL,
	[Descripcion] [nvarchar](375) NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostDenunciados]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Posts]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[FechaPublicacion] [datetime] NOT NULL,
	[Autor] [nvarchar](128) NOT NULL,
	[Puntaje] [int] NOT NULL,
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
/****** Object:  Table [dbo].[PostsTags]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 21/10/2018 11:16:06 p.m. ******/
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
/****** Object:  Table [dbo].[Votos]    Script Date: 21/10/2018 11:16:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPost] [int] NULL,
	[Usuario] [nvarchar](128) NULL,
	[Fecha] [datetime] NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Votos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201809221649474_InitialCreate', N'CursoKinexoASPNet.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE5FA0EF20E86ABB48ADFC7406B381DD22759236E8E407E34CB177035AA21D61245215A9D4C1A24FB617FB48FB0A4B4A942CF147A26CC5768A01061679F89DC3C343F2F0F030FFFBCF7FC73FAEE2C879862909319AB827A363D781C8C74188961337A38BEF3EB83FFEF0CDDFC65741BC727E2BE9CE381D6B89C8C47DA23439F73CE23FC11890511CFA29267841473E8E3D1060EFF4F8F89FDEC989071984CBB01C67FC2943348C61FEC13EA718F930A119886E71002322CA59CD2C4775EE400C49027C3871A7594AF0AF21822B7C317BB8837454B4719D8B28044C9E198C16AE0310C2145026EDF967026734C568394B5801881E5F12C8E816202250F4E27C4D6EDBA1E353DE216FDDB084F2334271DC13F0E44C68C8939B6FA467B7D220D3E115D3357DE1BDCEF538716F0298177DC2115380CCF07C1AA59C78E2DE562C2E48C2355D361C1590D72983FB03A75F4775C423C7BADD516551A7A363FEEFC8996611CD52384130A329888E9C876C1E85FEAFF0E5117F85687276325F9C7D78F71E0467EFBF8767EFEA3D657D65748D0256F490E204A64C36B8A8FAEF3A5EB39D2737AC9AD5DA145A61B6C42687EBDC82D5478896F4894D9BD30FAE731DAE60509608E3FA8C42369758239A66ECF32E8B22308F6055EFB5F2E4FFB7703D7DF77E10AE77E0395CE6432FF167132765F3EA138CF25AF21426C5F46A8CF71741769DE2987F37EDABA8FD32C359EAF3CE6023C92348979036A51B7B6BE3B532690E35BC5997A8876FDA5C52D5BCB5A4BC439BCC8492C5AE674329EFEBF2B5B6B88B246183979B16D7489BC199B6AC9184C14D44A25C9BD189AD1921D6BDBFF2AA781583301A6059B4E0C2FC924598C6B0EAE54F98192140BD657E0084B05521F80590A716D1D9CF01449F413F4B99B1CE28889357E7F6F08411BCCBE2399F03BBE335D8D03CFE81AF814F717A8578ABADF13E62FF2BCEE8150A2E01859FA95F02F2CFC730B60718449C0BDF87845C336386C11433B7BB04BC41F4ECB4371C5FA6F6ED964C2310C67ABF445A50BF94A46BDF444FA1F82706329D8FD226EA47BC0C919DA825A959D482A2535441D657540E6627A9A0340B9A1374CA59500DE6F5E52334BCDB97C31EBEDFB7DDE66D5A0B6A6A9CB11512FE0C114CD932163C004A618AD62360B36EECC359C8878F337DF5BD29E7F41B88B2A1596D341BF24560F8D990C31EFE6CC8C564C5CF61C0BD128BC35049CCE0ADE8F5E7ACEE392749B6EBE9D0E8E6AE99EF660D304D970B42B01FE6B340130613418CA6FCCC8773BA231A456FE4A808EB1833F4906F79AC84F5CD958DEA1E5DC20852E85CF84598700A880F02558DAC43410FC1CA1D5523D83A3AD214EE1F0A4F66E930E58D003F041136534344D56911223F4C40D4A925A9A5E516C6FB5EF1906B2E61021167D8A9091BE6FA600817A0E2230D4A9786C65ECDE2DA0DD1E0B59AC6BCCB855D8FBB12A3D8894D76F8CE06BB14FEDBAB1866BBC676609CED2AB111C018D8DB87818AB38AAD01C80797433350E9C4643050E152EDC4409B1ADB83813655F2E60CB438A2DA8EBF745E3D34F36C1E9477BFADB7AA6B0FB6D9D0C7819966E17BB23694B580A96A9E97735E095754733863728AF31911AEAE6C221C7C06693364B3F677B57EA8D70E221B511BE0DAD03A40C595A002A44CA81EC295B1BC56E98417D103B68CBBB5C28AB55F82ADD9808A5DBF1AAD119A2F5065E3B43A7D543DABAC413172ABC3420D476310F2E2D5ECB885524C7159553136BE701F6FB8D63131182D0AEAF05C0D4A2A3B33B8964AD3ECD692CE21EBE3926DA525C97D3268A9ECCCE05A1236DAAD248D53D0C32DD84A45CD2D7CA0C956463AAADDA6AA1B7B45DE9428187B8604ABF12D4892102D6B0957A2C499896CABEF66FD1390E202C3F389260FA992B6E244710A9650AA65AC99A4D7614AE825A0600E789C671AC40A99766F352CFF25CBFAF6A90E62B90F94D4FCB788F19A2EF21B3BAEEA9208A46BD6CF98FB3579305D6305FAE60E4F8303114835F1FB298EB21899DD2C73EBE216AFDEBE285111C69E24BFE246293A539CDDE600580D8F3A35061DAACA97D97CB8CC1026A5979E685DED26EFD48C5206ABEA28A600D6DE86CFE4D46C3064B2D7D87FC43A115E678E8954953A8028EA8951CB7650C06A75F6A8CD84943A66B3C61E51CA3AA9434A553DA4ACE7963484AC576C8467D0A89EC29E839A4D5247576BED9135792575684DF506D81A99E53A7B544DEA491D58536D8FBDCE439197D203DEC58C67992DB7B1E2D0BBDD3E66C0789D7571986DB076B75F07AA15F7C412B7F70A98283F489B329EFCB6B4A922E2B19D4D1930CCAB50E36EBCB908B55EE89B311B17DE8D85BEEDC2DF8CD7CF725FD53E94E39F4C5271AF8E81D2716F2C8E5E168F6EE4B35841E23AA51AD926FF42288C479C6034FB3D9A4621E44B7A49700B50B8808416491EEEE9F1C9A9F462E7705ECF78840491E6E86A7A42D31CB31DE46BA16790FA4F2055B327B67861B2065502D3372880AB89FBEFBCD5791EE3E0BFF2E223E7867C46E1EF19AB784C33E8FCA966830E93716FF1C6A312F4CF37F178C25EE537FFFA52343D72EE53369DCE9D6349D19B0C7FF349452F698AA65B48B3F1438BB73BDB1A2F17B4A8D26CD9FCA1C23CA4833C5228A5FC7B0C56DFF6154DFB10612B44CD6383A1F00651A1E931C12658C6870401FBA4F943827E9DD53F2CD84434E3A38210F507939F14D82F4365CB3DEE439A63D32E96A45CCF9D29D95BE567EE7B6F5232B7B79AE86A76760FB84133B0B77351DE5866F3605BA726717930EC7DDAFDAB672B1F4A82F2DA69DF6F5EF22E53915BAE98FE5219C8079033A7C901DA7F9EF1AE6DCD14073EF064CD7ED9C407666C629BDF7FCEF0AE8DCD14203E7063EB95197C60B6B6AFFD73CF9666BD85EE3DCF574D5932DCE7E8A2C85D79BC45C89D1DFFE7981941E15116CF2FF589636D49AF1D0CD72466A6E68C3599B1327114BE0A453BDB7E7D151B7E6B67054D3B5B439E671B6FB1FEB7F21634EDBC0DD993FBC840D6E62FEAB2C23BD6B1B684AAB79471DCE84947827B97CFDA7A39FF96128C07514A63F6186E97DF4E3EF1202A1972EAF4C81F562F8AD9DE59FB1B8E6CFF26E1720DC1FFA223827E63D7AC686ED002979BB72451492245686E210501DB522F521A2E804F59350F40E7EFC7F3A01EBF0699C3E006DD6734C928EB328CE75123E0C59D8036FE79927453E6F17DC2BFC8105D6062863C707F8F7ECAC228A8E4BED6C4840C10DCBB10E15E3E9694877D972F15D21D469640427D9553F408E3246260E41ECDC033DC4436667E1FE112F82FEB08A009A47B209A6A1F5F8660998298088C757BF6C96C3888573FFC1F9577764BCA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Administrador')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Moderadores')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Usuario')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado], [IdEstado]) VALUES (N'1cfe9cdf-be8c-4358-ac79-94b17d614eec', N'prueba@prueba.com', 0, N'ADHpHncxA2BEF0Mm6dWIYLKry85BrvKhEJ10F/NFz9jgIdz8vVP1BLwpchL/6U+v+w==', N'3b4f2f2d-cafa-4051-a1e0-a38fc7df13f5', NULL, 0, 0, NULL, 1, 0, N'prueba@prueba.com', 0, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado], [IdEstado]) VALUES (N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', N'gastonsorati@gmail.com', 1, N'AJuz4wGuc7tkcsCIiURJPV365j6cQElmOgyElSrc1PL9rHnO+HPAZ4qubg2imzr0cQ==', N'a257b838-cbc2-4f7f-9ce2-15672b3d38c4', NULL, 0, 0, NULL, 1, 0, N'gastonsorati@gmail.com', 11, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado], [IdEstado]) VALUES (N'89b3b32b-c590-4033-838b-235d0a731583', N'as@as.com', 0, N'ALkSeyVa14U0RztjF1QxjWeaJyxc6C6LNInBZ1pB5Xi8BIzi/sVPT2fcCpdprULirQ==', N'd1a833af-ab80-49b8-9e03-14650995451b', NULL, 0, 0, NULL, 1, 0, N'as@as.com', 0, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado], [IdEstado]) VALUES (N'a438ddf6-efe8-4c55-99e2-cd5d5c8973ec', N'sorati@arnet.com.ar', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 0, N'sorati@arnet.com.ar', 0, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PuntajeTotal], [Avatar], [Baneado], [IdEstado]) VALUES (N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', N'admin@admin.com', 1, N'AEtbMxDpthx5W1yT3SVfIPkCDwyVtyUN0eaoOS8eFUCG7XDI4IcHhvMzs0uN8YH2wQ==', N'745e8231-5ef1-442e-be33-46f7937a71d0', NULL, 1, 0, NULL, 1, 0, N'admin@admin.com', 19, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (1, 0, N'PC')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (2, 0, N'PS4')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (3, 0, N'X360')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (4, 0, N'PS3')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (5, 0, N'Android')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (6, 0, N'Wii')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (7, 0, N'Deportes')
INSERT [dbo].[Categorias] ([Id], [Eliminado], [Descripcion]) VALUES (8, 0, N'Estrategia')
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
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (45, NULL, N'prueba', CAST(N'2018-10-08 19:28:23.723' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 2, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (46, NULL, N'asdasd', CAST(N'2018-10-08 19:28:30.080' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 2, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (47, NULL, N'dddddaaaaa', CAST(N'2018-10-17 20:20:42.363' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (48, NULL, N'ddddaaaaaaaaaa', CAST(N'2018-10-17 20:20:48.953' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 1, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (49, NULL, N'sadsa', CAST(N'2018-10-20 20:11:37.957' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (50, NULL, N'asd', CAST(N'2018-10-20 20:11:42.020' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (51, NULL, N'sad', CAST(N'2018-10-20 21:19:36.887' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (52, NULL, N'gg', CAST(N'2018-10-20 21:19:45.917' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 10, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (53, NULL, N'prueba', CAST(N'2018-10-21 02:11:06.720' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (54, NULL, N'prueba 2', CAST(N'2018-10-21 02:11:16.423' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (55, NULL, N'sadads', CAST(N'2018-10-21 04:02:12.523' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (56, NULL, N'sad', CAST(N'2018-10-21 04:02:19.327' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (57, NULL, N'asdasd', CAST(N'2018-10-21 04:06:41.180' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (58, NULL, N'asd', CAST(N'2018-10-21 04:08:29.387' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (59, NULL, N'sd', CAST(N'2018-10-21 04:12:52.453' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (60, NULL, N'dsf', CAST(N'2018-10-21 04:16:42.800' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (61, NULL, N'asd', CAST(N'2018-10-21 04:20:44.823' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (62, NULL, N'asd', CAST(N'2018-10-21 04:28:45.850' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (63, NULL, N'asd', CAST(N'2018-10-21 04:29:00.577' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (64, NULL, N'asd', CAST(N'2018-10-21 04:30:05.280' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (65, NULL, N'dsa', CAST(N'2018-10-21 04:30:53.443' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (66, NULL, N'asd', CAST(N'2018-10-21 04:32:33.660' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (67, NULL, N'asd', CAST(N'2018-10-21 04:33:06.630' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (68, NULL, N'add', CAST(N'2018-10-21 04:33:21.720' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (69, NULL, N'dasd', CAST(N'2018-10-21 04:33:24.823' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (70, NULL, N'asd', CAST(N'2018-10-21 04:36:52.367' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (71, NULL, N'dsa', CAST(N'2018-10-21 04:39:33.167' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 11, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (72, NULL, N'asd', CAST(N'2018-10-21 22:40:13.280' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 8, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (73, NULL, N'asd', CAST(N'2018-10-21 22:40:18.670' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 8, 1, NULL)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (74, NULL, N'asdasdsadsadas adsdasdasd sadsadasdasad asdasdasd asdasdasdas asdasd', CAST(N'2018-10-21 22:40:29.363' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 8, 3, 1)
INSERT [dbo].[Comentarios] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Post], [IdEstado], [Eliminado]) VALUES (75, NULL, N'fsdf', CAST(N'2018-10-21 22:54:05.197' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 7, 3, 1)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
SET IDENTITY_INSERT [dbo].[ComentariosDenunciados] ON 

INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (2, 27, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 2, CAST(N'2018-10-08 19:29:05.417' AS DateTime), NULL)
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (3, 36, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 2, CAST(N'2018-10-17 20:22:59.363' AS DateTime), N'dadsd')
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (4, 36, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 2, CAST(N'2018-10-17 20:24:59.087' AS DateTime), N'dadsd')
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (5, 48, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-17 20:27:15.227' AS DateTime), N'dsa')
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (6, 47, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-17 20:29:35.797' AS DateTime), N'as')
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (7, 23, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-21 05:12:50.360' AS DateTime), N'ds')
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (8, 26, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-21 06:27:37.377' AS DateTime), NULL)
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (9, 49, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-21 22:44:05.530' AS DateTime), NULL)
INSERT [dbo].[ComentariosDenunciados] ([Id], [IdComentario], [Usuario], [Motivo], [Fecha], [Descripcion]) VALUES (10, 49, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 1, CAST(N'2018-10-21 22:44:11.447' AS DateTime), N'j')
SET IDENTITY_INSERT [dbo].[ComentariosDenunciados] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (2, N'Suspendido')
INSERT [dbo].[Estados] ([Id], [Descripcion]) VALUES (3, N'Eliminado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
SET IDENTITY_INSERT [dbo].[Juegos] ON 

INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen], [Eliminado]) VALUES (4, N'Fifa 19', 2, N'/Imagenes/ImagenJuegos/5449dd68-652c-43a0-b25a-45931761fef6.jpg', NULL)
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen], [Eliminado]) VALUES (7, N'Shadow of the Tomb Raider', 1, N'/Imagenes/ImagenJuegos/436c97e9-862b-4f7f-a451-96de69d10619.jpg', NULL)
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen], [Eliminado]) VALUES (8, N' Assassin’s Creed: Odyssey', 1, N'/Imagenes/ImagenJuegos/758ce986-155a-4820-a7a5-ed4a76a4b8c2.jpg', NULL)
INSERT [dbo].[Juegos] ([Id], [Descripcion], [IdCategoria], [Imagen], [Eliminado]) VALUES (10, N'Battlefield 5', 2, N'/Imagenes/ImagenJuegos/a8d5372e-6490-4231-ad30-559a64f9fd7d.jpeg', NULL)
SET IDENTITY_INSERT [dbo].[Juegos] OFF
SET IDENTITY_INSERT [dbo].[MotivosDenuncia] ON 

INSERT [dbo].[MotivosDenuncia] ([Id], [Descripcion]) VALUES (1, N'Contenido Inapropiado')
INSERT [dbo].[MotivosDenuncia] ([Id], [Descripcion]) VALUES (2, N'Contenido Discriminatorio')
SET IDENTITY_INSERT [dbo].[MotivosDenuncia] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (1, N'Prueba1', N'Prueba', CAST(N'2018-09-25 03:07:44.000' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 4, 1, NULL, N'Prueba 1 Prueba 1 Prueba 1 Prueba 1', 4)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (2, N'Prueba2', N' Ha llegado el momento de aprender a introducir un texto en una página web, pero antes es necesario comprender cómo será interpretado este texto. Cuando un navegador lee el código HTML de una página y lo interpreta para mostrar la página, todos los espaciados múltiples, tabulados o saltos de línea que se haya incluido en los textos serán interpretados como un único espacio. Esta característica suele sorprender (e incluso molestar) al principio, pero es innegable que esta forma de actuar es necesaria y concuerda con el carácter descriptivo de HTML.    La mejor manera de habituarse es probar, para ello proponemos los siguientes ejemplos de código que serán mostrados de la misma forma por el navegador aunque algunos contengan saltos de línea, otros tabulados entre las palabras, etc.', CAST(N'2018-09-25 03:09:28.000' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', -3, 1, NULL, N' el mome', 4)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (4, N'Prueba3', N'Prueba3', CAST(N'2018-10-03 21:07:18.000' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 0, 2, NULL, N' el mome', 8)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (7, N'Prueba5', N'Prueba5', CAST(N'2018-10-03 21:19:34.000' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 3, 1, NULL, N'Prueba5', 7)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (8, N'Prueba6', N'Prueba6', CAST(N'2018-10-04 03:38:08.000' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 2, 1, NULL, N'Prueba6', 7)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (9, N'Prueba 6', N'Prueba 6', CAST(N'2018-10-06 02:37:25.510' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 7, 1, NULL, NULL, 10)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (10, N'  ', N'   ', CAST(N'2018-10-06 21:27:46.393' AS DateTime), N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', 0, 1, NULL, N'     ', 4)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (11, N'Prueba13', N'Prueba13', CAST(N'2018-10-21 00:12:11.170' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 10, 1, NULL, N'Prueba13', 8)
INSERT [dbo].[Posts] ([Id], [Titulo], [Contenido], [FechaPublicacion], [Autor], [Puntaje], [IdEstado], [Eliminado], [Descripcion], [IdJuego]) VALUES (12, N'Prueba 33', N'Prueba 33', CAST(N'2018-10-21 22:46:08.097' AS DateTime), N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', 0, 1, NULL, N'dsadasdasdasdasd', 8)
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
SET IDENTITY_INSERT [dbo].[Votos] ON 

INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (1, 10, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-20 22:02:47.700' AS DateTime), -3)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (2, 10, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-20 22:06:35.917' AS DateTime), 5)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (3, 9, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-20 22:07:43.177' AS DateTime), 2)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (4, 9, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-20 22:37:13.650' AS DateTime), 4)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (5, 9, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-20 23:16:44.943' AS DateTime), 5)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (6, 9, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:47:35.510' AS DateTime), 4)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (7, 9, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:50:38.520' AS DateTime), 3)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (8, 10, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:51:09.760' AS DateTime), 5)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (9, 10, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:53:26.317' AS DateTime), 2)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (10, 7, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:53:51.420' AS DateTime), 4)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (11, 10, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-20 23:56:11.380' AS DateTime), 3)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (15, 11, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-21 02:09:18.770' AS DateTime), 3)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (16, 2, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-21 05:39:35.983' AS DateTime), -3)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (17, 8, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-21 06:26:16.450' AS DateTime), 2)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (18, 1, N'2e5710fe-8d9c-49cf-8254-2ac0c7b2f180', CAST(N'2018-10-21 06:28:00.257' AS DateTime), 4)
INSERT [dbo].[Votos] ([Id], [IdPost], [Usuario], [Fecha], [Cantidad]) VALUES (19, 7, N'ff5aef1f-e39a-4f02-92d4-f8fd85d47e50', CAST(N'2018-10-21 22:41:03.600' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Votos] OFF
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Estados]
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
