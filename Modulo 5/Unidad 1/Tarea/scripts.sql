/****** Object:  Database [ejercicio]    Script Date: 15/7/2022 18:26:20 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ejercicio')
BEGIN
CREATE DATABASE [ejercicio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ejercicio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ejercicio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ejercicio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ejercicio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
END
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ejercicio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ejercicio] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ejercicio] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ejercicio] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ejercicio] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ejercicio] SET ARITHABORT OFF 
GO

ALTER DATABASE [ejercicio] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ejercicio] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ejercicio] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ejercicio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ejercicio] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ejercicio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ejercicio] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ejercicio] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ejercicio] SET RECURSIVE_TRIGGERS OFF 
GO

--ALTER DATABASE [ejercicio] SET  DISABLE_BROKER 
--GO

ALTER DATABASE [ejercicio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

--ALTER DATABASE [ejercicio] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO

ALTER DATABASE [ejercicio] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ejercicio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ejercicio] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ejercicio] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ejercicio] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ejercicio] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ejercicio] SET  MULTI_USER 
GO

ALTER DATABASE [ejercicio] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ejercicio] SET DB_CHAINING OFF 
GO

--ALTER DATABASE [ejercicio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO

ALTER DATABASE [ejercicio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ejercicio] SET DELAYED_DURABILITY = DISABLED 
GO

--ALTER DATABASE [ejercicio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
--GO

ALTER DATABASE [ejercicio] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ejercicio] SET  READ_WRITE 
GO


/****** Object:  Table [dbo].[empleados]    Script Date: 15/7/2022 18:32:22 ******/
use ejercicio

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[empleados](
	[id_emp] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[trabajo] [varchar](50) NULL,
	[edad] [int] NULL,
	[salario] [int] NULL,
	[mail] [varchar](50) NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[id_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


/****** INSERTS EMPLEADOS ******/
if not exists(select id_emp from empleados where id_emp = 1) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (1, 'Juan', 'Hagan', 'Programador Senior', 32, 120000, 'juan_hagan@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 2) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (2, 'Gonzalo', 'Pillai', 'Programador Senior', 32, 110000, 'g_pillai@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 3) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (3, 'Ana', 'Dharma', 'Desarrollador Web', 27, 90000, 'ana@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 4) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (4, 'Maria', 'Anchor', 'Desarrollador Web', 26, 85000, 'mary@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 5) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (5, 'Alfred', 'Fernandez', 'Programador', 31, 75000, 'af@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 6) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (6, 'Juan', 'Agüero', 'Programador', 36, 85000, 'juan@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 7) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (7, 'Eduardo', 'Sacan', 'Programador', 25, 85000, 'eddi@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 8) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (8, 'Alejandro', 'Nanda', 'Programador', 32, 70000, 'alenanda@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 9) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (9, 'Hernan', 'Rosso', 'Especialista Multimedia', 33, 90000, 'hernan@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 10) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (10, 'Pablo', 'Simon', 'Especialista Multimedia', 43, 85000, 'ps@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 11) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (11, 'Arturo', 'Hernandez', 'Especialista Multimedia', 32, 75000, 'arturo@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 12) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (12, 'Jimena', 'Cazado', 'Diseñador Web', 32, 110000, 'jimena@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 13) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (13, 'Roberto', 'Luis', 'Administrador de sistemas', 35, 100000, 'roberto@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 14) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (14, 'Daniel', 'Gutierrez', 'Administrador de sistemas', 34, 900000, 'daniel@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 15) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (15, 'Miguel', 'Harper', 'Ejecutivo de Ventas Senior', 36, 120000, 'miguel@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 16) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (16, 'Monica', 'Sanchez', 'Ejecutivo de Ventas', 30, 90000, 'monica@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 17) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (17, 'Alicia', 'Simlai', 'Ejecutivo de Ventas', 27, 70000, 'alicia@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 18) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (18, 'Jose', 'Iriarte', 'Ejecutivo de Ventas', 27, 72000, 'jose@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 19) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (19, 'Sabrina', 'Allende', 'Gerente de Soporte tecnico', 32, 200000, 'sabrina@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 20) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (20, 'Pedro', 'Campeon', 'Gerente de finanzas', 36, 220000, 'pedro@bignet.com')
end
go

if not exists(select id_emp from empleados where id_emp = 21) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (21, 'Mariano', 'Dharma', 'Presidente', 28, 300000, 'mariano@bignet.com')
end
go
