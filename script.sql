USE [master]
GO
/****** Object:  Database [AbcDb]    Script Date: 16.06.2022 21:48:25 ******/
CREATE DATABASE [AbcDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AbcDb', FILENAME = N'C:\Users\enest\AbcDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AbcDb_log', FILENAME = N'C:\Users\enest\AbcDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AbcDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AbcDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AbcDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AbcDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AbcDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AbcDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AbcDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AbcDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AbcDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AbcDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AbcDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AbcDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AbcDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AbcDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AbcDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AbcDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AbcDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AbcDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AbcDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AbcDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AbcDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AbcDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AbcDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AbcDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AbcDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AbcDb] SET  MULTI_USER 
GO
ALTER DATABASE [AbcDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AbcDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AbcDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AbcDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [AbcDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16.06.2022 21:48:25 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderLines]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OrderLines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](max) NULL,
	[Total] [float] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[AdresBasligi] [nvarchar](max) NULL,
	[Adres] [nvarchar](max) NULL,
	[Sehir] [nvarchar](max) NULL,
	[Semt] [nvarchar](max) NULL,
	[Mahalle] [nvarchar](max) NULL,
	[PostaKodu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 16.06.2022 21:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Stock] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsHome] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202206052222391_InitialCreate', N'Abc.MvcWebUI.Entity.DataContext', 0x1F8B0800000000000400ED5CDD6EDB3614BE1FB0771074B50D9995A4375B606F489D6633DA245D9D6EBB0B68897688519426524182614FB68B3DD25E6147FFA428CAFAB19D22280A1409457E3C3C3C3F24CFD7FEF7CFBFD31F1F7D6A3DE0889380CDEC93C9B16D61E6061E619B991D8BF5B7DFD93FFEF0E517D3379EFF68FD5AF47B95F483918CCFEC7B21C233C7E1EE3DF6119FF8C48D021EACC5C40D7C077981737A7CFCBD7372E26080B001CBB2A61F6226888FD35FE0D779C05C1C8A18D1ABC0C394E7EDF06599A25AD7C8C73C442E9ED9E72B7772F5E0FE86571F17933700239E6CEB9C1204A22C315DDB16622C104880A0671F395E8A28609B65080D88DE3E8518FAAD11E5385FC059D5BDEB5A8E4F93B538D5C002CA8DB908FC9E8027AF72E538F5E183546C97CA03F565FA49569DAA7066CF91C09B200295D5273B9BD328E9D8A8E14931EEC892BF1E9516018693FC39B2E631157184670CC72242F4C87A1FAF2871DFE2A7DBE00FCC662CA654161184846F4A0334BD8F821047E2E9035EE7822F3CDB72D4714E7D60394C1A932D69C1C4AB53DBBA86C9D18AE2D202A4E52F4510E19F30C3112CD57B8F84C0114B30706E634EEB5CC9DFC56C6072E03EB675851EDF61B611F733FB14FCE5923C62AF68C805F8C808381B8C11518CB7CD7181B91B9130330DE354F0E390B9AED103D9A4AAA8CD0ABF7AB12BB86D7DC034EDC0EF499839DB24FF7857D9D56514F81F025A0D2CBFDDDDA2688305881E183A2C8338726BA24D9DCA885B4D3B47EB6BD9F9B0CF863DCCB0075ADB212D5BB367E2962BBA086017718302DB3140A7EE1FDBF6A01D62E1A3CDFE15BBE03F07D5FEBD0EC0EF10EB2F2B3F0FC32878C0DE58A4C2D5B75B70D7F054459EB1E1A9883EC6F054C4AF41E1E926F270F48E30DC374095033F8728C35CA9867A5B540DE49718E5938D41D94570C9ED6E772E92EAA7D13FD22F77E9DF142C8CCBFE51FFA6A56FAD4353FAEE70B2304B9658FD5DD9AB269AFC51F35DBDC778E71DE4B89F9DB6CD69AF637F952876CF59F01664A623BD3295F702965AE2C0CFB7C4EF8F0497D2881DE25475EE4598BF469C920D39CC647B9F6589EFC9FEED65897DB1F749AED03DA274FF56F03EE002BD852078C03BA39C51C6A69DC6D0DE9497BA44F673CE0397A4F2A849A83A22AA4B7CC33C6BDB7931D3AA74DE04DD42542721C4719061667FA369AE05B64CB3156C757C55714FEC7A1EB86117986281AD73377B809A23EE224FDF3AD08FA7B640EAC05112BB119DC36E4132224CE87986309784886E91BE36AE63864AE42A67A87FB9C021664972D9B21F5DA696AF21BA08E54C35956DD3D0D491CCABDDEA340F309987D91D2AF3C84F277BB48D16791ACC55BAEA6CF383414667D2C9018CCEB4FC2E5397D794E7B338E540DDBAC5CDA7EB417BDC86DC603D8618FAFCB1CE28FDA1ECAE694FBACC2D5D280F607A59E285310246E0A878E14302256DF8B1E985168EC4F9558AE7478DBA0925984B2CD4F84D92A34395E8B56CA919A28A52BD6C6B18A5116E8128F7A50944F2912E3046086DB8A4796D35D25B97D4CDF41E5637870EC79D527659819A5D7538E04840F27ED69D575D6C0745E8A74B5D11EDF9B75B0696E42FF6AF450DC6C45987C9AD69376A505F500C7A3067858E79A1D3123A66820EE6D5A28CE2DC5F869FAA94EC64B5E4A2E6EC188ACED32B1486703F928AD0798BB5CC2AD0F36F97FD2BB37E86E1B8BCA1405B4A5BCE2482086D70ED2B4C0D925E92888B249CAE5072439B7BBED64D0EB686C053CCA4C5537DCF8A90540C497ECEEFFC2D95E286CC94035CC2D2FC24B5A52F487A1468189A3201104551C383D53CA0B1CFCC59D63C3A2B6DC9E3B396EE084ADD4A06523EE87853A7A60B2D2D6B6AD78E34EA4676DAE6D2A1C66EB2215874D863E3C897B6C526BCBC422023E54DDD31F2F2A38C913775C7C8EB8F8A6AB3A61E1879755101C9DBFAA054D54515A96AEF8E265FED65B4B62BFFB339A4942DC7BA6475D8ECEF942D63F7E396E555588630DE8FCD3855D14E06AA5A0FEB96D23D4BC5315EBF9ED7F0766474430DEEA0C656549A34832B3E74C7CBAB493252DED453A6AC9AA449943577C7AAEA493254D5DA1D492D18C968EA979E880D50BDB25D56F351B25DD6D40723A9E8A810BE76BD6F4328CB353248D9D8234854E518254854CD070E12DA95A9DEA59CBDBC3AD5AE48D3FCBAB29DBCABDD5FB22EB6054A7A205E7277593E7181FD49D261B2FC93CE2981F5561DAE10236BCC45561CB74F8F4F4E6BF4DF4F878AEB70EED186EB5E131F57DDAF0354F849A2D5AD35FC9EA56D992CC81E50E4DEA348E3C1569803A98105F2573E7AFCBA1DAF377BF4E5EE43076DED5AFB3A9EC28F5AD3008971DCCB547B639897A356A3B22B5764802C1AB372088ACEAA4CF5A23DB32F98871F67F65FE9B0336BF1FB5D35F2C84A0F1F67D6B1F5F7160106701E5F865BD588865D959C0FEBA1617DEA3A3D7188E1EFC0F9346E62571D9403F766672FC9C6545EDCA818A570DF866DBA467DF3E067B10BEADBA89535D1DBC603EE0449A1A98D44AAA868A3806A74B37159BC4E29DBC1896C0433ABAA781E9A33A5553987B1C106D1115A0A2DFBE25ABD446ED5F332A93276C0A1B9530765ACBC286E540F377F5166D327001CD4703E056E935E9537BCC16BFF64AD85BB94BD8CC1596B15C04E67D9B4852663E036B5519B9A6630522E8CC4A776DE53D31C2D2C97C659CCB42823BA8E7C08CA547D5F555243078E5413FBE5132544E9A49F6E7C9F66B2D0A74877EAB1277B5A6A0F3293FE020F514EFA4F3620CA72B2A92092FF72836157896F659F055B0745A4AD495474A95F2EB040702944E791206BE40AF8EC62CED37F66F22BA231747903375A6FC16E6211C602968CFD15559C2209D76DF3A78C2D55E6E94DFA32C977B104109324F7DA1BF63A26D42BE5BE6C789730402479207F0948F652242F029BA712E93AA8EFBE0928575F99BE6EB11F5200E3376C891EF010D9E0E6FD0E6F90FB541452CC20DB374255FBF482A04D847C9E6354E3E157B061CF7FFCE17F7219AEA66B460000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202206091930533_InitialCreate', N'Abc.MvcWebUI.Identity.IdentityDataContext', 0x1F8B0800000000000400E55CDB6EE436127D5F20FF20E82959382D5F7606B34677024FDBDE35767CC1B49DE46DC096D86D6224AA23528E8D45BE6C1FF693F6179694A80B29529796AC6E271860D012C953C56291552C55F97FFFF9EFF4C7E7C0B79E6044508867F6D1E4D0B62076430FE1F5CC8EE9EAFB0FF68F3F7CF397E985173C5B3F65FD4E783F36129399FD48E9E6D47188FB080340260172A390842B3A71C3C0015EE81C1F1EFEDD393A722083B01996654D3FC798A200260FEC711E62176E680CFCEBD0833E11EF59CB2241B56E4000C906B870669F2DDDC9F593FB335C3E5C4DAE3CC880E88B6D9DF908306616D05FD916C038A48032564F1F085CD028C4EBC586BD00FEFDCB06B27E2BE01328A6705A746F3B9BC3633E1BA7189841B931A161D011F0E84488C751876F25643B171F13E045221F3EEB4488333B13D9E7D0670250099ECEFD88779ED9D7398933B2B9813497F52485BC8C18DC6F61F47552463CB05A8F3BC8D5E97872C8FF1D58F3D8A771046718C63402FE8175172F7DE4FE0BBEDC875F219E9D1C2D57271FDEBD07DEC9FBBFC19377E599B2B9B27ED20BF6EA2E0A373062BCC1553E7FDB72E4718E3A301F561A934A85E912DB19B6750D9E3F41BCA68F6CCF1C7FB0AD4BF40CBDEC8D50AE078CD84662836814B3C79BD8F7C1D28779BB534B93FF5F43F5F8DDFB41A8DE8027B44E965EA1CF364E446CEB33F49356F28836E9F692D6FB8BE8761985017F96F52B6DFDB208E3C8E593098D5DEE41B48654E66EEA14CADB4AA539D4F06A9DA1EEBF6A734EABEAADEDCA27B4CD4EC8488CBD1B327E5F976E6B8D039B902D5EA25A3193489DC269EDD5440138B0CADD0AF5396AAB3E984DCBB63E02028584D48D6AD78AF71C1237429BD4E41865CC7EB692F156223DDB640279D84AA2F2F86104FAE7352FDB2C7595C8228EF018742E0280FC018C650B2ACC555DA12880F9927D0CD9EE02B8F302DC014298ADF0FE09C8E3EB2F0474E388ED920505C1E6D5A9DD3D8618DEC4C192EFE3F1680DB634F7BF8597C0A5617481F9A8DE789F42F76B18D30BEC9D030A1FA89B01F2C77B14B40718849D33D785845C326586DE3C6437B10CF00AD393E3CE70FCB8DDB5B33AF7010AF4DEAA6C17BE643D0B8755DBA1E2B3EA7BE9DCD63A3E3F856B845BF199F534F2997668E253F4EACA27C76AC5A6E868E432696F6232ED34D81520599BE1EF0009ECFE5F02FA3920A623A024C6053B18E13F2086113BBDBC3B40298C70B1026D8E8B5D383CC9F271A2AF6E92124A3F013F1E9AD456BB21390186DF0D09ECFEEF86844DF6FA0979DC19697133CE3A33F856FDF597EEE63DA77036F67690A63936F171CE00D3763923247451B20B34315111D192F967AE9BD51CDE32DCBCAD6BA6E8889B3CF686CDCD5695EA169F431F52689DB969CC780E880BBCAA18D984BC0E8C651655C358112A9399FB6B8526D37418F14180DF7D08DBA908D3EAB640D8451BE0374A4919D9D284F1B9E734D49673B88198136C94441BE2FAC8186720A7A32C4A9384A64E49E3EA1551EFAC9A96BCC1732D565D8DAD8CA290F51EB3412785EFF62A4A592BAE11F4B256206DE81BE3BB3B504D713F69B9F8EA6565BF5453B924195453385263A8A62CAEF1555316C85B53CDF44EDA72ED950BEA7E29A67C311EDF8CD7C96A7CAD94A4B1674A997A9A6C0C652360A4F895E78002DE069FA9E626C6D814973122FC5A553D38C6025239385338B75AA7D3A9075135A80EB0D0B20650F131B802A4EEA50EBC65F1BA5AE684D7D001360BAFD5C28A135F812D694015BBFC4DBCD4D1FCE55C55CD56378D7C66B9325454BCD5C5A084A3D107F5DC9227DE422886D06B552E2DDCDE0E8E6F695662256AA453EFA51A0494CD646809655AD928219DF7D5C1FFEA2321C5593248289BC9D01212AAD928208D0FD0DE0BE8231ED9640FB4C1B248466E5FF2B6A99366C8891753C7904A37BD069B0DC2EB526A9D78632DD2BCBAF9F78BEED966418AE1B844937496739B53A26104D6506965A419A797282294DBC925E0719CB91754BAE9ACA9E1C4CF28960D667509B3A33FEBCD7F8BE39CF0DFB7AB6FF5B906E523F53B8D2B22002FD96C03EECE2421738D2E54133304C0C2053E883451FA79E8C701367B57E6D1E927BAF2F8F44D1561EA28FC57DCA78AE8BAC8B65542CC1B11AA94375386911AB4784C833D945C62924F059A9C22090F71BC0061C066BD378B562FF25DAF5845C2B2833CAA78B3F6E26C6A7572558DC6708B967BF5DB2F9C19C2B478D995AC2C7CD335CD8C92C568CB28A6B8EDCED6CEE4DF775D2FE5F2D47DB59A00766D6F4C0879F65819247FD91E4764879551C4AB8E18A504A30A58A9AD3DAA9C0356C6945B3AC84C4EF49224273775E0B29CCE2531596ED80ACF20517D8FF614AA095C65F46A6B7B644D2A57195AD3BC05B68667B5AD3DAA26DBAB0CAC696E8F5DA47EA9E7F96BF99603D8516374A18F214D2350FD2CA901E3758EE7610C7129A9A60C547ADD114BA4CD54C0C4FBBD54286330A68F42A5B1C77E0A65C0309F3F52468A7CFCD4A6D19831A53413E988AF4BB331E37553DB57558E4A5046ED9253CF83334A10662A0222CD458F950849DAC5B6323132F3FE42280C26BCC364F1AB3FF711E48779D6E11A60B48284A6A955F6F1E1D1B15234B93F058C0E219EAF092899AA18E5351B214B123F81C87D04513567A9471546015AF94274853DF83CB3FF9D8C3A4D028FFC57F2FAC0BA220F18FD1AB386FB2886D6EFD5D4EB8E5C69AA8132E6BE0DC0F37765C0360991CAEDBA970C872C0ACCC5FAFB9BA8B66BAF2057BF7C49871E58B711DBFCA7D6A1A216DB28AB5C83D7899B74680F6EB62D23FB631D0D5BED3EA508AB17965468A59DAA72DE6C5F57B54474909AAA7EB2D3D54DF542D4D4460D853788084DB54FDB6019EB9E3CF64893BAA76E93D5D7416DC39AB1060AE1EE606A0554FBA3311B398C25EF512D33FA3999C8B9B194A4575EF9AEED65A5E2A4D746AF569574801BB472A49FDBF4C62A3206B3E79A828BC1B077A9F7AF5E65B12F8515C54562B7F514639650D47C23FC03554EEC3EEF5793CCB8F30289B1F5CC1442DFEF64F34E7510FBA568C2BEEFBCDC616C453385D6F75BD1BA5435EC979EEDCA68EE56CB5A9BCD9D572954D32F0D9FC074B1F7A63284F44305BBF22F43A603A91799968AEB93604DC40A5D31122CBA98899AB36F55C2EAB6A990553BD413ED365361E56BA72AFAD4933564AAD7D116077F2D6DD1A79EB621077C17F513DA4C6C5D494BC321569703F766EA25A469D497E63439A9B5990C6FA63C62088148BBC6F025FE8D54430C218E21B74B87EA87EA0775662D4B7F6B98596C82D60504CF11C6D095EC64DEE70AAFC2CC5C2B1C655D9438CC35A4C06346F42CA268055CCA9A799839F9EB162207F9225842EF0ADFC67413533665182C7D29ACC5CD7E1DFDA4C443E6797A9B7CAB25434C81B1897878FE167F8C91EFE57C5F6A223F0608EE4F88A02E5F4BCA83BBEB971CE926C42D8184F87237E81E061B9F81915BBC004F701BDE98FA7D826BE0BE14713E1348F342C8629F9E23B08E40400446319E3D321DF682E71FFE0F153F9D46725B0000, N'6.4.4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'0c3ba3c6-ec3a-44f9-b14b-e0cb3716c9f1', N'admin', N'Yönetici Rolü', N'apolicationuser')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'57a08c65-9128-4e6f-ae93-2e9008a8a715', N'user', N'Kullanıcı Rolü', N'apolicationuser')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27976847-6bd7-49f8-b022-8549914f0ac3', N'0c3ba3c6-ec3a-44f9-b14b-e0cb3716c9f1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a6f8379-9db7-402f-a242-5d524c19952e', N'57a08c65-9128-4e6f-ae93-2e9008a8a715')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27976847-6bd7-49f8-b022-8549914f0ac3', N'57a08c65-9128-4e6f-ae93-2e9008a8a715')
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0a6f8379-9db7-402f-a242-5d524c19952e', N'Furkan', N'Altay', N'furkanaltay@gmail.com', 0, N'AKnluLfxYqRzKd7Lm5gPf3/iE3TZJ5UsESKA2ICHD1WxMeCuLOHFKUqUR96iTYTo+w==', N'0d00270b-0f3d-49f3-a4fa-ffbadfe78a7c', NULL, 0, 0, NULL, 0, 0, N'furkanaltay')
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'27976847-6bd7-49f8-b022-8549914f0ac3', N'Enes', N'Tikici', N'enes.tikici123@hotmail.com', 0, N'APJc8IBy69EcH1nvJTgJTBuCjBzRDrYJh4eG86cs18P0v3s4UwQMszud+FX3TvssQA==', N'dda1b54d-9945-4592-bfcf-911285613451', NULL, 0, 0, NULL, 0, 0, N'enestikici')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Kamera', N'Kamera ürünleri')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Bilgisayar', N'Bilgisayar ürünleri')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Televizyon', N'Televizyon ürünleri')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Telefon', N'Telefon ürünleri')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (5, N'Beyaz Eşya', N'Beyaz Eşya ürünleri')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderLines] ON 

INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (1, 2, 1, 1200, 2)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (2, 2, 1, 2500, 9)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (3, 3, 1, 1200, 1)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (4, 3, 1, 4500, 7)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (5, 4, 1, 1200, 1)
SET IDENTITY_INSERT [dbo].[OrderLines] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderNumber], [Total], [OrderDate], [Username], [AdresBasligi], [Adres], [Sehir], [Semt], [Mahalle], [PostaKodu]) VALUES (1, N'A91989', 2400, CAST(N'2022-06-06 01:22:56.907' AS DateTime), NULL, N'zafer mah 131 sok no12 daire8', N'zafer mah 131 sok no12 daire8', N'efeler', N'jhgjhg', N'jghjhg', N'09000')
INSERT [dbo].[Orders] ([Id], [OrderNumber], [Total], [OrderDate], [Username], [AdresBasligi], [Adres], [Sehir], [Semt], [Mahalle], [PostaKodu]) VALUES (2, N'A96771', 3700, CAST(N'2022-06-06 01:27:09.547' AS DateTime), NULL, N'zafer mah 131 sok no12 daire8', N'zafer mah 131 sok no12 daire8', N'aydın', N'efeler', N'131', N'09000')
INSERT [dbo].[Orders] ([Id], [OrderNumber], [Total], [OrderDate], [Username], [AdresBasligi], [Adres], [Sehir], [Semt], [Mahalle], [PostaKodu]) VALUES (3, N'A28782', 5700, CAST(N'2022-06-06 11:59:41.113' AS DateTime), NULL, N'zafer mah 131 sok no12 daire8', N'zafer mah 131 sok no12 daire8', N'efeler', N'bhubh', N'bvygv', N'09000')
INSERT [dbo].[Orders] ([Id], [OrderNumber], [Total], [OrderDate], [Username], [AdresBasligi], [Adres], [Sehir], [Semt], [Mahalle], [PostaKodu]) VALUES (4, N'A83295', 1200, CAST(N'2022-06-09 22:31:04.653' AS DateTime), NULL, N'zafer mah 131 sok no12 daire8', N'zafer mah 131 sok no12 daire8', N'efeler', N'gerg', N'gergre', N'09000')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (1, N'Canon Eos 1200D 18-55 mm DC Profesyonel Dijital Fotoğraf Makinesi', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 1200, 500, N'1.jpg', 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (2, N'Canon Eos 100D 18-55 mm DC Profesyonel Fotoğraf Makines', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 1200, 500, N'2.jpg', 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (3, N'Canon Eos 700D 18-55 DC DSLR Fotoğraf Makinesi', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 1200, 500, N'3.jpg', 1, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (4, N'Canon Eos 100D 18-55 mm IS STM Kit DSLR Fotoğraf Makinesi', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 1200, 500, N'4.jpg', 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (5, N'Canon Eos 700D + 18-55 Is Stm + Çanta + 16 Gb Hafıza Kartı', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 1200, 500, N'5.jpg', 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (6, N'Dell Inspiron 5567 Intel Core i5 7200U 8GB 1TB R7 M445 Windows 10 Home 15.6 FHD Taşınabilir Bilgisayar FHDG20W81C', NULL, 1200, 500, NULL, 0, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (7, N'Lenovo Ideapad 310 Intel Core i7 7500U 12GB 1TB GT920M Windows 10 Home 15.6 Taşınabilir Bilgisayar 80TV028XTX', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 4500, 1200, N'1.jpg', 1, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (8, N'Asus UX310UQ-FB418T Intel Core i7 7500U 8GB 512GB SSD GT940MX Windows 10 Home 13.3 QHD Taşınabilir Bilgisayar', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 3400, 0, N'2.jpg', 1, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (9, N'Asus UX310UQ-FB418T Intel Core i7 7500U 16GB 512GB SSD GT940MX Windows 10 Home 13.3 QHD Taşınabilir Bilgisayar', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 2500, 600, N'3.jpg', 0, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (10, N'Asus N580VD-DM160T Intel Core i7 7700HQ 16GB 1TB + 128GB SSD GTX1050 Windows 10 Home', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 5200, 500, N'4.jpg', 0, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (11, N'LG 49UH610V 49 124 Ekran 4K Uydu Alıcılı Smart LED TV', NULL, 1200, 500, N'1.jpg', 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (12, N'Vestel 49UB8300 49 124 Ekran 4K Smart Led Tv', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 5600, 1200, N'2.jpg', 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (13, N'Samsung 55KU7500 55 140 Ekran [4K] Uydu Alıcılı Smart[Tizen] LED TV', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 3400, 0, N'3.jpg', 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (14, N'LG 55UH615V 55 140 Ekran 4K Uydu Alıcılı Smart Wi-Fi [webOS 3.0] LED TV', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 2500, 600, N'4.jpg', 1, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (15, N'Sony Kd-55Xd7005B 55 140 Ekran [4K] Uydu Alıcılı Smart LED TV', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 5200, 500, N'5.jpg', 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (16, N'Apple iPhone 6 32 GB (Apple Türkiye Garantili)', NULL, 1200, 500, N'1.jpg', 0, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (17, N'Apple iPhone 7 32 GB (Apple Türkiye Garantili)', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 5600, 1200, N'2.jpg', 1, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (18, N'Apple iPhone 6S 32 GB (Apple Türkiye Garantili)', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 3400, 0, N'3.jpg', 1, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (19, N'Case 4U Manyetik Mıknatıslı Araç İçi Telefon Tutucu', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 2500, 600, N'4.jpg', 0, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [Stock], [Image], [IsHome], [IsApproved], [CategoryId]) VALUES (20, N'Xiaomi Mi 5S 64GB (İthalatçı Garantili)', N'Kullanmayı çok seveceğiniz ergonomik tasarım Optik vizör, çekiminizi oluşturmanıza ve tahmin etmenize olanak tanıyarak her zaman anın arkasındaki duyguyu yakalamak için hazır olmanızı sağlar. Sezgisel kullanımlı kullanıcı dostu kontrolleri ve görüntüyü incelemek için 7,5 cm''lik (3 inç) geniş LCD ekranıyla EOS 1200D''yi kullanması çok keyiflidir.', 5200, 500, N'5.jpg', 0, 1, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16.06.2022 21:48:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 16.06.2022 21:48:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_OrderId] ON [dbo].[OrderLines]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[OrderLines]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 16.06.2022 21:48:25 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderLines]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderLines_dbo.Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLines] CHECK CONSTRAINT [FK_dbo.OrderLines_dbo.Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderLines]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderLines_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLines] CHECK CONSTRAINT [FK_dbo.OrderLines_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [AbcDb] SET  READ_WRITE 
GO
