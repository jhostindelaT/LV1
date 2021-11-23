USE [master]
GO
/****** Object:  Database [bd_proyectLotus]    Script Date: 23/11/2021 15:30:45 ******/
CREATE DATABASE [bd_proyectLotus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_proyectLotus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\bd_proyectLotus.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_proyectLotus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\bd_proyectLotus_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bd_proyectLotus] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_proyectLotus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_proyectLotus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_proyectLotus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_proyectLotus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bd_proyectLotus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_proyectLotus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_proyectLotus] SET  MULTI_USER 
GO
ALTER DATABASE [bd_proyectLotus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_proyectLotus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_proyectLotus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_proyectLotus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_proyectLotus', N'ON'
GO
USE [bd_proyectLotus]
GO
/****** Object:  Table [dbo].[Tbl_Capasidad]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Capasidad](
	[ID_Capasidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Capasidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Capasidad] PRIMARY KEY CLUSTERED 
(
	[ID_Capasidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_grado]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_grado](
	[ID_grado] [int] IDENTITY(1,1) NOT NULL,
	[NombreGrado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_grado] PRIMARY KEY CLUSTERED 
(
	[ID_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Matricula]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Matricula](
	[ID_usuario] [int] NOT NULL,
	[ID_grado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Pruebas]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Pruebas](
	[ID_Prueba] [int] IDENTITY(1,1) NOT NULL,
	[ID_usuario] [int] NOT NULL,
	[Pregunta] [varchar](50) NOT NULL,
	[RespuestaPregunta] [varchar](50) NOT NULL,
	[RespuestaEstudiante] [varchar](50) NOT NULL,
	[Intentos] [int] NOT NULL,
	[Realizada] [bit] NOT NULL,
	[Materia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Pruebas] PRIMARY KEY CLUSTERED 
(
	[ID_Prueba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_seccion]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_seccion](
	[ID_seccion] [int] IDENTITY(1,1) NOT NULL,
	[ID_grado] [int] NOT NULL,
	[nombreDeSeccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_seccion] PRIMARY KEY CLUSTERED 
(
	[ID_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_TipoUsuario]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TipoUsuario](
	[ID_TipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombretipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[ID_TipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Usuario]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Usuario](
	[ID_usuario] [int] IDENTITY(1,1) NOT NULL,
	[ID_TipoUsuario] [int] NOT NULL,
	[ID_Capasidad] [int] NOT NULL,
	[Usuario] [varchar](90) NOT NULL,
	[NombreUsuario] [varchar](90) NOT NULL,
	[Apellido] [varchar](90) NOT NULL,
	[EdadUsuario] [int] NOT NULL,
	[Linea] [bit] NOT NULL,
	[Contraseña] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Capasidad] ON 
GO
INSERT [dbo].[Tbl_Capasidad] ([ID_Capasidad], [Nombre_Capasidad]) VALUES (1, N'Niguna')
GO
INSERT [dbo].[Tbl_Capasidad] ([ID_Capasidad], [Nombre_Capasidad]) VALUES (2, N'Down ')
GO
INSERT [dbo].[Tbl_Capasidad] ([ID_Capasidad], [Nombre_Capasidad]) VALUES (1002, N'Turner')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Capasidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_grado] ON 
GO
INSERT [dbo].[Tbl_grado] ([ID_grado], [NombreGrado]) VALUES (1, N'Primero')
GO
SET IDENTITY_INSERT [dbo].[Tbl_grado] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Pruebas] ON 
GO
INSERT [dbo].[Tbl_Pruebas] ([ID_Prueba], [ID_usuario], [Pregunta], [RespuestaPregunta], [RespuestaEstudiante], [Intentos], [Realizada], [Materia]) VALUES (3, 1016, N'1 + 2', N'3', N'3', 3, 1, N'Matematicas')
GO
INSERT [dbo].[Tbl_Pruebas] ([ID_Prueba], [ID_usuario], [Pregunta], [RespuestaPregunta], [RespuestaEstudiante], [Intentos], [Realizada], [Materia]) VALUES (4, 1016, N'2 + 2', N'4', N'4', 2, 1, N'Matematicas')
GO
INSERT [dbo].[Tbl_Pruebas] ([ID_Prueba], [ID_usuario], [Pregunta], [RespuestaPregunta], [RespuestaEstudiante], [Intentos], [Realizada], [Materia]) VALUES (5, 1016, N'3 + 4', N'7', N'7', 1, 1, N'Matematicas')
GO
INSERT [dbo].[Tbl_Pruebas] ([ID_Prueba], [ID_usuario], [Pregunta], [RespuestaPregunta], [RespuestaEstudiante], [Intentos], [Realizada], [Materia]) VALUES (1002, 2019, N'2 + 1', N'3', N'3', 2, 1, N'Matematicas')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Pruebas] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_seccion] ON 
GO
INSERT [dbo].[Tbl_seccion] ([ID_seccion], [ID_grado], [nombreDeSeccion]) VALUES (1, 1, N'A')
GO
SET IDENTITY_INSERT [dbo].[Tbl_seccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_TipoUsuario] ON 
GO
INSERT [dbo].[Tbl_TipoUsuario] ([ID_TipoUsuario], [NombretipoUsuario]) VALUES (1, N'Docente')
GO
INSERT [dbo].[Tbl_TipoUsuario] ([ID_TipoUsuario], [NombretipoUsuario]) VALUES (2, N'Tutor')
GO
INSERT [dbo].[Tbl_TipoUsuario] ([ID_TipoUsuario], [NombretipoUsuario]) VALUES (3, N'Alumno')
GO
SET IDENTITY_INSERT [dbo].[Tbl_TipoUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Usuario] ON 
GO
INSERT [dbo].[Tbl_Usuario] ([ID_usuario], [ID_TipoUsuario], [ID_Capasidad], [Usuario], [NombreUsuario], [Apellido], [EdadUsuario], [Linea], [Contraseña]) VALUES (1006, 1, 1, N'Jhostin', N'Jhostin', N'Cruz', 17, 0, N'Lotus')
GO
INSERT [dbo].[Tbl_Usuario] ([ID_usuario], [ID_TipoUsuario], [ID_Capasidad], [Usuario], [NombreUsuario], [Apellido], [EdadUsuario], [Linea], [Contraseña]) VALUES (1016, 3, 2, N'Jhostin', N'Jhostin Missael', N'Cruz Traña', 17, 0, N'jhostin')
GO
INSERT [dbo].[Tbl_Usuario] ([ID_usuario], [ID_TipoUsuario], [ID_Capasidad], [Usuario], [NombreUsuario], [Apellido], [EdadUsuario], [Linea], [Contraseña]) VALUES (2019, 3, 2, N'Elving', N'Juan', N'Lopez', 15, 0, N'2004')
GO
INSERT [dbo].[Tbl_Usuario] ([ID_usuario], [ID_TipoUsuario], [ID_Capasidad], [Usuario], [NombreUsuario], [Apellido], [EdadUsuario], [Linea], [Contraseña]) VALUES (2023, 1, 1, N'Leopoldo', N'Leo', N's', 25, 0, N'1234')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Usuario] OFF
GO
ALTER TABLE [dbo].[Tbl_Pruebas] ADD  CONSTRAINT [DF_Tbl_Pruebas_RespuestaEstudiante]  DEFAULT ('Aun no responde La pregunta') FOR [RespuestaEstudiante]
GO
ALTER TABLE [dbo].[Tbl_Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Matricula_Tbl_grado] FOREIGN KEY([ID_grado])
REFERENCES [dbo].[Tbl_grado] ([ID_grado])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_Matricula] CHECK CONSTRAINT [FK_Tbl_Matricula_Tbl_grado]
GO
ALTER TABLE [dbo].[Tbl_Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Matricula_Tbl_Usuario] FOREIGN KEY([ID_usuario])
REFERENCES [dbo].[Tbl_Usuario] ([ID_usuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_Matricula] CHECK CONSTRAINT [FK_Tbl_Matricula_Tbl_Usuario]
GO
ALTER TABLE [dbo].[Tbl_Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Pruebas_Tbl_Usuario] FOREIGN KEY([ID_usuario])
REFERENCES [dbo].[Tbl_Usuario] ([ID_usuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_Pruebas] CHECK CONSTRAINT [FK_Tbl_Pruebas_Tbl_Usuario]
GO
ALTER TABLE [dbo].[Tbl_seccion]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_seccion_Tbl_grado1] FOREIGN KEY([ID_grado])
REFERENCES [dbo].[Tbl_grado] ([ID_grado])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_seccion] CHECK CONSTRAINT [FK_Tbl_seccion_Tbl_grado1]
GO
ALTER TABLE [dbo].[Tbl_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Usuario_Tbl_Capasidad] FOREIGN KEY([ID_Capasidad])
REFERENCES [dbo].[Tbl_Capasidad] ([ID_Capasidad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_Usuario] CHECK CONSTRAINT [FK_Tbl_Usuario_Tbl_Capasidad]
GO
ALTER TABLE [dbo].[Tbl_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Usuario_Tbl_TipoUsuario1] FOREIGN KEY([ID_TipoUsuario])
REFERENCES [dbo].[Tbl_TipoUsuario] ([ID_TipoUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_Usuario] CHECK CONSTRAINT [FK_Tbl_Usuario_Tbl_TipoUsuario1]
GO
/****** Object:  StoredProcedure [dbo].[ComprobacionDeInicioSesion]    Script Date: 23/11/2021 15:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Delacruz
-- Create date: 11/10/21
-- Description:	Asegura el inico de sesion de las personas
-- =============================================
CREATE PROCEDURE [dbo].[ComprobacionDeInicioSesion] 
	-- Add the parameters for the stored procedure here
	@Usuario varchar(50), 
	@Contrasena varchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 
 if exists( select * from Tbl_Usuario where Usuario = @Usuario and Contraseña = @Contrasena)

 begin
  select CONVERT(bit,1) as ExisteU;
  end
  else
  begin
  select CONVERT (bit, 0) as ExisteU;
  end

END


GO
USE [master]
GO
ALTER DATABASE [bd_proyectLotus] SET  READ_WRITE 
GO
