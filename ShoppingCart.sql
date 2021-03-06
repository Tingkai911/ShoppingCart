USE [master]
GO
/****** Object:  Database [ShoppingCart]    Script Date: 8/5/2019 7:02:22 PM ******/
CREATE DATABASE [ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShoppingCart.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoppingCart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShoppingCart_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShoppingCart] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoppingCart', N'ON'
GO
ALTER DATABASE [ShoppingCart] SET QUERY_STORE = OFF
GO
USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[ActivationCode]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivationCode](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ActivationCode] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[SessionId] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[Id] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[OrderDate] [int] NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[Coupon] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 8/5/2019 7:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ShoppingCart] SET  READ_WRITE 
GO
