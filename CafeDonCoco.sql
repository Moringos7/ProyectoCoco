USE [master]
GO
/****** Object:  Database [CafeteriaPaco]    Script Date: 11/28/2017 11:18:05 ******/
CREATE DATABASE [CafeteriaPaco]
GO
ALTER DATABASE [CafeteriaPaco] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CafeteriaPaco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CafeteriaPaco] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CafeteriaPaco] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CafeteriaPaco] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CafeteriaPaco] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CafeteriaPaco] SET ARITHABORT OFF
GO
ALTER DATABASE [CafeteriaPaco] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CafeteriaPaco] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CafeteriaPaco] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CafeteriaPaco] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CafeteriaPaco] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CafeteriaPaco] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CafeteriaPaco] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CafeteriaPaco] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CafeteriaPaco] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CafeteriaPaco] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CafeteriaPaco] SET  DISABLE_BROKER
GO
ALTER DATABASE [CafeteriaPaco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CafeteriaPaco] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CafeteriaPaco] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CafeteriaPaco] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CafeteriaPaco] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CafeteriaPaco] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CafeteriaPaco] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CafeteriaPaco] SET  READ_WRITE
GO
ALTER DATABASE [CafeteriaPaco] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CafeteriaPaco] SET  MULTI_USER
GO
ALTER DATABASE [CafeteriaPaco] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CafeteriaPaco] SET DB_CHAINING OFF
GO
USE [CafeteriaPaco]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 11/28/2017 11:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[PkOrden] [int] IDENTITY(1,1) NOT NULL,
	[Mesa] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[PkOrden] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orden] ON
INSERT [dbo].[Orden] ([PkOrden], [Mesa], [Fecha], [Total]) VALUES (1, 1, CAST(0x903D0B00 AS Date), 170)
INSERT [dbo].[Orden] ([PkOrden], [Mesa], [Fecha], [Total]) VALUES (2, 2, CAST(0x903D0B00 AS Date), 150)
INSERT [dbo].[Orden] ([PkOrden], [Mesa], [Fecha], [Total]) VALUES (3, 3, CAST(0x903D0B00 AS Date), 130)
INSERT [dbo].[Orden] ([PkOrden], [Mesa], [Fecha], [Total]) VALUES (4, 1, CAST(0x913D0B00 AS Date), 185)
INSERT [dbo].[Orden] ([PkOrden], [Mesa], [Fecha], [Total]) VALUES (5, 3, CAST(0x913D0B00 AS Date), 80)
SET IDENTITY_INSERT [dbo].[Orden] OFF
/****** Object:  Table [dbo].[Platillo]    Script Date: 11/28/2017 11:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platillo](
	[PkPlatillo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Platillo] PRIMARY KEY CLUSTERED 
(
	[PkPlatillo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Platillo] ON
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (1, N'Chilaquiles', 45.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (2, N'Molletes', 30.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (3, N'Hamburguesa', 40.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (4, N'Hamburguesa Jr.', 35.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (5, N'Hot Dog', 25.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (6, N'Pastel', 30.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (7, N'Pay de Queso', 25.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (8, N'Sandwich de Pollo', 20.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (9, N'Malteada', 50.0000)
INSERT [dbo].[Platillo] ([PkPlatillo], [Nombre], [Precio]) VALUES (10, N'Cafe', 15.0000)
SET IDENTITY_INSERT [dbo].[Platillo] OFF
/****** Object:  Table [dbo].[Pedido]    Script Date: 11/28/2017 11:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[PkPedido] [int] IDENTITY(1,1) NOT NULL,
	[Platillo] [int] NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[PkPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (1, 1, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (2, 5, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (3, 6, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (4, 2, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (5, 2, 2)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (6, 10, 2)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (7, 9, 2)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (8, 7, 2)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (9, 7, 3)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (10, 8, 3)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (11, 1, 3)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (12, 4, 4)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (13, 5, 4)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (14, 1, 4)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (15, 6, 4)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (16, 10, 5)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (17, 2, 5)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (18, 8, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (19, 8, 1)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (20, 2, 2)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (21, 3, 3)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (22, 9, 4)
INSERT [dbo].[Pedido] ([PkPedido], [Platillo], [Orden]) VALUES (23, 4, 5)
SET IDENTITY_INSERT [dbo].[Pedido] OFF
/****** Object:  Trigger [ObtenerTotal]    Script Date: 11/28/2017 11:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[ObtenerTotal]
   ON [dbo].[Pedido]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	declare @OrdenInsertada float
	select @OrdenInsertada = Orden from inserted

	UPDATE Orden SET Total =(Select SUM(Precio)
	from
	(Select Platillo.Precio 
	from Platillo, Pedido
	where Platillo.PkPlatillo = Pedido.Platillo 
	and Pedido.Orden = @OrdenInsertada) 
	as Precio)
	where Orden.PkOrden = @OrdenInsertada
END
GO
/****** Object:  ForeignKey [FK_Pedido_Orden]    Script Date: 11/28/2017 11:18:06 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Orden] FOREIGN KEY([Orden])
REFERENCES [dbo].[Orden] ([PkOrden])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Orden]
GO
/****** Object:  ForeignKey [FK_Pedido_Platillo]    Script Date: 11/28/2017 11:18:06 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Platillo] FOREIGN KEY([Platillo])
REFERENCES [dbo].[Platillo] ([PkPlatillo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Platillo]
GO
