/****** Object:  Database [cerveceria]    Script Date: 4/9/2022 16:27:33 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'cerveceria')
BEGIN
CREATE DATABASE [cerveceria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cerveceria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cerveceria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cerveceria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cerveceria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
END
GO
ALTER DATABASE [cerveceria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cerveceria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cerveceria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cerveceria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cerveceria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cerveceria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cerveceria] SET ARITHABORT OFF 
GO
ALTER DATABASE [cerveceria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cerveceria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cerveceria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cerveceria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cerveceria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cerveceria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cerveceria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cerveceria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cerveceria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cerveceria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cerveceria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cerveceria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cerveceria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cerveceria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cerveceria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cerveceria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cerveceria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cerveceria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cerveceria] SET  MULTI_USER 
GO
ALTER DATABASE [cerveceria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cerveceria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cerveceria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cerveceria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cerveceria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cerveceria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [cerveceria] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[productos]    Script Date: 4/9/2022 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
	[precio] [float] NOT NULL,
	[imagen] [varchar](50) NULL,
	[stock] [int] NULL,
 CONSTRAINT [PK_bebidas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/9/2022 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (2, N'Pilsen', N'Debe su nombre a la ciudad Checa de Plzen. De este estilo son muchas de las lagers de las grandes cerveceras de España.', 3001, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (3, N'Marzen', N'Estilo de las cervezas que se consumen durante el Oktoberfest. Se elaboran en el mes de marzo, de ahí su nombre, y se guardan hasta finales de septiembre.', 300, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (4, N'Bock', N'Cerveza con mucho cuerpo y graduación alcohólica. Su nombre hace referencia a macho cabrío y existe una versión más fuerte todavía llamada Doppelbock.', 300, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (5, N'American Lager', N'Lagers a las que se les añade maíz, son típicas de EEUU. Son más ligeras, claras y con menos contenido alcohólico que las lager tradicionales.', 300, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (1004, N'Ale', N'La expansión de la cerveza artesanal ha puesto de moda las cervezas ale, cuya fermentación se produce a temperaturas altas (15-18º).', 300, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (1007, N'Lager', N'Aquí están las clásicas cañas de toda la vida. La fermentación de estas cervezas se produce a baja temperatura y en la parte baja del tanque donde se produce.!', 2000, NULL, NULL)
INSERT [dbo].[productos] ([id], [nombre], [descripcion], [precio], [imagen], [stock]) VALUES (1012, N'Quilmes', N'La tradicional cerveza Argentina.', 1234, N'beer', NULL)
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [usuario], [password], [nombre]) VALUES (1, N'sloscalzo', N'81DC9BDB52D04DC20036DBD8313ED055', N'Sebastián')
INSERT [dbo].[usuarios] ([id], [usuario], [password], [nombre]) VALUES (3, N'sloscalzo', N'81DC9BDB52D04DC20036DBD8313ED055', N'Sebastián')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER DATABASE [cerveceria] SET  READ_WRITE 
GO
