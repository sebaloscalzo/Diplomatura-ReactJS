/****** Object:  Table [dbo].[empleados]    Script Date: 15/7/2022 18:32:22 ******/
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


