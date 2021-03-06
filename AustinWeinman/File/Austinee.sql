USE [master]
GO
/****** Object:  Database [austin]    Script Date: 8/25/2016 5:07:56 AM ******/
CREATE DATABASE [austin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'austin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\austin.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'austin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\austin_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [austin] SET COMPATIBILITY_LEVEL = 120
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
ALTER DATABASE [austin] SET RECOVERY FULL 
GO
ALTER DATABASE [austin] SET  MULTI_USER 
GO
ALTER DATABASE [austin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [austin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [austin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [austin] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [austin] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'austin', N'ON'
GO
USE [austin]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/25/2016 5:07:56 AM ******/
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
/****** Object:  Table [dbo].[Agreementofsales]    Script Date: 8/25/2016 5:07:56 AM ******/
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
	[Seller] [int] NULL,
	[EscrowCompany] [int] NULL,
	[Titlecompany] [int] NULL,
	[AOSEffectiveDate] [datetime] NULL,
	[PurchaseDate] [datetime] NULL,
	[NextPayment] [datetime] NULL,
	[Extension1DueDate] [datetime] NULL,
	[Extension2DueDate] [datetime] NULL,
	[Extension3DueDate] [datetime] NULL,
	[Extension4DueDate] [datetime] NULL,
	[Extension5DueDate] [datetime] NULL,
	[Extension6DueDate] [datetime] NULL,
	[Extension7DueDate] [datetime] NULL,
	[Extension8DueDate] [datetime] NULL,
	[Extension9DueDate] [datetime] NULL,
	[Extension10DueDate] [datetime] NULL,
	[Extension11DueDate] [datetime] NULL,
	[Extension12DueDate] [datetime] NULL,
	[Project] [int] NULL,
 CONSTRAINT [PK_dbo.Agreementofsales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Architects]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Architects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstructionTypes]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstructionTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK__Construc__3214EC27B777C6C7] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entities]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project] [int] NULL,
	[LegalName] [nvarchar](max) NULL,
	[EINNumber] [nvarchar](max) NULL,
	[AccountingGLcode] [nvarchar](max) NULL,
	[AccountingJobCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Entities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Leases]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leases](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[MonthlyLease] [nvarchar](max) NULL,
	[AnnulaLease] [nvarchar](max) NULL,
	[TenantDueDilligenceDueDate] [datetime] NULL,
	[RentCommencementDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
	[Tenant] [int] NULL,
	[EndDate] [datetime] NULL,
	[TurnOverDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Leases] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lenders]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loans]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Projects]    Script Date: 8/25/2016 5:07:56 AM ******/
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
	[Status] [nvarchar](50) NULL,
	[Notes] [nvarchar](max) NULL,
	[Architect] [int] NULL,
	[CivilEngineer] [int] NULL,
	[TrafficEngineer] [int] NULL,
	[ConstructionType] [int] NULL,
	[Municipality] [int] NULL,
	[StoreOpenDate] [datetime] NULL,
	[TaxParcelId] [nvarchar](max) NULL,
	[TenantReferenceName] [nvarchar](max) NULL,
	[PropertyPurchaseDate] [datetime] NULL,
	[FinalStoreAddress] [nvarchar](max) NULL,
	[FinalStoreCity] [nvarchar](max) NULL,
	[FinalStoreState] [nvarchar](max) NULL,
	[FinalStoreZip] [nvarchar](max) NULL,
	[FinalStoreCountry] [nvarchar](max) NULL,
	[FinalStorePhone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 8/25/2016 5:07:56 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/25/2016 5:07:56 AM ******/
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
	[Job] [int] NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201608171140033_InitialCreate', N'AustinWeinman.Models.PennTexDbContext', 0x1F8B0800000000000400ED5DDB72E3B8117D4F55FE41A5A7A46AD6B23C7B99999277CB2B7B26DE8CC7AA9166B72A6F1009D9CC92A0C28B637F5B1EF249F98500BC0260932208909667597EB100E2342E8DEEC6ADFB7FFFF9EFE2A747CF9D3CE020747C723E9D9F9C4E279858BEED90BBF3691CEDBE7933FDE9C73FFF6971657B8F935FF3EF5EB3EF6849129E4FEFA368FF6E360BAD7BECA1F0C473ACC00FFD5D7462F9DE0CD9FEECECF4F4ED6C3E9F610A31A55893C9E2734C22C7C3C90FFA73E9130BEFA318B937BE8DDD304BA739EB0475F2097938DC230B9F4F2FE23072C86FD8211E2227E9F7D3C985EB205A97357677D30922C48F50446BFAEE4B88D751E093BBF59E262077F3B4C7F4BB1D72439CB5E05DF979DBC69C9EB1C6CCCA823994452BE77B8A80F3D759EFCCE4E29DFA785AF41EEDBF2BDACFD1136B75D287B4FBEE028C3D4C227F172297F6814CF3DDD20DD8F7704F9F48E55F4D84AF5E152C423989FDBD9A2C63378A037C4E701C05C87D3559C55BD7B1FE8E9F36FEEF989C93D875F92AD34AD33C218126AD027F8F83E8E933DE650DB9BE9C4E6662B9995CB028C69549DB764DA2D767D3C9274A1C6D5D5C7004D70FEBC80FF0074C7080226CAF5014E1800EE8B58D933EAD5097687DC4E42EBAF777D7C4618C7779B9C281E3DB79052857D229369DDCA0C7F4CBF329FD773A79EF3C623B4FC92AF585387446D2425110E3B674F163C42ACA98A8678A9F626F8B838C623804C5AB9C92E58751EFD4567160DDA310AF02C7C2BD53A322CCC541FF5D185211F2EFA5EFED11793A342B9AA1364EE4624B44EAADDE17B7EBABDD0E5B91F3802FE9C4CC09B2FF3754A528D73E1F5D23609FE81C58A127261FB5B10A269F5FC6666A57209E19477C6D1CF15BE388DF1947FCDE38E20FC611DF18477C6B1C717E6A1ED2FCAC99779C368B59698535DA66579961A16892A5C5464BAC8E16FDF94FAA3006B0BCEE90CBFEED5F795F7F4A8DAEFED5AD65F96CAD46EE3E7C64A50624F88BBF5D9AA7D87A327EC428545F1E25A5C6A9D8722A76B337D7110A2223A2FDC627D1BDFB940D75DF9C4DE8A8A261686D30412462EACA715DE70E130B9B52879FE948D36583C730999D6BC66EF6231C0ED42B7ACC77456C232DDEC401B97DC0419FF604ED2B9BE9086519C68A8D42AC9659CDABF8F643EA23A23EA03E1BBF7138615AF92CD1910A46F4DA85C72C9FE7E2ACA2098ACC95957B46FEB23BF097FDA2C5056413D13A0EB426C87E322A9A0C6FDB010EFBD7FBCB64947A1F014E93F746E51FCEBEFFEE626228E8BFC732C9718308BAD315C09F317293113082B642014A56F39A0B15875AB5314D7148C4948CAEEDC91A1817D3E567DF7731B3068ED2D6BE08AC7BDA7C5D9DB8741E1CF78ADC3904EB0EEA2640BB9D6399015BFA24A4DD603105A12F086F62DAB5CE1EB99CA0EACA22540FDCEE3131B348418F742A58D8BDEEFFDC325D9C51B58E03B6B41C446BE63F8D9E01BD77089345741C86D26F25C541345D496E189D57D21B42FB719D39901E2C29AEEE7DF26C4BCBFCE059D1FE4F8B8DCBCBFAD10DC2681069F6110D446839D059FF95871CB7772ABFF8DB88DD60E89DD06F7EF07B1F33BC4AE96FBED78B2C8176D0B78E3B10AD4C9DCE872274362E4C1516A6D7AB951F46A8FFF93A945AFE0D6FF77429D9FFF5B941D6631F023FDEF74FA6C346687B0325A20B3875FB84951ACD933A5A54FB0D60E08E26D0B19B409BD1041A4DA0D104D2348106B922351A409D0DA0E7DA5BC96F9E28DA2E69B1D178A99F0989161E48E3930859D18AF6FD102F5C06D1FB799B86D45DA346513AEDEDE10AECA8517A95F5BF6262FBEAFBE869B151D6D7D11A179147AE4CC645E4B8881C17910654FEB8883C12950FF0000E1E1C0BD3D407C7C6A62FC5349B1889B1EE50F5996FB5634236F8F172CB32F023B4BAFC12E2CCE808337A62EB52E0358EF2092B3A77A0FD59562875AE21FB7FA874980C99FC7640A82B58EFCB08C98B19A87CF694E6607176BD1B2E9F5EFC3E04E02302164FAEE21F289C9D8740E58BA3920310E9050B0821BFB17108809D8080E5D3039503C5D34D08A87CBEAB710020B56C2180DC54862641C1EE45DE62967A83C91216B31AB7318B1BB4DFD3F9C8B991C95226EBD487CCF29BB5BA6B152FC5985921E061A5A86D41895ABB54EE49B94CEEDA3831652F5184B609032F6DAFF2596572D774714EAE66FECA667F39027941F67F56B885BB1719B0ECDAF7B4B5ECBBA4E1B8A85FD5E14C0561C2BCFC201705C0E262E9BBB147EA16284DA553A90BB85FE1216B3F52A7C3B95B812870D9EDB101C72A3C3690DD1E5B72A1C2E34A59ED312547293CA694D51E3397713C182CF71A5B2B7A3B115A2B66B5C714DD9EF090624E7BC4AA6F131EB59AAB3E32555431478137794F270257F2191DF8B1F4DB00F26499DD01FBAC19FB4C07FB7533F66B1DEC6F9BB1BFD5C1FEAE19FB3B1DECEF9BB1BFD7C1FEA119FB071DEC37CDD86F74B0DF3663BFD5C1E6FCA8C093E7540BFDD0D4D49A9BF3039373DE343B1733C90C910D9F59C5F291B63A658BAA95BD552C6EB4EDAC6C2DA46E5ED515ECC7AA2AD62C820A8117324D389CAB14D15A2A921538A8748622304E99ACA0812BEE4E040D5CC9ED825CF83581A18BECA3E1F26C01AECDE3E97A5D9DC56BCA1D3787734E4A04D3B54C6E8F25BA29E1E1C41C056EE47D91087CC86728D8C20DFE4604CBB8E1BBF6D46017243C1DF80B05EB36DD4D14ECDA3449B54FA0F62B49B7DCDF8820DBF24485DA08FE46843A0939472475D27D3B036227D9E6EB2277E082FD089EAA36AC5384CF3520C93EA8FE70B06DD30E830116EB6DEFC896CD0978B3B809C59426C9DD8208623A4B3B1AE628F6B9B5F923EF217516A92D59CB25D27660D5934853E9F613B6DE46E09C7688560297A1C471EC67FA1E5DE2BA324381F3F21B5B02EBE589ED71D2E3591E64091CFC34F7146449A969C0E4F1308F902428B4223F31151A92272ACB85C25105201E8A3C159B48768021DA4372AE427D4B67184255CB648571043C6208830AE4AB71491C56D92456E25613B61FE7FD42983B65B2CAEC115C6088D348C852B006655F1882412867AACC11D92D863859E45C853590E02243580309398AD2F7B670955191BF659642BFF20E33843EE53354D71092538CEA8242FA4059633C359C0F805FB4A70078C3E0E181EC2ED8550D23E7754105B44E25B30B6E451349599D7A00D24E407617ECEC5A1A8C9C651E8D259A5F97D03644B35346753BB4AE603F8B15EE5EAC384045B2C2C207415065AA8A2200CE453B1CB266575785CD8F34A93D46E9E081872953DB2371374F79282EB93D1677B794C7E292553608B9DBA3E2FE2097A16CF8CF41CB7FDE01E90C443A7B818B88D2CD81B0942893875F5014572C059ECC1387357C7337033C489ED6DFD6C973A99AF4629DBEA649EEE175503470B97EF44CE2284012A0A39E32ACA736A09EDA8C7A6AD453CA7AAA7A7E5D248E3A6A0FA8A823D22CF99D6B6DD5921D38AAEB96BA82FD2817E12137208AD5C5BAF0585BDA84E2B38615F1E2836BA85A1D45E0D7B3475FBD1B5324FE31C4D633899CFC9586B6C8C91E75A88B9CBA82E3BEC9688F8EF6E80BB747F367AD92601FED51E051A9D0D372E6C00AA3F21C4FFEA4A09EA514BF8BE778D953B8C3A1DD2B6FE3D24FA693ACF501ED8EA730C2DE09FBE064FD2F77E93AC91971FEC10D22CE0E8751EA0A637A763A3F9362C31F4F9CF65918DA2EF094907325D2F8766E08B71E0EEBDC838E3B141DE4D7BEBA4B699207C48E1A83BF78E8F1AF3CB856F4732DD4DA08E75AA86014732D443052B916A2188D5CAFB950C4F184C10CC41BD7AA595D4C719BFE1F998A29DE190C8829DE19AB36A6B83EA21C1C591F518E29AE8F28C714D74794638AEB23CA31C5F511E598E2FA88724C717D4439A6B8010E97638A1B80343F6B2A31C55B42AAC614FF3A2C8795E85D5CD35290A275EB29373922B79E42AA89BA6D08548AACAD80AA183DFBABE4BA2E264B25647567C9710384ACD6638B6A586A2DBCC3A1A73BB7BD29F47477F38A771C65A0E53A6C220597EEDC2628B8B469C502BD8E7AB153BCA31E500BDBFC7574D547215C72172E37204FC550C97D8CD80A7A4C344440E263E26F489155E20CEBED58A43FD3D7001AFC20FA96D6AA12EF4C52B3AF38F1AB85C4C53DD46B9AE8F45177E480E8BD5D06AF2E766F27D92247EEED64ADD5C6EDED68FB71517BB78E3A823913A51295B74B83C098BC9D36F2E088BC9DEA54138FB70B16148DB7DBC003B178BBDB74D558BC06AC5530DEAE09890EC6D4EDDCF8DA98BA5A5585E3E61A823427FDC1F8B7A61A6E5023D4C4B1EDC33A839ED8BC588BBAE2D95E6F5F0B19045B1A3C6511BCD06B21C9115BB5C02ADEE4B5D02A1EE3B5D000AFF07AEA5FF2FC6E02ECCC0CA31DA1D12D47343D1AD35BF2A9AE77B46DCCB614238C9A585BB437BE1463887E1D7A830BDDA9A9B747FDA3AA7F36A3FE19F50F046454FF183BFBFB83689F3E971CD0839817AB3A80C0899AFC0504473C12690D0539342178BE5AB923061D1CE54E176901BD6579B1D2623410470311461B0DC4E715D4A381D8BEDFE1D06DC684BF1C9EAD1AE849AC5EF1E626E75639B05A49AC2EF45AFA3CE67C6A6F7DDA9CB4DAD5106EB366BAD905D1FAF06C109522F0C121F4EC5E59053C4B87B0F3786F0791D37B2800749A016367C1E00E8127B1DDAAD04932089C06893B005BEC6B55908B1C087C5504913B809FBFD6A8C0E719107A115FEE10781A2DAE8A9DA683D059E4B903C8F9C5B90A749E01611761E90E80E731E62AE07906045E84AC83E67F8BC874D5276F8BD96776F9D64B25C7E21287CE5D09B1A0980427A7D72568FECD35D9F9B930A3EDE26B947F22AB651C219B8A9D8B2072766CED13F816D584498CCA5F911B27C6CE16DBD7E4368EF671741186D8DBBAC20BCAC5AC997E127E4FACF3E276CF7E85269A40ABE9B0E3E25BF273ECB87651EFF7C0E66F0D0493C099154C6BB58E98357CF754207DAA3CEEAD03CABAEF12EFD3DB201BECED5D0A16DE92357AC05DEAF625C4EC9A8AF594E9A3A01EE4F04088DDBEB874D05D80BC30C328CBD39F94876DEFF1C7FF03BD11DA0EFAB70000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Agreementofsales] ON 

INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (1, N'180', N'30', N'6', N'2000', NULL, 1, NULL, NULL, CAST(N'2015-06-01 00:00:00.000' AS DateTime), NULL, CAST(N'2016-08-24 00:00:00.000' AS DateTime), CAST(N'2015-11-28 00:00:00.000' AS DateTime), CAST(N'2015-12-28 00:00:00.000' AS DateTime), CAST(N'2016-01-27 00:00:00.000' AS DateTime), CAST(N'2016-02-26 00:00:00.000' AS DateTime), CAST(N'2016-03-27 00:00:00.000' AS DateTime), CAST(N'2016-04-26 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 76)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (2, N'210', N'30', N'9', N'1000', NULL, 2, 7, NULL, CAST(N'2015-03-30 00:00:00.000' AS DateTime), NULL, CAST(N'2016-08-21 00:00:00.000' AS DateTime), CAST(N'2015-10-26 00:00:00.000' AS DateTime), CAST(N'2015-11-25 00:00:00.000' AS DateTime), CAST(N'2015-12-25 00:00:00.000' AS DateTime), CAST(N'2016-01-24 00:00:00.000' AS DateTime), CAST(N'2016-02-23 00:00:00.000' AS DateTime), CAST(N'2016-03-24 00:00:00.000' AS DateTime), CAST(N'2016-04-23 00:00:00.000' AS DateTime), CAST(N'2016-05-23 00:00:00.000' AS DateTime), CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL, NULL, NULL, 15)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (3, N'180', N'30', N'6', N'1000', NULL, 2, 1, NULL, CAST(N'2015-03-20 00:00:00.000' AS DateTime), CAST(N'2016-01-25 00:00:00.000' AS DateTime), CAST(N'2016-08-11 00:00:00.000' AS DateTime), CAST(N'2015-09-16 00:00:00.000' AS DateTime), CAST(N'2015-10-16 00:00:00.000' AS DateTime), CAST(N'2015-11-15 00:00:00.000' AS DateTime), CAST(N'2015-12-15 00:00:00.000' AS DateTime), CAST(N'2016-01-14 00:00:00.000' AS DateTime), CAST(N'2016-02-13 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (4, N'180', N'30', N'6', N'1000', NULL, 3, NULL, NULL, CAST(N'2016-03-03 00:00:00.000' AS DateTime), CAST(N'2015-01-25 00:00:00.000' AS DateTime), CAST(N'2016-08-30 00:00:00.000' AS DateTime), CAST(N'2016-08-30 00:00:00.000' AS DateTime), CAST(N'2016-09-29 00:00:00.000' AS DateTime), CAST(N'2016-10-29 00:00:00.000' AS DateTime), CAST(N'2016-11-28 00:00:00.000' AS DateTime), CAST(N'2016-12-28 00:00:00.000' AS DateTime), CAST(N'2017-01-27 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (5, N'180', N'30', N'6', N'1000', NULL, 4, 1, 1, CAST(N'2016-03-03 00:00:00.000' AS DateTime), CAST(N'2016-01-25 00:00:00.000' AS DateTime), CAST(N'2016-08-30 00:00:00.000' AS DateTime), CAST(N'2016-08-30 00:00:00.000' AS DateTime), CAST(N'2016-09-29 00:00:00.000' AS DateTime), CAST(N'2016-10-29 00:00:00.000' AS DateTime), CAST(N'2016-11-28 00:00:00.000' AS DateTime), CAST(N'2016-12-28 00:00:00.000' AS DateTime), CAST(N'2017-01-27 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (6, N'210', N'30', N'8', N'2000', N'225000', 5, NULL, NULL, CAST(N'2015-02-23 00:00:00.000' AS DateTime), NULL, CAST(N'2016-08-16 00:00:00.000' AS DateTime), CAST(N'2015-09-21 00:00:00.000' AS DateTime), CAST(N'2015-10-21 00:00:00.000' AS DateTime), CAST(N'2015-11-20 00:00:00.000' AS DateTime), CAST(N'2015-12-20 00:00:00.000' AS DateTime), CAST(N'2016-01-19 00:00:00.000' AS DateTime), CAST(N'2016-02-18 00:00:00.000' AS DateTime), CAST(N'2016-03-19 00:00:00.000' AS DateTime), CAST(N'2016-04-18 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 27)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (7, N'180', N'30', N'6', N'4000', N'308500', 6, 1, 1, CAST(N'2016-04-14 00:00:00.000' AS DateTime), NULL, CAST(N'2016-10-11 00:00:00.000' AS DateTime), CAST(N'2016-10-11 00:00:00.000' AS DateTime), CAST(N'2016-11-10 00:00:00.000' AS DateTime), CAST(N'2016-12-10 00:00:00.000' AS DateTime), CAST(N'2017-01-09 00:00:00.000' AS DateTime), CAST(N'2017-02-08 00:00:00.000' AS DateTime), CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 20)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (8, N'180', N'90', N'2', N'0', N'200000', 32, 10, 10, CAST(N'2016-06-04 00:00:00.000' AS DateTime), CAST(N'2017-06-28 00:00:00.000' AS DateTime), CAST(N'2016-12-01 00:00:00.000' AS DateTime), CAST(N'2016-12-01 00:00:00.000' AS DateTime), CAST(N'2017-03-01 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (9, N'180', N'30', N'6', N'2000', N'135000', 33, NULL, NULL, CAST(N'2016-06-13 00:00:00.000' AS DateTime), NULL, CAST(N'2016-12-10 00:00:00.000' AS DateTime), CAST(N'2016-12-10 00:00:00.000' AS DateTime), CAST(N'2017-01-09 00:00:00.000' AS DateTime), CAST(N'2017-02-08 00:00:00.000' AS DateTime), CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-04-09 00:00:00.000' AS DateTime), CAST(N'2017-05-09 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (10, N'120', N'30', N'6', N'5000', N'700000', 37, 10, 11, CAST(N'2013-09-20 00:00:00.000' AS DateTime), CAST(N'2014-10-31 00:00:00.000' AS DateTime), CAST(N'2016-08-05 00:00:00.000' AS DateTime), CAST(N'2014-01-18 00:00:00.000' AS DateTime), CAST(N'2014-02-17 00:00:00.000' AS DateTime), CAST(N'2014-03-19 00:00:00.000' AS DateTime), CAST(N'2014-04-18 00:00:00.000' AS DateTime), CAST(N'2014-05-18 00:00:00.000' AS DateTime), CAST(N'2014-06-17 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 46)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (11, N'120', N'30', N'8', N'2000', N'178700', 29, NULL, NULL, CAST(N'2015-06-25 00:00:00.000' AS DateTime), NULL, CAST(N'2016-08-18 00:00:00.000' AS DateTime), CAST(N'2015-10-23 00:00:00.000' AS DateTime), CAST(N'2015-11-22 00:00:00.000' AS DateTime), CAST(N'2015-12-22 00:00:00.000' AS DateTime), CAST(N'2016-01-21 00:00:00.000' AS DateTime), CAST(N'2016-02-20 00:00:00.000' AS DateTime), CAST(N'2016-03-21 00:00:00.000' AS DateTime), CAST(N'2016-04-20 00:00:00.000' AS DateTime), CAST(N'2016-05-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 80)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (12, N'180', N'30', N'6', N'2000', N'150000', 38, 12, 12, CAST(N'2016-05-17 00:00:00.000' AS DateTime), CAST(N'2017-06-11 00:00:00.000' AS DateTime), CAST(N'2016-11-13 00:00:00.000' AS DateTime), CAST(N'2016-11-13 00:00:00.000' AS DateTime), CAST(N'2016-12-13 00:00:00.000' AS DateTime), CAST(N'2017-01-12 00:00:00.000' AS DateTime), CAST(N'2017-02-11 00:00:00.000' AS DateTime), CAST(N'2017-03-13 00:00:00.000' AS DateTime), CAST(N'2017-04-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (13, N'180', N'30', N'8', N'1000', N'322500', 18, NULL, NULL, CAST(N'2015-08-05 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-30 00:00:00.000' AS DateTime), CAST(N'2016-02-01 00:00:00.000' AS DateTime), CAST(N'2016-03-02 00:00:00.000' AS DateTime), CAST(N'2016-04-01 00:00:00.000' AS DateTime), CAST(N'2016-05-01 00:00:00.000' AS DateTime), CAST(N'2016-05-31 00:00:00.000' AS DateTime), CAST(N'2016-06-30 00:00:00.000' AS DateTime), CAST(N'2016-07-30 00:00:00.000' AS DateTime), CAST(N'2016-08-29 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 43)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (14, N'180', N'30', N'6', N'1000', N'80000', 38, NULL, NULL, CAST(N'2016-01-02 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-30 00:00:00.000' AS DateTime), CAST(N'2016-06-30 00:00:00.000' AS DateTime), CAST(N'2016-07-30 00:00:00.000' AS DateTime), CAST(N'2016-08-29 00:00:00.000' AS DateTime), CAST(N'2016-09-28 00:00:00.000' AS DateTime), CAST(N'2016-10-28 00:00:00.000' AS DateTime), CAST(N'2016-11-27 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 84)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (15, N'120', N'30', N'6', N'1000', N'275000', 17, NULL, NULL, CAST(N'2016-02-15 00:00:00.000' AS DateTime), NULL, CAST(N'2016-08-13 00:00:00.000' AS DateTime), CAST(N'2016-06-14 00:00:00.000' AS DateTime), CAST(N'2016-07-14 00:00:00.000' AS DateTime), CAST(N'2016-08-13 00:00:00.000' AS DateTime), CAST(N'2016-09-12 00:00:00.000' AS DateTime), CAST(N'2016-10-12 00:00:00.000' AS DateTime), CAST(N'2016-11-11 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 40)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (16, N'120', N'30', N'6', N'1000', N'350000', 22, 7, 7, CAST(N'2016-05-27 00:00:00.000' AS DateTime), NULL, CAST(N'2016-09-24 00:00:00.000' AS DateTime), CAST(N'2016-09-24 00:00:00.000' AS DateTime), CAST(N'2016-10-24 00:00:00.000' AS DateTime), CAST(N'2016-11-23 00:00:00.000' AS DateTime), CAST(N'2016-12-23 00:00:00.000' AS DateTime), CAST(N'2017-01-22 00:00:00.000' AS DateTime), CAST(N'2017-02-21 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 53)
INSERT [dbo].[Agreementofsales] ([ID], [LengthofInitialDDPeriod], [Lengthofextention], [Numberofextension], [Extensioncost], [PurchasePrice], [Seller], [EscrowCompany], [Titlecompany], [AOSEffectiveDate], [PurchaseDate], [NextPayment], [Extension1DueDate], [Extension2DueDate], [Extension3DueDate], [Extension4DueDate], [Extension5DueDate], [Extension6DueDate], [Extension7DueDate], [Extension8DueDate], [Extension9DueDate], [Extension10DueDate], [Extension11DueDate], [Extension12DueDate], [Project]) VALUES (17, N'180', N'30', N'6', N'1000', N'206300', 42, 7, 7, CAST(N'2016-07-22 00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2017-01-18 00:00:00.000' AS DateTime), CAST(N'2017-02-17 00:00:00.000' AS DateTime), CAST(N'2017-03-19 00:00:00.000' AS DateTime), CAST(N'2017-04-18 00:00:00.000' AS DateTime), CAST(N'2017-05-18 00:00:00.000' AS DateTime), CAST(N'2017-06-17 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 25)
SET IDENTITY_INSERT [dbo].[Agreementofsales] OFF
SET IDENTITY_INSERT [dbo].[Architects] ON 

INSERT [dbo].[Architects] ([id], [name]) VALUES (1, N'Hart Architectural Services')
INSERT [dbo].[Architects] ([id], [name]) VALUES (2, N'CASCO')
SET IDENTITY_INSERT [dbo].[Architects] OFF
SET IDENTITY_INSERT [dbo].[ConstructionTypes] ON 

INSERT [dbo].[ConstructionTypes] ([ID], [Name]) VALUES (1, N'Pre-Engineered')
INSERT [dbo].[ConstructionTypes] ([ID], [Name]) VALUES (2, N'Block/Steel')
SET IDENTITY_INSERT [dbo].[ConstructionTypes] OFF
SET IDENTITY_INSERT [dbo].[Entities] ON 

INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (2, 2, N'test', N'tes', N'test', N'test')
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (3, 8, N'PTV Alum Bank, LLC', N'01-12345', N'1-0002', N'1-0002-0002')
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (4, 1, N'PTV Blairsville, LLC', N'61-1760357', N'1-0040', N'1-9999-0043')
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (5, 45, N'PTV VIII, LLC', NULL, NULL, NULL)
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (6, 7, N'PTV XXXIV, LLC', N'35-2555540', N'1-0076', N'076')
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (7, 25, N'PTVXXXVIII, LLC', N'32-0488318', NULL, NULL)
INSERT [dbo].[Entities] ([ID], [Project], [LegalName], [EINNumber], [AccountingGLcode], [AccountingJobCode]) VALUES (8, 8, N'Storeweb', N'1423423', N'sdfvsf', N'fgdf')
SET IDENTITY_INSERT [dbo].[Entities] OFF
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([id], [Name]) VALUES (1, N'Real Estate Manager')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (2, N'Project Manager')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (3, N'Paralegal')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (4, N'Site Superintendent')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (5, N'Owner')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (6, N'Attorney')
INSERT [dbo].[Jobs] ([id], [Name]) VALUES (7, N'City Clerk')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET IDENTITY_INSERT [dbo].[Leases] ON 

INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (1, 2, CAST(N'2016-08-19 00:00:00.000' AS DateTime), N'12', N'12', CAST(N'2016-08-19 00:00:00.000' AS DateTime), CAST(N'2016-08-19 00:00:00.000' AS DateTime), N'qwe', 1, CAST(N'2016-08-19 00:00:00.000' AS DateTime), CAST(N'2016-08-26 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (2, 15, NULL, N'8083.33', N'96999.96', CAST(N'2016-03-25 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, CAST(N'2016-09-26 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (3, 19, NULL, N'9182', N'110184', NULL, NULL, NULL, 1, NULL, CAST(N'2017-05-10 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (4, 18, NULL, N'1500', N'18000', NULL, NULL, NULL, 1, NULL, CAST(N'2016-09-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (5, 21, NULL, N'12553.33', N'150639.96', NULL, NULL, NULL, 1, NULL, CAST(N'2017-09-05 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (6, 23, CAST(N'2016-03-28 00:00:00.000' AS DateTime), N'9119', N'109428', CAST(N'2016-03-25 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, CAST(N'2016-06-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (7, 27, NULL, N'8738.67', N'104864.04', CAST(N'2016-07-21 00:00:00.000' AS DateTime), NULL, N'DEP Date was 7/28/2016', 1, NULL, CAST(N'2016-11-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (8, 8, NULL, N'8666.67', N'104000.04', NULL, NULL, NULL, 1, NULL, CAST(N'2015-06-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (9, 12, NULL, N'9600', N'115200', NULL, NULL, NULL, 1, NULL, CAST(N'2015-06-27 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (10, 26, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (11, 26, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (12, 28, CAST(N'2015-07-01 00:00:00.000' AS DateTime), N'7711.08', N'92532.96', NULL, NULL, NULL, 1, NULL, CAST(N'2015-11-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (13, 30, CAST(N'2015-10-27 00:00:00.000' AS DateTime), N'7491.37', N'89896.44', NULL, NULL, NULL, 1, NULL, CAST(N'2016-04-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (14, 72, NULL, N'8291.66', N'99499.92', NULL, NULL, NULL, 1, NULL, CAST(N'2016-04-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (15, 33, NULL, N'9557', N'114684', CAST(N'2017-03-05 00:00:00.000' AS DateTime), NULL, N'Rent is not confirmed by lease.', 1, NULL, CAST(N'2017-07-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (16, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (17, 46, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (18, 46, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (19, 46, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (20, 46, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (21, 46, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (22, 50, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (23, 70, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (24, 73, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (25, 75, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (26, 82, NULL, N'9162', N'109944', NULL, NULL, NULL, 1, NULL, CAST(N'2016-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (27, 43, NULL, N'8750', N'105000', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (28, 45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-08-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (29, 63, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (30, 80, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (31, 83, NULL, N'8741.67', N'104900.04', NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-07 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (32, 85, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (33, 16, NULL, N'10166', N'121992', NULL, NULL, NULL, 1, NULL, CAST(N'2014-10-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (34, 60, NULL, N'8833', N'105996', NULL, NULL, NULL, 1, NULL, CAST(N'2015-08-26 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (35, 64, NULL, N'7909', N'94908', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (36, 87, NULL, N'8720', N'104640', NULL, NULL, NULL, 1, NULL, CAST(N'2016-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (37, 13, NULL, N'8660.67', N'103928.04', CAST(N'2016-01-08 00:00:00.000' AS DateTime), NULL, N'Annual rent 103,928.04', 1, NULL, CAST(N'2016-06-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (38, 81, NULL, N'9680', N'116160', CAST(N'2017-03-15 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, CAST(N'2017-08-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (39, 41, NULL, N'7281', N'87372', NULL, NULL, NULL, 1, NULL, CAST(N'2016-07-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (40, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-09-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (41, 84, NULL, N'11654', N'139848', NULL, NULL, NULL, 1, NULL, CAST(N'2017-03-29 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (42, 78, NULL, N'9158', N'109896', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (43, 40, CAST(N'2016-04-29 00:00:00.000' AS DateTime), N'8814', N'105768', CAST(N'2016-10-26 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, CAST(N'2017-03-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (44, 6, NULL, N'8291', N'99492', NULL, NULL, NULL, 1, NULL, CAST(N'2014-10-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (45, 9, NULL, N'8158.17', N'97898.04', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (46, 10, NULL, N'7605', N'91260', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (47, 11, NULL, N'8700', N'104400', NULL, NULL, NULL, 1, NULL, CAST(N'2015-07-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (48, 22, NULL, N'9117', N'109404', NULL, NULL, NULL, 1, NULL, CAST(N'2015-01-26 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (49, 29, NULL, N'8400', N'100800', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (50, 42, NULL, N'7819.29', N'93831.48', NULL, NULL, NULL, 1, CAST(N'2011-03-08 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (51, 44, NULL, N'7833.33', N'93999.96', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (52, 57, NULL, N'8899', N'106788', NULL, NULL, NULL, 1, NULL, CAST(N'2014-05-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (53, 62, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2014-11-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (54, 65, NULL, N'13323', N'159876', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (55, 66, NULL, N'8483.83', N'101805.96', NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (56, 68, NULL, N'10250', N'123000', NULL, NULL, NULL, 1, NULL, CAST(N'2015-01-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (57, 69, NULL, N'9540', N'114480', NULL, NULL, NULL, 1, NULL, CAST(N'2015-05-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (58, 79, NULL, N'8661.17', N'103934.04', NULL, NULL, NULL, 1, NULL, CAST(N'2015-06-29 00:00:00.000' AS DateTime))
INSERT [dbo].[Leases] ([ID], [Project], [StartDate], [MonthlyLease], [AnnulaLease], [TenantDueDilligenceDueDate], [RentCommencementDate], [Notes], [Tenant], [EndDate], [TurnOverDate]) VALUES (59, 86, NULL, N'7805', N'93660', NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Leases] OFF
SET IDENTITY_INSERT [dbo].[Lenders] ON 

INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (1, N'First National Bank')
INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (2, N'M&T Bank')
INSERT [dbo].[Lenders] ([ID], [Name]) VALUES (3, N'Wes Banco')
SET IDENTITY_INSERT [dbo].[Lenders] OFF
SET IDENTITY_INSERT [dbo].[Loans] ON 

INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (1, 1, 3, N'8555')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (2, 1, 2, N'82295')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (3, 1, 40, N'120000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (4, 1, 18, N'100000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (5, 2, 46, N'3950000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (6, 1, 72, N'1255365')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (7, 1, 1, N'1288665')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (8, 1, 8, NULL)
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (9, 3, 72, N'1272000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (10, 1, 70, N'1480000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (11, 1, 28, N'1105650')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (12, 1, 75, N'1160000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (13, 3, 30, N'1152000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (14, 1, 23, N'1308000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (15, 1, 15, N'1160000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (16, 1, 82, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (17, 1, 45, N'1251000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (18, 1, 83, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (19, 1, 27, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (20, 1, 80, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (21, 3, 43, N'1287000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (22, 1, 82, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (23, 1, 41, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (24, 1, 85, N'1300000')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (25, 1, 60, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (26, 1, 64, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (27, 1, 6, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (28, 1, 9, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (29, 1, 10, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (30, 1, 11, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (31, 1, 12, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (32, 3, 16, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (33, 1, 22, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (34, 1, 29, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (35, 1, 42, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (36, 1, 44, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (37, 1, 57, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (38, 1, 62, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (39, 1, 65, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (40, 1, 66, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (41, 1, 68, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (42, 1, 69, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (43, 1, 79, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (44, 1, 86, N'0')
INSERT [dbo].[Loans] ([ID], [Lender], [Project], [Amount]) VALUES (45, 3, 87, N'0')
SET IDENTITY_INSERT [dbo].[Loans] OFF
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (1, N'Blairsville 1, 2, 3', N'16630', NULL, N'(911) 15 South Morrow Street', N'Blairsville', N'PA', N'15717', N'Indiana', 1, 3, 7, 10, N'Complete / For Sale', NULL, 1, 5, NULL, 2, 8, NULL, N'SEE 3 AOS', NULL, CAST(N'2016-01-26 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (2, N'Adams 1', NULL, NULL, N'Intersection of Palestine Road and Forest Hills Drive', N'Adams', N'PA', N'17112', N'Cambria', NULL, 3, 7, NULL, N'Active', N'Salix
Also 4', NULL, NULL, NULL, NULL, 14, NULL, N'01-013. -100.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (3, N'Aliquippa 1', N'15370', NULL, N'(911) 110 Pleasant Drive', N'Aliquippa', N'PA', N'15001', N'Beaver', 2, NULL, 6, 8, N'Sold', NULL, NULL, 5, NULL, NULL, 61, CAST(N'2014-10-29 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (4, N'Altoona 1', NULL, NULL, N'1230 14th Avenue', N'Altoona', N'PA', N'16602', N'Blair', NULL, 3, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 15, NULL, N'01.03-08..-112.00-000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (5, N'Alum Bank 1', N'4731', NULL, N'(911) 3626 Quaker Valley Road', N'Alum Bank', N'PA', N'15521', N'Bedford County; West St Clair Twp.', 1, 15, 6, 9, N'Complete / For Sale', N'Open Date is an Estimate
Twp of Alum Bank', 1, 3, NULL, 1, 4, CAST(N'2015-07-01 00:00:00.000' AS DateTime), N'D5-105B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (6, N'Ambridge', N'7183', NULL, N'(911) 612 Merchant Street', N'Ambridge', N'PA', N'15003', N'Beaver', 2, NULL, 6, 8, N'Sold', N'RELO', NULL, 44, NULL, NULL, NULL, CAST(N'2013-10-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (7, N'Avonmore', N'14189', NULL, N'(911) 4402 State Route 981', N'Avonmore', N'PA', N'15618', N'Westmoreland', NULL, NULL, NULL, 8, N'Sold', N'9,026 SF', NULL, 62, NULL, NULL, 61, CAST(N'2013-01-28 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (8, N'Beaver Falls 1, 2', N'6733', NULL, N'(911) 1823 7th Avenue', N'Beaver Falls', N'PA', N'15010', N'Beaver', 2, NULL, NULL, 19, N'Sold', N'RELO
9,002 SF
Also 8', NULL, 5, NULL, NULL, 64, CAST(N'2015-07-14 00:00:00.000' AS DateTime), N'06-001-0402.000; 06-001-0406.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (9, N'Belle Vernon 1', N'16306', NULL, N'(911) 720 Rostraver Road', N'Belle Vernon', N'PA', N'15012', N'Westmoreland County; Rostraver Twp.', 16, 3, 6, NULL, N'Sold', NULL, 2, 5, NULL, NULL, 13, CAST(N'2015-07-12 00:00:00.000' AS DateTime), N'56-16-00-0-53; 56-16-00-0-52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (10, N'Blairsville 1, 2, 3', N'16630', NULL, N'(911) 15 South Morrow Street', N'Blairsville', N'PA', N'15717', N'Indiana', 1, 3, 7, 10, N'Complete / For Sale', NULL, 1, 5, NULL, 2, 8, NULL, N'SEE 3 AOS', NULL, CAST(N'2016-01-26 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (11, N'Braddock Hills 1', NULL, NULL, N'1345 Yost Boulevard', N'Braddock Hills', N'PA', N'15521', N'Allegheny', NULL, 5, 6, NULL, N'Active', N'On Hold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (12, N'Brady 2', N'16803', NULL, N'(911) 2620 William Flynn Highway', N'Slippery Rock', N'PA', N'16057', N'Butler County; Brady Twp.', 1, 4, 7, 12, N'Active', N'K. Mahood 
724-794-8788
Atty Patur
(724) 287-7724
Thomas E. Parsons
work
(304)-263-0811 ext 1935
cell
724-496-1430', 1, 5, NULL, 1, 6, CAST(N'2014-10-11 00:00:00.000' AS DateTime), N'030-3F37-A2A-0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (13, N'Brookville 1', N'503', NULL, N'(911) 225 Allegheny Boulevard', N'Brookville', N'PA', N'15825', N'Jefferson', 2, NULL, 6, 8, N'Sold', N'RELO', NULL, 5, NULL, NULL, 16, NULL, N'06-018-0151BA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (14, N'Buckhannon', NULL, NULL, N'Route 119 and Route 33/1', N'Buckhannon', N'WV', N'26201', N'Upshur', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'290-1F149-23G; 290-1F1-49-23G2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (15, N'Butler 1', N'16976', NULL, N'(911) 511 Route 422 East', N'Butler', N'PA', N'16002', N'Butler', 1, 4, 7, 8, N'Active', N'Dave (Permitting)
Brian (Construction)', NULL, 5, NULL, NULL, 17, NULL, N'05-18-213A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (16, N'Carmichaels 1', N'7156', NULL, N'400 Route 88', N'Carmichaels', N'PA', N'15320', N'Greene', 2, 5, 7, NULL, N'Active', N'RELO', NULL, 5, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (17, N'Cecil 1', NULL, NULL, N'3576 MIllers Run Road', N'5il', N'PA', N'15321', N'Washington', NULL, 5, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 17, NULL, N'140-006-00-00-0077-00 and 140-006-00-00-0079-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (18, N'Claymont 1', N'17687', NULL, N'2605 Philadelphia Park', N'Claymont', N'DE', N'19703', N'New Castle County', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 20, CAST(N'2015-02-10 00:00:00.000' AS DateTime), N'0609600007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (19, N'Claysburg 1', N'4058', NULL, N'(911) 12792 Dunnings Highway', N'Claysburg', N'PA', N'16625', N'Blair', 16, NULL, 6, 9, N'Sold', N'RELO', NULL, 5, NULL, NULL, 66, NULL, N'1000-16-39-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (20, N'Claysville 1', N'16806', NULL, N'(911) 4541 Route 40 West', N'Claysville', N'PA', N'15323', N'Washington County', 2, 17, 6, 12, N'Complete / For Sale', NULL, NULL, 5, NULL, NULL, 21, NULL, N'230-001-00-00-0032-01; 230-001-00-00-0084-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (21, N'Coudersport 1', N'16845', NULL, NULL, NULL, N'PA', NULL, N'Potter', NULL, 17, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'062-008-033-1 and 062-008-033B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (22, N'Crabtree', NULL, NULL, N'2708 Main Street', N'Salem Township', N'PA', N'15624', N'Westmoreland', NULL, 5, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (23, N'Cumberland 2', NULL, NULL, N'Maryland Avenue', N'Cumberland', N'MD', N'21502', N'Allegany', NULL, 14, 6, NULL, N'Active', N'Rolling Mill
66 parcels
Near I-68, Exit 43', NULL, 5, NULL, NULL, NULL, NULL, N'58-111-0210.001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (24, N'Darlington 1', N'16543', NULL, N'(911) 3463 Constitution Blvd', N'Darlington', N'PA', N'16115', N'Beaver', 2, 3, 7, NULL, N'Active', NULL, NULL, 5, NULL, NULL, 22, CAST(N'2015-12-13 00:00:00.000' AS DateTime), N'S12-078-043-00; S12-078-044-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (25, N'Davidsville 3, 4', N'16242', NULL, N'(911) 116 South Main Street', N'Davidsville', N'PA', N'15928', N'Somerset', 2, 3, 6, 8, N'Complete / For Sale', NULL, NULL, 5, NULL, NULL, 77, CAST(N'2013-09-27 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (26, N'Derry 1', N'4436', NULL, N'(011) 608 Route 217', N'Latrobe', N'PA', N'15650', N'Westmoreland', 2, NULL, NULL, 8, N'Sold', N'RELO', NULL, 44, NULL, NULL, 67, CAST(N'2016-03-16 00:00:00.000' AS DateTime), N'46-16-00-0-051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (27, N'Donegal 1', N'16360', NULL, N'(911) 3865 Route #31', N'Donegal', N'PA', N'15628', N'Westmoreland', 1, 5, 6, 12, N'Complete / For Sale', NULL, NULL, 5, NULL, NULL, 24, NULL, N'290-2F14-A20A1-0000; 290-2F14-A20G-0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (28, N'Dunbar 3', NULL, NULL, N'1323 University Drive', N'Dunbar', N'PA', N'15431', N'Fayette', NULL, 3, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (29, N'East Butler 1', NULL, NULL, N'367 Freeport Road', N'Butler', N'PA', N'16002', N'Butler County; Summit Twp.', NULL, 4, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 17, NULL, N'290-2F14-A20A1-0000; 290-2F14-A20G-0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (30, N'Elizabeth 2', N'17870', NULL, N'Scenery Drive', N'Elizabeth', N'PA', N'15037', N'Allegheny County', NULL, 3, 6, NULL, N'Active', N'9,026 SF', NULL, NULL, NULL, NULL, 26, NULL, N'1130-C-00054-0000-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (31, N'Elizabethtown 1', NULL, NULL, N'SWQ of Rt 743 and Rt 293', N'Elizabethtown', N'PA', NULL, N'Lancaster', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 27, NULL, N'SEE AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (32, N'Elizabethtown 2 - Zimmerman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'300-H-41; 300-H-36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (33, N'Forest Hills 1', NULL, NULL, N'2101 Ardmore Blvd', N'Forest Hills', N'PA', N'15221', N'Allegheny', NULL, 5, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 28, NULL, N'55-08-00-0-076; 55-08-00-0-077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (34, N'Harrison City 1', NULL, NULL, N'State Route #130 and Nike Site Road', N'Harrison City', N'PA', NULL, N'Westmoreland', NULL, 3, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 29, NULL, N'28-07-15-0-003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (35, N'Herminie 1', NULL, NULL, N'24 Highland Avenue', N'Herminie', N'PA', N'15637', N'Westmoreland', NULL, 3, 6, NULL, N'Active', N'Yough School District
Monsour File Building', NULL, NULL, NULL, NULL, 30, NULL, N'0231-N-00043-0000-00; 0231-N-00045-0000-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (36, N'Homewood 1', NULL, NULL, N'8159 Bennett Street', N'Pittsburgh', N'PA', N'15208', N'Allegheny', NULL, 5, 6, NULL, N'Dead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1180-L-00142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (37, N'Imperial 1', N'17751', NULL, N'1110 Clinton Road', N'Clinton', N'PA', N'15026', N'Allegheny', NULL, 3, 7, NULL, N'Active', N'9,026 SF', NULL, NULL, NULL, NULL, 31, NULL, N'S44-004-077-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (38, N'Indian Lake 2', N'16464', NULL, N'(911) 125 Huckleberry Highway', N'Central City', N'PA', N'15926', N'Somerset', 2, 3, 7, 9, N'Complete / For Sale', NULL, 1, 5, NULL, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (39, N'Jeannette 1', N'12330', NULL, N'(911) 700 Clay Avenue', N'Jeannette', N'PA', N'15644', N'Westmoreland', NULL, NULL, NULL, NULL, N'Sold', N'8,988 SF', NULL, NULL, NULL, NULL, NULL, NULL, N'1421-D-00090-0000-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (40, N'Jefferson Hills 1', N'17160', NULL, N'(911) 1227 State Route 837', N'Jefferson Hills', N'PA', N'15025', N'Allegheny', 2, 3, 7, 12, N'Active', NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (41, N'Kennywood 1', N'4355', NULL, N'(911) 351 Hoffman Boulevard', N'Duquesne', N'PA', N'15110', N'Allegheny', NULL, NULL, 6, 8, N'Sold', N'RELO
9,026 SF', NULL, NULL, NULL, NULL, 68, NULL, N'53-008-0200-000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (42, N'Koppel 1', N'17004', NULL, N'(911) 7425 Big Beaver Blvd', N'Wampum', N'PA', N'16157', N'Beaver', 1, 4, 7, 11, N'Active', NULL, 1, 5, NULL, 1, 9, NULL, N'29-035873', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (43, N'LaVale 1 - Winchester Court', NULL, NULL, N'(911) 12317 Winchester Road', N'LaVale', N'MD', N'21502', N'Allegany', 2, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 34, NULL, N'0025-0019-0021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (44, N'LaVale 2 - Hafer/Happy Hills', NULL, NULL, N'1302 National Highway', N'LaVale', N'MD', N'21502', N'Allegany', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 35, NULL, N'See AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (45, N'LaVale 3 - RCL Development', NULL, NULL, N'13314 Winchester Road SW', N'LaVale', N'MD', N'21502', N'Allegany', NULL, 14, 6, NULL, N'Dead', NULL, NULL, NULL, NULL, NULL, 35, NULL, N'29006652', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (46, N'LaVale 4 - Slumberland', NULL, NULL, N'1262 National Highway', N'LaVale', N'MD', N'21502', N'Allegany', NULL, NULL, 6, NULL, N'Dead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29043914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (47, N'LaVale 5 - BWW', NULL, NULL, N'(911) 12107 Winchester Road SW', N'LaVale', N'MD', N'21502', N'Allegany', 2, 14, 6, NULL, N'Complete / For Sale', NULL, NULL, NULL, NULL, NULL, 35, NULL, N'See 2 AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (48, N'LaVale 6, 7 - Chick-Fil-A', NULL, NULL, N'Winchester and Vocke Road', N'LaVale', N'MD', N'21502', N'Allegany', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 35, NULL, N'See 5 AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (49, N'Lincoln Lemington 1,2,3,4,5', NULL, NULL, N'1416 Lincoln Avenue', N'Pittsburgh', N'PA', N'15206', N'Allegany', NULL, 5, 6, NULL, N'Dead', NULL, NULL, NULL, NULL, NULL, 37, NULL, N'17-03-10-0-123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (50, N'Lower Burrell 1', NULL, NULL, N'2675 Leechburg Road', N'Lower Burrell', N'PA', N'15068', N'Westmoreland', NULL, 4, 7, NULL, N'Active', N'Ashley involved', NULL, NULL, NULL, NULL, 36, NULL, N'17-03-11-0-060; 17-03-11-028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (51, N'Lower Burrell 3, 4', NULL, NULL, N'2819 & 2815 Leechburg Road', N'Lower Burrell', N'PA', N'15068', N'Westmoreland', NULL, 4, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 36, NULL, N'16-16-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (52, N'Markleysburg 1', NULL, NULL, N'130 Bruceton Road', N'Markleysburg', N'PA', N'15459', N'Fayette', NULL, 5, 6, NULL, N'Dead', NULL, NULL, NULL, NULL, NULL, 38, NULL, N'15-35-0001-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (53, N'Masontown 1', NULL, NULL, N'NWQ of Rt 21 and Lardin Farm Road', N'Masontown', N'PA', N'15461', N'Fayette', NULL, NULL, 6, NULL, N'Active', N'On Hold', NULL, NULL, NULL, NULL, 39, CAST(N'2014-05-25 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (54, N'McKeesport 1', N'14967', NULL, N'(911) 740 Lysle Boulevard', N'McKeesport', N'PA', N'15132', N'Allegheny', NULL, NULL, NULL, 8, N'Sold', NULL, NULL, 69, NULL, NULL, 70, NULL, N'See AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (55, N'Midland 2', NULL, NULL, N'Midland Avenue', N'Midland', N'PA', N'15059', N'Beaver', NULL, 5, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 40, NULL, N'13,007.-268-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (56, N'Mount Jewett 1', NULL, NULL, N'69 West Main Street', N'Mount Jewett', N'PA', N'16740', N'McKean', NULL, 5, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2015-09-15 00:00:00.000' AS DateTime), N'33-02-36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (57, N'Mount Union 1', N'16021', NULL, N'(911) 125 E. Shirley Street', N'Mount Union', N'PA', N'17066', N'Huntingdon', NULL, 16, 6, 9, N'Sold', NULL, NULL, 5, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (58, N'Mount Union Parking', NULL, NULL, NULL, NULL, N'PA', NULL, NULL, NULL, NULL, 7, NULL, N'Sold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (59, N'Mt Jackson 1', N'14205', NULL, N'(911) 4174 Edinburg Road/Rt 317', N'Mt. Jackson', N'PA', N'16102', N'Lawrence County', 2, NULL, NULL, 19, N'Sold', NULL, NULL, 62, NULL, NULL, 71, CAST(N'2013-07-14 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (60, N'New Castle 1', N'17493', NULL, N'(911) 3056 New Castle Avenue', N'New Castle', N'DE', N'19720', N'New Castle', NULL, 14, 7, NULL, N'Active', N'7,545 SF DG', NULL, NULL, NULL, NULL, 42, NULL, N'1001020523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (61, N'Nixon 1', N'14300', NULL, N'(911) 379 Pittsburgh Road', N'Nixon', N'PA', N'16002', N'Butler', 2, NULL, 6, 19, N'Sold', N'9,026 SF DG', NULL, 44, NULL, NULL, 29, CAST(N'2013-09-15 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (62, N'North Huntingdon 1', N'4557', NULL, N'(911) 12259 Route 30', N'North Huntingdon', N'PA', N'15642', N'Westmoreland', NULL, NULL, 6, 8, N'Sold', N'RELO
12,382 SF', NULL, 62, NULL, NULL, 72, CAST(N'2013-05-25 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (63, N'North Washington 1', N'15114', NULL, N'(911) 4215 Route 66', N'Apollo', N'PA', N'15613', N'Westmoreland', 2, NULL, 6, 19, N'Sold', N'9,002 SF', NULL, 3, NULL, NULL, NULL, CAST(N'2014-08-13 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (64, N'Parkersburg 1', NULL, NULL, N'Parcels 9 and 10 at Stone Ridge Commons, Route 14', N'South Parkersburg', N'WV', N'26101', N'Wood', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 45, NULL, N'150-000A0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (65, N'Penn Hills 1', N'1126', NULL, N'(911) 7248 Saltsburg Road', N'Pittsburgh', N'PA', N'15235', N'Allegheny', 2, NULL, 6, 19, N'Sold', N'RELO
10,542 SF', NULL, 3, NULL, NULL, 73, CAST(N'2015-01-24 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (66, N'Penn Hills 2', N'9350', NULL, N'(911) 12818 Frankstown Road', N'Pittsburgh', N'PA', N'15235', N'Allegheny', 16, 8, 6, NULL, N'Sold', N'RELO', NULL, 5, NULL, NULL, 73, CAST(N'2015-05-23 00:00:00.000' AS DateTime), N'448-C-72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (67, N'Plum 1', N'16488', NULL, N'(911) 2409 Route 286', N'Pittsburgh', N'PA', N'15239', N'Allegheny', 2, 3, 6, 12, N'Complete / For Sale', N'9,002 SF', NULL, NULL, NULL, NULL, NULL, NULL, N'1240-L-124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (68, N'Portersville 1', NULL, NULL, N'Boyd Lane and Perry Highway', N'Portersville', N'PA', N'16051', N'Butler', NULL, 5, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (69, N'Richeyville 2', N'16359', NULL, N'(911) 3220 National Pike', N'Fredericktown', N'PA', N'15333', N'Washington', 2, 5, 6, 11, N'Complete / For Sale', NULL, NULL, 5, NULL, NULL, 47, NULL, N'240-4F135-20D-0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (70, N'Rimersburg 2', N'8395', NULL, N'(911) 7376 Route 68', N'Rimersburg', N'PA', N'16248', N'Clarion', NULL, 5, 6, NULL, N'Complete / For Sale', N'RELO', NULL, NULL, NULL, NULL, 48, NULL, N'154-008-00-00-001-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (71, N'Rising Sun 1', NULL, NULL, N'2825 North East Road', N'Rising Sun', N'MD', N'21911', N'5il', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 49, NULL, N'17-021-055-000-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (72, N'Ruffsdale 1', N'16236', NULL, N'1103 State Route 31', N'Tarrs', N'PA', N'15688', N'Westmoreland', NULL, NULL, 6, NULL, N'Complete / For Sale', NULL, NULL, NULL, NULL, NULL, 50, NULL, N'09-008349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (73, N'Russellton 2', NULL, NULL, N'940 Little Deer Creek Valley Road', N'Gibsonia', N'PA', NULL, N'Allegheny', NULL, 4, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 51, NULL, N'47-07-00-0-104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (74, N'Salisbury 1, 2', NULL, NULL, N'2835 North Salisbury Boulevard', N'Salisbury', N'MD', N'21801', N'Wicimico', NULL, 14, 6, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 52, NULL, N'1219-A-00025-0000-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (75, N'South Greensburg 1', NULL, NULL, N'1230 Broad Street', N'Greensburg', N'PA', N'15601', N'Westmoreland', NULL, 3, 7, NULL, N'Active', NULL, NULL, NULL, NULL, NULL, 53, NULL, N'05-093228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (76, N'South Park 2', N'15784', NULL, N'(911)2301 Brownsville Road', N'South Park', N'PA', N'15129', N'Allegheny', 2, NULL, 6, 9, N'Sold', NULL, NULL, 5, NULL, NULL, 54, NULL, N'33-01-15-0-005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (77, N'Stoneboro 2', N'8289', NULL, N'(911) 2505 Mercer Street', N'Stoneboro', N'PA', N'16153', N'Mercer', 1, 5, 7, NULL, N'Active', N'RELO
10,566 SF', NULL, NULL, NULL, NULL, 55, CAST(N'2015-07-18 00:00:00.000' AS DateTime), N'770-P-99; 770-P-103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (78, N'Swissvale 1, 2', N'17869', NULL, N'2606 & 2610 S. Braddock Avenue', N'Swissvale', N'PA', N'15218', N'Allegheny', NULL, 5, 7, NULL, N'Active', N'7,489 SF', NULL, NULL, NULL, NULL, 56, NULL, N'026002910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (79, N'Uniontown 3', N'2096', NULL, N'604-624 Pittsburgh Road (Route 51)', N'Uniontown', N'PA', N'15401', N'Fayette', 2, 4, 6, 9, N'Active', N'RELO', NULL, NULL, NULL, NULL, 57, NULL, N'See 2 AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (80, N'Washington 1 - Lagonda', N'17257', NULL, N'(911) 2180 Park Avenue', N'Washington', N'PA', N'15301', N'Washington', 2, 4, 7, 12, N'Active', NULL, NULL, NULL, NULL, NULL, 58, NULL, N'25-17-0059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (81, N'Washington 2', N'8758', NULL, N'730 Jefferson Avenue', N'Washington', N'PA', N'15301', N'Washington', NULL, 5, 7, NULL, N'Active', N'RELO
10,542 SF', NULL, NULL, NULL, NULL, 58, NULL, N'590-014-00-00-0030-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (82, N'West Newton 1', N'2037', NULL, N'(911) 158 Mt. Pleasant Road', N'West Newton', N'PA', N'15089', N'Westmoreland', 1, 3, 7, 13, N'Active', N'10,566 SF
RELO', NULL, NULL, NULL, NULL, 59, NULL, N'See 4 AOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (83, N'West Pittsburg 1', N'14887', NULL, N'(911) 265 Center Avenue', N'West Pittsburg', N'PA', N'16160', N'Lawrence', 2, NULL, 6, 19, N'Sold', NULL, NULL, 69, NULL, NULL, 75, NULL, N'59-05-00-0-032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (84, N'Williamsburg 1', N'8468', NULL, N'(911) 220 E 2nd Street', N'Williamsburg', N'PA', N'16693', N'Blair', 1, 17, 6, 9, N'Sold', N'RELO', NULL, 76, NULL, NULL, 60, CAST(N'2014-02-01 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Projects] ([Id], [Name], [StoreNumber], [PropertType], [Address], [City], [State], [Zip], [Country], [ProjectManager], [RealStateManager], [ParaLegal], [Sitesuperintendent], [Status], [Notes], [Architect], [CivilEngineer], [TrafficEngineer], [ConstructionType], [Municipality], [StoreOpenDate], [TaxParcelId], [TenantReferenceName], [PropertyPurchaseDate], [FinalStoreAddress], [FinalStoreCity], [FinalStoreState], [FinalStoreZip], [FinalStoreCountry], [FinalStorePhone]) VALUES (85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2016-02-09 00:00:00.000' AS DateTime), N'23-4-33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Projects] OFF
SET IDENTITY_INSERT [dbo].[Sellers] ON 

INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (1, N'Tricia', N'Gizienski', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Business', 76)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (2, N'Thomas and Tina', N'Parsons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Business', 15)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (3, N'Estate of Irene K. Noss', NULL, NULL, NULL, N'Louis S. Noss, III, Executor', NULL, NULL, NULL, N'9723 Route 22', NULL, N'Blairsville', N'PA', NULL, NULL, NULL, N'Please refer to Addendum for most recent Seller info added, hereto', N'Business', 1)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (4, N'Estate of Chelsie Irene Adams', NULL, NULL, NULL, N'Louis S. Noss, III Executor', NULL, NULL, NULL, N'9723 Route 22', NULL, N'Blairsvlle', N'PA', NULL, NULL, NULL, NULL, N'Business', 1)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (5, N'Kevin', N'McElwain', N'Four Bees by the Sea, LP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PA', NULL, NULL, NULL, NULL, N'Business', 27)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (6, N'John', N'Hofrichter', N'Estate of John C Hofrichter', N'jthof@earthlink.net', NULL, NULL, NULL, NULL, N'144 North Main', NULL, N'Washington', N'PA', N'15301', NULL, NULL, NULL, N'Business', 20)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (7, N'Owen and Tamara', N'Oesterling', NULL, NULL, NULL, NULL, NULL, NULL, N'823 Bonniebrook Road', NULL, N'Butler', N'PA', N'15642', NULL, NULL, NULL, N'Business', 32)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (8, N'Brenda S. and Michael A', N'Zangla', NULL, NULL, NULL, NULL, NULL, NULL, N'2544 Martindale Road', NULL, N'Maranna', N'PA', N'15345', NULL, NULL, NULL, N'Business', 19)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (9, N'PGM Land Holdings, LLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'128 Colton Drive', NULL, N'Stoystown', N'PA', N'15563', NULL, NULL, NULL, N'Business', 41)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (10, NULL, NULL, N'Crerand-Olsen, LLC', NULL, NULL, NULL, NULL, NULL, N'36018 Overfalls Drive S', NULL, N'Lewes', N'DE', N'19958', N'United States', NULL, NULL, N'Business', 21)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (11, N'Jerry W. and Linda K.', N'Seaman', NULL, NULL, NULL, NULL, NULL, NULL, N'P.O. Box 161', NULL, N'Claysville', N'PA', N'15323', NULL, NULL, NULL, N'Business', 23)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (12, N'Thomas A. and Kathleen M.', N'Majot', NULL, NULL, NULL, NULL, NULL, NULL, N'361 Bark Shanty road', NULL, N'Austin', N'PA', N'16720', NULL, NULL, NULL, N'Business', 24)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (13, N'Alan C.', N'Feitl', NULL, NULL, NULL, NULL, NULL, NULL, N'P.O. Box 4215', NULL, N'Hidden Valley', N'PA', N'15502', NULL, NULL, NULL, N'Business', 30)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (14, N'Rodney A. and Jean', N'Stuebgen', NULL, NULL, NULL, NULL, NULL, NULL, N'367 Freeport Road', NULL, N'Butler', N'PA', N'16002', NULL, NULL, NULL, N'Business', 18)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (15, NULL, NULL, N'Central Volunteer Fire Company of Elizabeth Township, Allegheny County, Pennsylvania', NULL, NULL, NULL, NULL, NULL, N'425 Scenery Drive', NULL, N'Elizabeth', N'PA', N'15037', NULL, NULL, NULL, N'Business', 33)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (16, N'Henry E.', N'Turkowski, Jr.', NULL, NULL, NULL, NULL, NULL, NULL, N'3676 Logan Ferry Road', NULL, N'Monroeville', N'PA', N'15146', NULL, NULL, NULL, N'Business', 37)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (17, N'Richard', N'Marrone', NULL, NULL, NULL, NULL, NULL, NULL, N'815 Montour Street', NULL, N'Coraopolis', N'PA', N'15108', NULL, NULL, NULL, N'Business', 40)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (18, N'Thomas R. and Marilyn', N'Saracco', NULL, NULL, NULL, NULL, NULL, NULL, N'115 Stettler Drive', NULL, N'Jefferson Hills', N'PA', N'15025', NULL, NULL, NULL, N'Business', 43)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (19, N'Robert R. and Jessie V.', N'Berkebile', NULL, NULL, NULL, NULL, NULL, NULL, N'4501 4th Avenue', NULL, N'Koppel', N'PA', N'16136', NULL, NULL, NULL, N'Business', 45)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (20, N'Gary', N'Ross', N'GWR Enterprises, Inc.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Business', 53)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (21, N'Larry L. and Denise M.', N'Brock', NULL, NULL, NULL, NULL, NULL, NULL, N'19 Finnin Road', NULL, N'New Kensington', N'PA', NULL, NULL, NULL, NULL, N'Business', 54)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (22, N'Joseph A. and Barbara L.', N'Schmidt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Business', 53)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (23, N'Penn State Management', NULL, N'Cloister Shopping, Inc.', NULL, NULL, NULL, NULL, NULL, N'2555 Kingston Road', NULL, N'York', N'PA', N'17402', NULL, NULL, NULL, N'Business', 63)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (24, N'Charles S. and Eleanor J.', N'Waleski', NULL, NULL, NULL, NULL, NULL, NULL, N'38 Emery Road', NULL, N'Fredericktown', N'PA', N'15333', NULL, NULL, NULL, N'Business', 72)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (25, N'John and E. Kay', N'Stewart', NULL, NULL, NULL, NULL, NULL, NULL, N'577 Route 380', NULL, N'Murraysville', N'PA', N'15668', NULL, NULL, NULL, N'Business', 73)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (26, N'Tracy P. and Lenny B.', N'Duval', NULL, NULL, NULL, NULL, NULL, NULL, N'401 Mary Street', NULL, N'Jeannette', N'PA', N'15644', NULL, NULL, NULL, N'Business', 75)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (27, N'Philip F. Iozzi', N'Gizienski', NULL, NULL, NULL, NULL, NULL, NULL, N'1120 Woodland road', NULL, N'Baden', N'PA', N'15005', NULL, NULL, NULL, N'Business', 76)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (28, N'Susan L Harkema', N'John L. Vaccare Asset Protection Trust', NULL, NULL, NULL, NULL, NULL, NULL, N'241 Carron Street', NULL, N'Pittsburgh', N'PA', N'15206', NULL, NULL, NULL, N'Business', 78)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (29, N'Susan D.', N'Diamond', NULL, NULL, NULL, NULL, NULL, NULL, N'2505 Mercer Street', NULL, N'Stoneboro', N'PA', N'16153', NULL, NULL, NULL, N'Business', 80)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (30, N'Dennis M. and Linda J.', N'Towe', NULL, NULL, NULL, NULL, NULL, NULL, N'551 Thomas Street', NULL, N'Pittsburgh', N'PA', N'15239', NULL, NULL, NULL, N'Business', 81)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (31, N'Michael and  Mary Elizabeth', N'Haugh', NULL, NULL, NULL, NULL, NULL, NULL, N'4784 Christy Road', NULL, N'Murrysville', N'PA', N'15668', NULL, NULL, NULL, N'Business', 81)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (32, N'Janice', N'Maiorana-Smith', NULL, NULL, NULL, NULL, NULL, NULL, N'2835 North Salisbury Boulevard', NULL, N'Salisbury', N'MD', N'21801', N'Wicomico', NULL, NULL, N'Personal', 77)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (33, NULL, NULL, N'Berwind Corporation, by its affiliate Wilmore Coal Company', NULL, NULL, NULL, NULL, NULL, N'509 15th Street', NULL, N'Winber', N'PA', N'15963', NULL, NULL, N'Salix', N'Business', 5)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (34, N'Gary M.', N'Pugliano', NULL, NULL, NULL, NULL, NULL, NULL, N'3676 Logan Ferry Road', NULL, N'Monroeville', N'PA', N'15146', N'USA', NULL, NULL, N'Business', 37)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (35, NULL, NULL, N'Progressive Bank N.A.', NULL, NULL, NULL, NULL, NULL, N'P.O. Box 6671', NULL, N'Wheeling', N'WV', N'26003', N'USA', NULL, NULL, N'Business', 17)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (36, NULL, NULL, N'Cumberland Economic Development Corporation', NULL, NULL, NULL, NULL, NULL, N'57 N. Liberty Street', NULL, N'Cumberland', N'MD', N'21502', N'USA', NULL, NULL, N'Business', 26)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (37, NULL, NULL, N'Maple Mountain Industries, Inc.', NULL, NULL, NULL, NULL, NULL, N'1820 Mulligan Hill Road', NULL, N'New Florence', N'PA', N'15944', NULL, NULL, NULL, N'Business', 46)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (38, N'Patricia A.', N'Sheetz', N'Sheetz, Inc.', NULL, NULL, N'-5487', NULL, NULL, N'5700 Sixth Avenue', NULL, N'Altoona', N'PA', N'16602', N'USA', NULL, N'Attn: John R. Kachur, Esq.Fax: 814-941-5105', N'Business', 7)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (39, N'Raymond M.', N'Cappelli', NULL, NULL, NULL, NULL, NULL, NULL, N'140 B North Springvalley Road', NULL, N'Canonsburg', N'PA', N'15317', NULL, NULL, N'Atty James P. Liekar', N'Business', 84)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (40, N'Daryl W. and A. William', N'Price', NULL, NULL, NULL, NULL, NULL, NULL, N'751 Glenn Street', NULL, N'Washington', N'PA', N'15301', NULL, NULL, NULL, N'Business', 84)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (41, N'Orlando', N'Ciaffoni', NULL, NULL, NULL, NULL, NULL, NULL, N'141 Burnside Road', NULL, N'Canonsburg', N'PA', N'15317', NULL, NULL, N'Mr. Orlando Ciaffoni', N'Business', 84)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (42, N'Matthew F.', N'Salandro', NULL, NULL, NULL, N'-8295', NULL, NULL, N'2708 Main Street', NULL, N'Crabtree', N'PA', N'15624', NULL, NULL, NULL, N'Business', 25)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (43, N'Dean A.', N'Bretzel', NULL, NULL, NULL, N'-8295', NULL, NULL, N'2708 Main Street', NULL, N'Crabtree', N'PA', N'15624', NULL, NULL, NULL, N'Business', 25)
INSERT [dbo].[Sellers] ([ID], [FirstName], [LastName], [Company], [Email], [Jobtitle], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPPostal], [Country], [Webpage], [Notes], [Groups], [Project]) VALUES (44, N'Russell P. and Joann R.', N'Salandro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Crabtree', N'PA', NULL, NULL, NULL, NULL, N'Business', 25)
SET IDENTITY_INSERT [dbo].[Sellers] OFF
SET IDENTITY_INSERT [dbo].[Staffs] ON 

INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (1, 2, N'Brian', N'Merdian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (2, 2, N'David', N'Cook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (3, 1, N'Ashley', N'Weinman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (4, 1, N'Holly', N'Lefever', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (5, 1, N'Bob', N'Lasser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (6, 3, N'Lisa', N'Mullin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (7, 3, N'Foreste', N'Hess', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (8, 4, N'Nick', N'Matko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (9, 4, N'Paul', N'Wilson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (10, 4, N'Jon', N'Herby', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (11, 4, N'Jim', N'Lalli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (12, 4, N'Joe', N'Brusco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (13, 4, N'Dan', N'Cortese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (14, 1, N'Ed', N'Baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (15, 1, N'Pete', N'Thomas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (16, 2, N'Gary', N'Solomon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (17, 1, N'Ted', N'Donald', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (18, 1, N'Tim', N'Weinman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Staffs] ([ID], [Job], [FirstName], [LastName], [Company], [Email], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [ZIPcode], [Country], [Webpage], [Notes], [Group]) VALUES (19, 4, N'Chris', N'Wier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Staffs] OFF
SET IDENTITY_INSERT [dbo].[Tenants] ON 

INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (1, N'Dollar General', N'Sean Caplan', N'scaplan@dollargeneral.com', N'111-111-1111', N'1234', N'Goodletsville', N'TN', N'12345', N'USA', N'www.dollargeneral.com', N'Chad Bayless current REM')
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (2, N'Texas Roadhouse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (3, N'Sheetz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (4, N'Aspen Dental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (5, N'PetSmart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (6, N'Aldi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (7, N'Mattress Warehouse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (8, N'U.S. Cellular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tenants] ([ID], [CompanyName], [ContactPerson], [Email], [ContactPhone], [Address], [City], [State], [ZipCode], [Country], [Webpage], [Notes]) VALUES (9, N'Buffalo Wild Wings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tenants] OFF
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (1, N'Matt', N'Nichols', N'Duffy and Nichols', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Title Company')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (2, N'Nate', N'Hart', N'Hart Architectural Services', N'nhart@hartarc.com', 5, N'412-726-1941', NULL, NULL, N'3729 Parkview Avenue', NULL, N'Pittsburgh', N'Pa', N'15213', NULL, N'http://www.hartarc.com/', NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (3, N'Christopher', N'Prisk', N'Langan', N'cprisk@Langan.com', 2, N'724.514.5154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (4, NULL, NULL, N'West St Clair Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (5, N'Chris', N'Remley', N'CEC', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Engineer')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (6, NULL, NULL, N'Brady Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (7, N'Eric', N'Bradley', N'Metz Lewis Brodman Must O''Keefe', N'ebradley@metzlewis.com', 0, NULL, NULL, N'(412) 352-3696', N'535 Smithfield St.', NULL, N'Pittsburgh', N'PA', N'15222', NULL, NULL, NULL, N'Title Company')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (8, NULL, NULL, N'Borough of Blairsville', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (9, NULL, NULL, N'Big Beaver Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (10, N'J. Matthew', N'Gilmore', N'Geppert, McMullen, Paye & Getty', N'matt.gilmore.gmpg@atlanticbb.net', 6, N'301-777-1515', NULL, NULL, N'21 Prospect Square', NULL, N'Cumberland', N'MD', N'21502', N'Allegany', N'http://www.gmpglaw.com/', NULL, N'Escrow Company')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (11, NULL, NULL, N'Colonial Title, LLC', NULL, 0, NULL, NULL, NULL, N'409 Broad Street', N'Suite 115', N'Sewickley', N'PA', N'15143', N'USA', NULL, NULL, N'Title Company')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (12, N'Matthew M.', N'Nichols', N'The Nichols Law Group', N'matt@tnlgusa.com', 6, N'724-864-2327', NULL, NULL, N'150 Robbins Station Road', N'Suite 4', N'North Huntingdon', N'PA', N'15642', N'USA', N'http://www.thenicholslawgroup.com/', NULL, N'Escrow Company')
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (13, NULL, NULL, N'Township of Rostraver', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (14, NULL, NULL, N'Adams Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (15, N'Linda', N'Rickens', N'City of Altoona', NULL, 7, N'(814)949-2486', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (16, NULL, NULL, N'Borough of Brookville', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (17, NULL, NULL, N'Summit Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (18, NULL, NULL, N'Cumberland Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (19, NULL, NULL, N'Cecil Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (20, NULL, NULL, N'City of Claymont', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (21, NULL, NULL, N'Claysville Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (22, NULL, NULL, N'Darlington Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (23, NULL, NULL, N'Davidsville Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (24, NULL, NULL, N'Donegal Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (25, NULL, NULL, N'Summit Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (26, NULL, NULL, N'Elizabeth Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (27, NULL, NULL, N'Mount Joy Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (28, NULL, NULL, N'Forest Hills Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (29, NULL, NULL, N'Penn Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (30, NULL, NULL, N'Sewickley Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (31, NULL, NULL, N'Findlay Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (32, NULL, NULL, N'Stonycreek Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (33, NULL, NULL, N'Jefferson Hills Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (34, NULL, NULL, N'Election District 29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (35, NULL, NULL, N'City of LaVale', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (36, NULL, NULL, N'City of Lower Burrell', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (37, NULL, NULL, N'12th Ward City of Pittsburgh', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (38, NULL, NULL, N'Henry Clay Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (39, NULL, NULL, N'German Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (40, NULL, NULL, N'Midland Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (41, NULL, NULL, N'Mount Union Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (42, NULL, NULL, N'New Castle Hundred', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (43, NULL, NULL, N'City of Butler', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (44, NULL, NULL, N'Gales', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (45, NULL, NULL, N'City of South Parkersburg', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (46, NULL, NULL, N'Plum Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (47, NULL, NULL, N'Muddy Creek Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (48, NULL, NULL, N'Centerville Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (49, NULL, NULL, N'Madison Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (50, NULL, NULL, N'North East Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (51, NULL, NULL, N'East Huntingdon Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (52, NULL, NULL, N'West Deer Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (53, NULL, NULL, N'City of Salisbury', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (54, NULL, NULL, N'South Greensburg Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (55, NULL, NULL, N'Sandy Lake Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (56, NULL, NULL, N'Swissvale Borough', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (57, NULL, NULL, N'North Union Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (58, NULL, NULL, N'City of Washington', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (59, NULL, NULL, N'South Huntingdon Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (60, NULL, NULL, N'Williamsburg Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (61, NULL, NULL, N'Center Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (62, NULL, NULL, N'DeGlau', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (63, NULL, NULL, N'Bell Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (64, NULL, NULL, N'6th Ward of the City of Beaver Falls', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (65, NULL, NULL, N'CASCO', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (66, NULL, NULL, N'Greenfield Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (67, NULL, NULL, N'Derry Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (68, NULL, NULL, N'City of Duquesne', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (69, NULL, NULL, N'Petrus', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (70, NULL, NULL, N'City of McKeesport', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (71, NULL, NULL, N'North Beaver Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (72, NULL, NULL, N'City of North Huntingdon', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (73, NULL, NULL, N'Penn Hills Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (74, NULL, NULL, N'South Park Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (75, NULL, NULL, N'Taylor Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (76, NULL, NULL, N'NATE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (77, NULL, NULL, N'Conemaugh Township', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendors] ([ID], [FirstName], [LastName], [Company], [Email], [Job], [WorkPhone], [HomePhone], [MobilePhone], [Address1], [Address2], [City], [State], [Zipcode], [Country], [Webpage], [Notes], [ServiceProvided]) VALUES (78, N'Matt', N'Nichols', N'The Nichols Law Group', N'Matt Nichols <Matt@tnlgusa.com>', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendors] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetEntityName]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetEntityName] 
as
begin 

 select Entities.*,
 P.Name as ProjectName
from Entities
left join Projects P on Entities.Project=P.ID

end 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLenderName]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetLenderName] 
as
begin 

 select Loans.*,
 L.Name as LenderName,
 P.Name as ProjectName

from Loans
left join Lenders L on Loans.Lender=L.ID
left join Projects P on Loans.Project=P.ID

end 

GO
/****** Object:  StoredProcedure [dbo].[sp_GetProjectName]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetProjectName] 
as
begin 

 select Sellers.*,
 P.Name as ProjectName
from Sellers
left join Projects P on Sellers.Project=P.ID

end 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProjects]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetProjects]
as
begin
select Projects.*,
(pm.FirstName+' '+pm.LastName) as ProjectManagerName,
(RM.FirstName+' '+Rm.LastName) as RealStateManagerName,
(PL.FirstName+' '+PL.LastName) as ParaLegalName,
(SS.FirstName+' '+SS.LastName) as SiteSuperintendentName,
V.Company as CivilEngineerName,
TE.Company as TrafficEngineerName,
MN.Company as MunicipalityName,
AR.NAME AS ArchitectName
from Projects 
left join Staffs PM on Projects.ProjectManager=PM.ID
left join Staffs RM on Projects.RealStateManager =RM.ID
left join Staffs PL on Projects.ParaLegal=PL.ID
left join Staffs SS on projects.Sitesuperintendent=ss.ID
left join Vendors V on projects.CivilEngineer = V.ID
left join Vendors TE on projects.TrafficEngineer = TE.ID
left join Vendors MN on projects.Municipality = MN.ID
left join Architects AR on projects.Architect = AR.ID
left join ConstructionTypes ct on projects.ConstructionType= ct.ID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSellers]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetSellers]
as
begin 

select Agreementofsales. *, (Sellers.FirstName + Sellers.LastName) as SellersName from Agreementofsales left join Sellers on Sellers.ID = Agreementofsales.Seller

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getStaffs]    Script Date: 8/25/2016 5:07:56 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetTenantName]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetTenantName] 
as
begin 

 select Leases.*,
 j.CompanyName as TenantName,
 jj.Name as ProjectName

from Leases
left join Tenants j on Leases.Tenant=j.ID
left join Projects jj on Leases.Project=jj.ID

end 

GO
/****** Object:  StoredProcedure [dbo].[sp_vendors]    Script Date: 8/25/2016 5:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_vendors]
as
begin 
 select Agreementofsales.*,j.Company as EscrowCompanyName,
 js.Company as TitleCompanyName,
 (Sellers.FirstName + Sellers.LastName) as SellersName
 
  
 from Agreementofsales  
 left join Vendors j on Agreementofsales.EscrowCompany=j.ID
 left join Vendors js on Agreementofsales.Titlecompany = js.ID
left join Sellers on Agreementofsales.Seller = Sellers.ID
end
GO
USE [master]
GO
ALTER DATABASE [austin] SET  READ_WRITE 
GO
