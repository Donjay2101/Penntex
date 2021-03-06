USE [master]
GO
/****** Object:  Database [austin]    Script Date: 08/18/2016 12:47:45 ******/
CREATE DATABASE [austin] ON  PRIMARY 
( NAME = N'austin', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\austin.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'austin_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\austin_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [austin] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [austin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [austin] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [austin] SET ANSI_NULLS OFF
GO
ALTER DATABASE [austin] SET ANSI_PADDING OFF
GO
ALTER DATABASE [austin] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [austin] SET ARITHABORT OFF
GO
ALTER DATABASE [austin] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [austin] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [austin] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [austin] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [austin] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [austin] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [austin] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [austin] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [austin] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [austin] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [austin] SET  ENABLE_BROKER
GO
ALTER DATABASE [austin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [austin] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [austin] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [austin] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [austin] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [austin] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [austin] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [austin] SET  READ_WRITE
GO
ALTER DATABASE [austin] SET RECOVERY FULL
GO
ALTER DATABASE [austin] SET  MULTI_USER
GO
ALTER DATABASE [austin] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [austin] SET DB_CHAINING OFF
GO
USE [austin]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Jobtitle] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZIPPostal] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Webpage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Groups] [nvarchar](max) NULL,
	[Project] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Sellers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sellers] ON
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (1, N'Kevin', N'cena', NULL, NULL, NULL, NULL, NULL, N'36518131', NULL, NULL, NULL, NULL, NULL, N'asdadf', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Sellers] OFF
/****** Object:  Table [dbo].[Projects]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StoreNumber] [nvarchar](max) NULL,
	[PropertType] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[ProjectManager] [int] NULL,
	[RealStateManager] [int] NULL,
	[ParaLegal] [int] NULL,
	[Sitesuperintendent] [int] NULL,
	[Status] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Architect] [int] NULL,
	[CivilEngineer] [int] NULL,
	[TrafficEngineer] [int] NULL,
	[ConstructionType] [int] NULL,
	[Municipality] [int] NULL,
	[StoreOpenDate] [datetime] NULL,
	[TaxParcelId] [nvarchar](max) NULL,
	[TenantReferenceName] [nvarchar](max) NULL,
	[PropertyPurchaseDate] [datetime] NOT NULL,
	[FinalStoreAddress] [nvarchar](max) NULL,
	[FinalStoreCity] [nvarchar](max) NULL,
	[FinalStoreState] [nvarchar](max) NULL,
	[FinalStoreZip] [nvarchar](max) NULL,
	[FinalStoreCountry] [nvarchar](max) NULL,
	[FinalStorePhone] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Projects] ON
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (1, N'adbhjm', NULL, 121, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6DA00000000 AS DateTime), NULL, NULL, CAST(0x0000A6DA00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (2, N'ADAMS 2', NULL, 2, NULL, NULL, NULL, N'2342345', NULL, 1, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6B200000000 AS DateTime), NULL, NULL, CAST(0x0000A54300000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (3, N'Smith', NULL, 12, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6D000000000 AS DateTime), NULL, NULL, CAST(0x0000A41400000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Projects] OFF
/****** Object:  Table [dbo].[Loans]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Lender] [int] NOT NULL,
	[Project] [int] NOT NULL,
	[Amount] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Loans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Loans] ON
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (1, 1, 2, N'234455')
SET IDENTITY_INSERT [dbo].[Loans] OFF
/****** Object:  Table [dbo].[Lenders]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lenders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Lenders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lenders] ON
INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (1, N'Smith Adam')
INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (2, N'John Carter')
INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (3, N'Nobi')
SET IDENTITY_INSERT [dbo].[Lenders] OFF
/****** Object:  Table [dbo].[Leases]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leases](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[MonthlyLease] [nvarchar](max) NULL,
	[AnnulaLease] [nvarchar](max) NULL,
	[TenantDueDilligenceDueDate] [datetime] NOT NULL,
	[RentCommencementDate] [datetime] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Tenant] [int] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[TurnOverDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Leases] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Leases] ON
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (1, 2, CAST(0x0000A58100000000 AS DateTime), N'234234', NULL, CAST(0x0000A56300000000 AS DateTime), CAST(0x0000A6B300000000 AS DateTime), N'sdfsfhbdfh', 2, CAST(0x0000A5A100000000 AS DateTime), CAST(0x0000A6B500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Leases] OFF
/****** Object:  Table [dbo].[Jobs]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (1, N'Real StateManager')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (2, N'Project Manager')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (3, N'ParaLegal')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (4, N'site Superintendent')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
/****** Object:  Table [dbo].[Entities]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project] [nvarchar](max) NULL,
	[LegalName] [nvarchar](max) NULL,
	[EINNumber] [nvarchar](max) NULL,
	[AccountingGLcode] [nvarchar](max) NULL,
	[AccountingJobCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Entities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Entities] ON
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (1, N'Austin', N'Austin Martin', N'122345', NULL, NULL)
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (2, N'sam', N'sam ander', N'22345', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entities] OFF
/****** Object:  Table [dbo].[Agreementofsales]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreementofsales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LengthofInitialDDPeriod] [nvarchar](max) NULL,
	[Lengthofextention] [nvarchar](max) NULL,
	[Numberofextension] [nvarchar](max) NULL,
	[Extensioncost] [nvarchar](max) NULL,
	[PurchasePrice] [nvarchar](max) NULL,
	[Seller] [nvarchar](max) NULL,
	[EscrowCompany] [int] NOT NULL,
	[Titlecompany] [nvarchar](max) NULL,
	[AOSEffectiveDate] [datetime] NOT NULL,
	[PurchaseDate] [datetime] NOT NULL,
	[NextPayment] [datetime] NOT NULL,
	[Extension1DueDate] [datetime] NOT NULL,
	[Extension2DueDate] [datetime] NOT NULL,
	[Extension3DueDate] [datetime] NOT NULL,
	[Extension4DueDate] [datetime] NOT NULL,
	[Extension5DueDate] [datetime] NOT NULL,
	[Extension6DueDate] [datetime] NOT NULL,
	[Extension7DueDate] [datetime] NOT NULL,
	[Extension8DueDate] [datetime] NOT NULL,
	[Extension9DueDate] [datetime] NOT NULL,
	[Extension10DueDate] [datetime] NOT NULL,
	[Extension11DueDate] [datetime] NOT NULL,
	[Extension12DueDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Agreementofsales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 08/18/2016 12:47:46 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201608171140033_InitialCreate', N'AustinWeinman.Models.PennTexDbContext', 0x1F8B0800000000000400ED5DDB72E3B8117D4F55FE41A5A7A46AD6B23C7B99999277CB2B7B26DE8CC7AA9166B72A6F1009D9CC92A0C28B637F5B1EF249F98500BC0260932208909667597EB100E2342E8DEEC6ADFB7FFFF9EFE2A747CF9D3CE020747C723E9D9F9C4E279858BEED90BBF3691CEDBE7933FDE9C73FFF6971657B8F935FF3EF5EB3EF6849129E4FEFA368FF6E360BAD7BECA1F0C473ACC00FFD5D7462F9DE0CD9FEECECF4F4ED6C3E9F610A31A55893C9E2734C22C7C3C90FFA73E9130BEFA318B937BE8DDD304BA739EB0475F2097938DC230B9F4F2FE23072C86FD8211E2227E9F7D3C985EB205A97357677D30922C48F50446BFAEE4B88D751E093BBF59E262077F3B4C7F4BB1D72439CB5E05DF979DBC69C9EB1C6CCCA823994452BE77B8A80F3D759EFCCE4E29DFA785AF41EEDBF2BDACFD1136B75D287B4FBEE028C3D4C227F172297F6814CF3DDD20DD8F7704F9F48E55F4D84AF5E152C423989FDBD9A2C63378A037C4E701C05C87D3559C55BD7B1FE8E9F36FEEF989C93D875F92AD34AD33C218126AD027F8F83E8E933DE650DB9BE9C4E6662B9995CB028C69549DB764DA2D767D3C9274A1C6D5D5C7004D70FEBC80FF0074C7080226CAF5014E1800EE8B58D933EAD5097687DC4E42EBAF777D7C4618C7779B9C281E3DB79052857D229369DDCA0C7F4CBF329FD773A79EF3C623B4FC92AF585387446D2425110E3B674F163C42ACA98A8678A9F626F8B838C623804C5AB9C92E58751EFD4567160DDA310AF02C7C2BD53A322CCC541FF5D185211F2EFA5EFED11793A342B9AA1364EE4624B44EAADDE17B7EBABDD0E5B91F3802FE9C4CC09B2FF3754A528D73E1F5D23609FE81C58A127261FB5B10A269F5FC6666A57209E19477C6D1CF15BE388DF1947FCDE38E20FC611DF18477C6B1C717E6A1ED2FCAC99779C368B59698535DA66579961A16892A5C5464BAC8E16FDF94FAA3006B0BCEE90CBFEED5F795F7F4A8DAEFED5AD65F96CAD46EE3E7C64A50624F88BBF5D9AA7D87A327EC428545F1E25A5C6A9D8722A76B337D7110A2223A2FDC627D1BDFB940D75DF9C4DE8A8A261686D30412462EACA715DE70E130B9B52879FE948D36583C730999D6BC66EF6231C0ED42B7ACC77456C232DDEC401B97DC0419FF604ED2B9BE9086519C68A8D42AC9659CDABF8F643EA23A23EA03E1BBF7138615AF92CD1910A46F4DA85C72C9FE7E2ACA2098ACC95957B46FEB23BF097FDA2C5056413D13A0EB426C87E322A9A0C6FDB010EFBD7FBCB64947A1F014E93F746E51FCEBEFFEE626228E8BFC732C9718308BAD315C09F317293113082B642014A56F39A0B15875AB5314D7148C4948CAEEDC91A1817D3E567DF7731B3068ED2D6BE08AC7BDA7C5D9DB8741E1CF78ADC3904EB0EEA2640BB9D6399015BFA24A4DD603105A12F086F62DAB5CE1EB99CA0EACA22540FDCEE3131B348418F742A58D8BDEEFFDC325D9C51B58E03B6B41C446BE63F8D9E01BD77089345741C86D26F25C541345D496E189D57D21B42FB719D39901E2C29AEEE7DF26C4BCBFCE059D1FE4F8B8DCBCBFAD10DC2681069F6110D446839D059FF95871CB7772ABFF8DB88DD60E89DD06F7EF07B1F33BC4AE96FBED78B2C8176D0B78E3B10AD4C9DCE872274362E4C1516A6D7AB951F46A8FFF93A945AFE0D6FF77429D9FFF5B941D6631F023FDEF74FA6C346687B0325A20B3875FB84951ACD933A5A54FB0D60E08E26D0B19B409BD1041A4DA0D104D2348106B922351A409D0DA0E7DA5BC96F9E28DA2E69B1D178A99F0989161E48E3930859D18AF6FD102F5C06D1FB799B86D45DA346513AEDEDE10AECA8517A95F5BF6262FBEAFBE869B151D6D7D11A179147AE4CC645E4B8881C17910654FEB8883C12950FF0000E1E1C0BD3D407C7C6A62FC5349B1889B1EE50F5996FB5634236F8F172CB32F023B4BAFC12E2CCE808337A62EB52E0358EF2092B3A77A0FD59562875AE21FB7FA874980C99FC7640A82B58EFCB08C98B19A87CF694E6607176BD1B2E9F5EFC3E04E02302164FAEE21F289C9D8740E58BA3920310E9050B0821BFB17108809D8080E5D3039503C5D34D08A87CBEAB710020B56C2180DC54862641C1EE45DE62967A83C91216B31AB7318B1BB4DFD3F9C8B991C95226EBD487CCF29BB5BA6B152FC5985921E061A5A86D41895ABB54EE49B94CEEDA3831652F5184B609032F6DAFF2596572D774714EAE66FECA667F39027941F67F56B885BB1719B0ECDAF7B4B5ECBBA4E1B8A85FD5E14C0561C2BCFC201705C0E262E9BBB147EA16284DA553A90BB85FE1216B3F52A7C3B95B812870D9EDB101C72A3C3690DD1E5B72A1C2E34A59ED312547293CA694D51E3397713C182CF71A5B2B7A3B115A2B66B5C714DD9EF090624E7BC4AA6F131EB59AAB3E32555431478137794F270257F2191DF8B1F4DB00F26499DD01FBAC19FB4C07FB7533F66B1DEC6F9BB1BFD5C1FEAE19FB3B1DECEF9BB1BFD7C1FEA119FB071DEC37CDD86F74B0DF3663BFD5C1E6FCA8C093E7540BFDD0D4D49A9BF3039373DE343B1733C90C910D9F59C5F291B63A658BAA95BD552C6EB4EDAC6C2DA46E5ED515ECC7AA2AD62C820A8117324D389CAB14D15A2A921538A8748622304E99ACA0812BEE4E040D5CC9ED825CF83581A18BECA3E1F26C01AECDE3E97A5D9DC56BCA1D3787734E4A04D3B54C6E8F25BA29E1E1C41C056EE47D91087CC86728D8C20DFE4604CBB8E1BBF6D46017243C1DF80B05EB36DD4D14ECDA3449B54FA0F62B49B7DCDF8820DBF24485DA08FE46843A0939472475D27D3B036227D9E6EB2277E082FD089EAA36AC5384CF3520C93EA8FE70B06DD30E830116EB6DEFC896CD0978B3B809C59426C9DD8208623A4B3B1AE628F6B9B5F923EF217516A92D59CB25D27660D5934853E9F613B6DE46E09C7688560297A1C471EC67FA1E5DE2BA324381F3F21B5B02EBE589ED71D2E3591E64091CFC34F7146449A969C0E4F1308F902428B4223F31151A92272ACB85C25105201E8A3C159B48768021DA4372AE427D4B67184255CB648571043C6208830AE4AB71491C56D92456E25613B61FE7FD42983B65B2CAEC115C6088D348C852B006655F1882412867AACC11D92D863859E45C853590E02243580309398AD2F7B670955191BF659642BFF20E33843EE53354D71092538CEA8242FA4059633C359C0F805FB4A70078C3E0E181EC2ED8550D23E7754105B44E25B30B6E451349599D7A00D24E407617ECEC5A1A8C9C651E8D259A5F97D03644B35346753BB4AE603F8B15EE5EAC384045B2C2C207415065AA8A2200CE453B1CB266575785CD8F34A93D46E9E081872953DB2371374F79282EB93D1677B794C7E292553608B9DBA3E2FE2097A16CF8CF41CB7FDE01E90C443A7B818B88D2CD81B0942893875F5014572C059ECC1387357C7337033C489ED6DFD6C973A99AF4629DBEA649EEE175503470B97EF44CE2284012A0A39E32ACA736A09EDA8C7A6AD453CA7AAA7A7E5D248E3A6A0FA8A823D22CF99D6B6DD5921D38AAEB96BA82FD2817E12137208AD5C5BAF0585BDA84E2B38615F1E2836BA85A1D45E0D7B3475FBD1B5324FE31C4D633899CFC9586B6C8C91E75A88B9CBA82E3BEC9688F8EF6E80BB747F367AD92601FED51E051A9D0D372E6C00AA3F21C4FFEA4A09EA514BF8BE778D953B8C3A1DD2B6FE3D24FA693ACF501ED8EA730C2DE09FBE064FD2F77E93AC91971FEC10D22CE0E8751EA0A637A763A3F9362C31F4F9CF65918DA2EF094907325D2F8766E08B71E0EEBDC838E3B141DE4D7BEBA4B699207C48E1A83BF78E8F1AF3CB856F4732DD4DA08E75AA86014732D443052B916A2188D5CAFB950C4F184C10CC41BD7AA595D4C719BFE1F998A29DE190C8829DE19AB36A6B83EA21C1C591F518E29AE8F28C714D74794638AEB23CA31C5F511E598E2FA88724C717D4439A6B8010E97638A1B80343F6B2A31C55B42AAC614FF3A2C8795E85D5CD35290A275EB29373922B79E42AA89BA6D08548AACAD80AA183DFBABE4BA2E264B25647567C9710384ACD6638B6A586A2DBCC3A1A73BB7BD29F47477F38A771C65A0E53A6C220597EEDC2628B8B469C502BD8E7AB153BCA31E500BDBFC7574D547215C72172E37204FC550C97D8CD80A7A4C344440E263E26F489155E20CEBED58A43FD3D7001AFC20FA96D6AA12EF4C52B3AF38F1AB85C4C53DD46B9AE8F45177E480E8BD5D06AF2E766F27D92247EEED64ADD5C6EDED68FB71517BB78E3A823913A51295B74B83C098BC9D36F2E088BC9DEA54138FB70B16148DB7DBC003B178BBDB74D558BC06AC5530DEAE09890EC6D4EDDCF8DA98BA5A5585E3E61A823427FDC1F8B7A61A6E5023D4C4B1EDC33A839ED8BC588BBAE2D95E6F5F0B19045B1A3C6511BCD06B21C9115BB5C02ADEE4B5D02A1EE3B5D000AFF07AEA5FF2FC6E02ECCC0CA31DA1D12D47343D1AD35BF2A9AE77B46DCCB614238C9A585BB437BE1463887E1D7A830BDDA9A9B747FDA3AA7F36A3FE19F50F046454FF183BFBFB83689F3E971CD0839817AB3A80C0899AFC0504473C12690D0539342178BE5AB923061D1CE54E176901BD6579B1D2623410470311461B0DC4E715D4A381D8BEDFE1D06DC684BF1C9EAD1AE849AC5EF1E626E75639B05A49AC2EF45AFA3CE67C6A6F7DDA9CB4DAD5106EB366BAD905D1FAF06C109522F0C121F4EC5E59053C4B87B0F3786F0791D37B2800749A016367C1E00E8127B1DDAAD04932089C06893B005BEC6B55908B1C087C5504913B809FBFD6A8C0E719107A115FEE10781A2DAE8A9DA683D059E4B903C8F9C5B90A749E01611761E90E80E731E62AE07906045E84AC83E67F8BC874D5276F8BD96776F9D64B25C7E21287CE5D09B1A0980427A7D72568FECD35D9F9B930A3EDE26B947F22AB651C219B8A9D8B2072766CED13F816D584498CCA5F911B27C6CE16DBD7E4368EF671741186D8DBBAC20BCAC5AC997E127E4FACF3E276CF7E85269A40ABE9B0E3E25BF273ECB87651EFF7C0E66F0D0493C099154C6BB58E98357CF754207DAA3CEEAD03CABAEF12EFD3DB201BECED5D0A16DE92357AC05DEAF625C4EC9A8AF594E9A3A01EE4F04088DDBEB874D05D80BC30C328CBD39F94876DEFF1C7FF03BD11DA0EFAB70000, N'6.1.3-40302')
/****** Object:  Table [dbo].[Vendors]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Zipcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Webpage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[ServiceProvided] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Vendors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Vendors] ON
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [JobTitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (1, N'Milton', N'Martin', N'XYZ', NULL, NULL, NULL, NULL, N'51681', NULL, NULL, N'New York', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [JobTitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (2, N'Adam', N'Siri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'122739', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendors] OFF
/****** Object:  Table [dbo].[Tenants]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ContactPhone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Webpage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tenants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tenants] ON
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (1, N'XYZ', N'ADAM', NULL, NULL, N'JHBKBLKNJ', NULL, NULL, N'61653168', NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (2, N'Oscillate', NULL, NULL, N'54685161', NULL, NULL, NULL, NULL, NULL, NULL, N'hjjbkn')
SET IDENTITY_INSERT [dbo].[Tenants] OFF
/****** Object:  Table [dbo].[Staffs]    Script Date: 08/18/2016 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Job] [int] NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZIPcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Webpage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Group] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Staffs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (1, 4, N'aa', N'sas', NULL, NULL, NULL, NULL, N'343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (2, 1, N'austin', NULL, NULL, NULL, N'3345455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (3, 3, N'Austin', N'martin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (4, 3, N'milton', N'sam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Staffs] OFF
/****** Object:  StoredProcedure [dbo].[sp_getStaffs]    Script Date: 08/18/2016 12:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_getStaffs]
as
begin
   select s.*,j.name as Jobtitle from staffs  s  left join jobs j on s.Job=j.ID
end
GO
