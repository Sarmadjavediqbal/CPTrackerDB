USE [CPTrackerDB]
GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTable](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[emailid] [varchar](250) NULL,
	[password] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchTab]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchTab](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[batchId] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branchTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branchTable](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[branchName] [varchar](250) NULL,
	[branchAddress] [varchar](250) NULL,
	[branchManager] [varchar](250) NULL,
	[branchRole] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPAddressBk]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPAddressBk](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[cName] [varchar](250) NULL,
	[cEmail] [varchar](250) NULL,
	[cAddress] [varchar](250) NULL,
	[cContact] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cpkgTrackTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cpkgTrackTable](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[PackageType] [varchar](50) NULL,
	[PackageWeight] [varchar](250) NULL,
	[PackageSize] [varchar](250) NULL,
	[PackageDesc] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deliveryTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deliveryTable](
	[deliveryId] [int] IDENTITY(1,1) NOT NULL,
	[deliveryDate] [date] NULL,
	[deliveryFrom] [varchar](250) NULL,
	[deliveryTo] [varchar](250) NULL,
	[deliveryDesc] [varchar](250) NULL,
	[deliveryOptions] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departmentTab]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departmentTab](
	[depId] [int] IDENTITY(1,1) NOT NULL,
	[depName] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagerTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerTable](
	[managerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](250) NULL,
	[Password] [varchar](250) NULL,
	[branchName] [varchar](250) NULL,
	[officeAddress] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveParcel]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveParcel](
	[ReceiveId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SendParcel]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendParcel](
	[SentId] [int] IDENTITY(1,1) NOT NULL,
	[mailType] [varchar](250) NULL,
	[pType] [varchar](250) NULL,
	[pCategory] [varchar](250) NULL,
	[pWeight] [varchar](250) NULL,
	[itemDesc] [varchar](250) NULL,
	[UnikId] [int] NULL,
	[barcode] [varchar](250) NULL,
	[dateNtime] [date] NULL,
UNIQUE NONCLUSTERED 
(
	[UnikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](250) NULL,
	[password] [varchar](250) NULL,
	[DOB] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPermissionsTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissionsTable](
	[permissionType] [int] NULL,
	[permissionLevel] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleTable](
	[roleType] [int] NULL,
	[roleTitle] [varchar](50) NULL,
	[roleDesc] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTaskTable]    Script Date: 3/6/2022 9:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTaskTable](
	[taskId] [int] IDENTITY(1,1) NOT NULL,
	[taskTitle] [varchar](50) NULL,
	[taskDesc] [varchar](250) NULL
) ON [PRIMARY]
GO
