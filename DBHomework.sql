USE [master]
GO
/****** Object:  Database [TransportCompanyLTD]    Script Date: 24.05.2021 10:47:41 ******/
CREATE DATABASE [TransportCompanyLTD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransportCompanyLTD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TransportCompanyLTD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TransportCompanyLTD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TransportCompanyLTD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TransportCompanyLTD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransportCompanyLTD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransportCompanyLTD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransportCompanyLTD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransportCompanyLTD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TransportCompanyLTD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransportCompanyLTD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET RECOVERY FULL 
GO
ALTER DATABASE [TransportCompanyLTD] SET  MULTI_USER 
GO
ALTER DATABASE [TransportCompanyLTD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransportCompanyLTD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransportCompanyLTD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransportCompanyLTD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TransportCompanyLTD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TransportCompanyLTD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TransportCompanyLTD', N'ON'
GO
ALTER DATABASE [TransportCompanyLTD] SET QUERY_STORE = OFF
GO
USE [TransportCompanyLTD]
GO
/****** Object:  Table [dbo].[Crews]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crews](
	[TripID] [int] NOT NULL,
	[DriverID] [int] NOT NULL,
 CONSTRAINT [PK_Crews] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC,
	[DriverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Country] [varchar](20) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Phonenumber] [varchar](20) NOT NULL,
	[Email] [nvarchar](320) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Title] [varchar](10) NOT NULL,
	[SupervisorID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[SourceLocation] [varchar](20) NOT NULL,
	[TargetLocation] [varchar](20) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[PickupTime] [datetime] NOT NULL,
	[DeliveryTime] [datetime] NULL,
	[Delay] [bit] NOT NULL,
	[Totalcost] [money] NOT NULL,
	[DayofOrder] [date] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](20) NOT NULL,
	[SafetyCategory] [varchar](3) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TripInfo]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripInfo](
	[TripID] [int] NOT NULL,
	[VINnumber] [varchar](17) NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_TripInfo] PRIMARY KEY CLUSTERED 
(
	[VINnumber] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VINnumber] [varchar](17) NOT NULL,
	[Make] [varchar](20) NOT NULL,
	[Model] [varchar](20) NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[PersonID] [int] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VINnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [I_ImportantOrderInfo]    Script Date: 24.05.2021 10:47:41 ******/
CREATE NONCLUSTERED INDEX [I_ImportantOrderInfo] ON [dbo].[Orders]
(
	[TargetLocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ImportantOrderInfo2]    Script Date: 24.05.2021 10:47:41 ******/
CREATE NONCLUSTERED INDEX [ImportantOrderInfo2] ON [dbo].[Orders]
(
	[DayofOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ImportantOrderInfo4]    Script Date: 24.05.2021 10:47:41 ******/
CREATE NONCLUSTERED INDEX [ImportantOrderInfo4] ON [dbo].[Orders]
(
	[PickupTime] ASC,
	[DeliveryTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Crews]  WITH CHECK ADD  CONSTRAINT [FK_Crews_Employees] FOREIGN KEY([DriverID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Crews] CHECK CONSTRAINT [FK_Crews_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([SupervisorID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[TripInfo]  WITH CHECK ADD  CONSTRAINT [FK_TripInfo_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[TripInfo] CHECK CONSTRAINT [FK_TripInfo_Orders]
GO
ALTER TABLE [dbo].[TripInfo]  WITH CHECK ADD  CONSTRAINT [FK_TripInfo_Vehicles] FOREIGN KEY([VINnumber])
REFERENCES [dbo].[Vehicles] ([VINnumber])
GO
ALTER TABLE [dbo].[TripInfo] CHECK CONSTRAINT [FK_TripInfo_Vehicles]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Employees] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Employees]
GO
/****** Object:  StoredProcedure [dbo].[assignVehicle]    Script Date: 24.05.2021 10:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[assignVehicle](
    @OrderNum INT
)
AS
BEGIN
    SET NOCOUNT OFF;
    DECLARE @innerOrderNum INT;
    DECLARE @vehicleNumber INT;
    DECLARE @availableVehicleNumber INT;

    SET @innerOrderNum = @OrderNum;

    DECLARE @T TABLE (VINnumber INT);
    SELECT DISTINCT VINNumber INTO #T FROM TripInfo WHERE OrderID = @innerOrderNum;

    DECLARE VEHICLE_CURSOR CURSOR FAST_FORWARD FOR 
        SELECT VINnumber 
        FROM @T;

    OPEN VEHICLE_CURSOR;
    FETCH NEXT FROM VEHICLE_CURSOR INTO @vehicleNumber;
    
    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @vehicleType VARCHAR(10) = (SELECT TOP 1 V.Type FROM Orders O
        INNER JOIN TripInfo T ON O.OrderID = T.OrderID
        INNER JOIN Vehicles V ON V.VINnumber = T.VINnumber
        WHERE DeliveryTime IS NOT NULL
        AND T.VINnumber = @vehicleNumber);

        IF @vehicleType IS NOT NULL
        BEGIN
            SET @availableVehicleNumber  = (SELECT TOP 1 V.VINnumber FROM Vehicles V
            INNER JOIN TripInfo T ON T.VINnumber = V.VINnumber
            INNER JOIN Orders O ON O.OrderID = T.OrderID
            WHERE O.DeliveryTime IS NULL
            AND V.[Type] = @vehicleType);

            IF @availableVehicleNumber IS NOT NULL
            BEGIN
                UPDATE TripInfo
                SET VINnumber = @availableVehicleNumber
                WHERE VINnumber = @vehicleNumber;
            END
            ELSE
            BEGIN
                UPDATE Orders 
                SET Delay = 1
                FROM Orders O
                INNER JOIN TripInfo T ON T.OrderID = O.OrderID
                WHERE T.VINnumber = @vehicleNumber
            END
        END
        FETCH NEXT FROM VEHICLE_CURSOR INTO @vehicleNumber;
    END

    CLOSE VEHICLE_CURSOR;
END
GO
USE [master]
GO
ALTER DATABASE [TransportCompanyLTD] SET  READ_WRITE 
GO
