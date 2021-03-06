/****** Object:  ForeignKey [FK_AuditRoll_AppUser]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] DROP CONSTRAINT [FK_AuditRoll_AppUser]
GO
/****** Object:  ForeignKey [FK_AuditRoll_AppUser1]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser1]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] DROP CONSTRAINT [FK_AuditRoll_AppUser1]
GO
/****** Object:  ForeignKey [FK_AuditRoll_AuditRoll]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AuditRoll]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] DROP CONSTRAINT [FK_AuditRoll_AuditRoll]
GO
/****** Object:  ForeignKey [FK_Inventory_Product]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_Product]
GO
/****** Object:  ForeignKey [FK_Inventory_SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_SaleDetail]
GO
/****** Object:  ForeignKey [FK_InventoryDetails_InventoryDetails]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_InventoryDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail] DROP CONSTRAINT [FK_InventoryDetails_InventoryDetails]
GO
/****** Object:  ForeignKey [FK_InventoryDetails_SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail] DROP CONSTRAINT [FK_InventoryDetails_SaleDetail]
GO
/****** Object:  ForeignKey [FK_PosSalesTransaction_AppUser]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PosSalesTransaction_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] DROP CONSTRAINT [FK_PosSalesTransaction_AppUser]
GO
/****** Object:  ForeignKey [FK_SaleDetail_Product]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail] DROP CONSTRAINT [FK_SaleDetail_Product]
GO
/****** Object:  ForeignKey [FK_SaleDetail_Sale]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail] DROP CONSTRAINT [FK_SaleDetail_Sale]
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertProduct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertProduct]
GO
/****** Object:  StoredProcedure [dbo].[InsertSaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertSaleDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertSaleDetail]
GO
/****** Object:  Table [dbo].[InventoryDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventoryDetail]') AND type in (N'U'))
DROP TABLE [dbo].[InventoryDetail]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inventory]') AND type in (N'U'))
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleDetail]') AND type in (N'U'))
DROP TABLE [dbo].[SaleDetail]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
DROP TABLE [dbo].[Sale]
GO
/****** Object:  Table [dbo].[AuditRoll]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditRoll]') AND type in (N'U'))
DROP TABLE [dbo].[AuditRoll]
GO
/****** Object:  Table [dbo].[AppInfo]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppInfo]') AND type in (N'U'))
DROP TABLE [dbo].[AppInfo]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppUser]') AND type in (N'U'))
DROP TABLE [dbo].[AppUser]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Default [DF_Users_isadmin]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppUser]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppUser] DROP CONSTRAINT [DF_Users_isadmin]
END


End
GO
/****** Object:  Default [DF_SaleDetail_Extended Prce]    Script Date: 05/02/2013 22:47:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaleDetail_Extended Prce]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SaleDetail_Extended Prce]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SaleDetail] DROP CONSTRAINT [DF_SaleDetail_Extended Prce]
END


End
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Price] [float] NOT NULL,
	[Unit] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Discount] [float] NOT NULL,
	[Tax] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [IX_Product] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ID], [Code], [Name], [Price], [Unit], [Discount], [Tax]) VALUES (23, N'000', N'Product 000', 100, N'box', 0, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Price], [Unit], [Discount], [Tax]) VALUES (24, N'001', N'Product 001', 1000, N'pcs', 1, 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Price], [Unit], [Discount], [Tax]) VALUES (25, N'002', N'Product 002', 2000, N'dus', 2, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[AppUser]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Role] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppUser]') AND name = N'IX_AppUser')
CREATE UNIQUE NONCLUSTERED INDEX [IX_AppUser] ON [dbo].[AppUser] 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[AppUser] ON
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Role]) VALUES (17, N'eko', N'HGtKxT7czTHzcRtjh9ybyw==', N'Cashier')
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Role]) VALUES (18, N'admin', N'3crwN8cGr7s=', N'Admin')
SET IDENTITY_INSERT [dbo].[AppUser] OFF
/****** Object:  Table [dbo].[AppInfo]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsInit] [tinyint] NOT NULL,
	[Company Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Company Address] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Branch Code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_AppInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[AppInfo] ON
INSERT [dbo].[AppInfo] ([ID], [IsInit], [Company Name], [Company Address], [Branch Code]) VALUES (1, 0, N'Koperasi Penjara Malaysia', N'Malaysia', NULL)
SET IDENTITY_INSERT [dbo].[AppInfo] OFF
/****** Object:  Table [dbo].[AuditRoll]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditRoll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AuditRoll](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Start of Cash] [float] NOT NULL,
	[End of Cash] [float] NOT NULL,
	[Cash Difference] [float] NOT NULL,
	[Time Start] [datetime] NOT NULL,
	[Time Ended] [datetime] NULL,
	[Started By] [int] NOT NULL,
	[Ended By] [int] NULL,
	[Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_AuditRoll] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[AuditRoll] ON
INSERT [dbo].[AuditRoll] ([id], [Start of Cash], [End of Cash], [Cash Difference], [Time Start], [Time Ended], [Started By], [Ended By], [Note]) VALUES (13, 1000, 100000, 0, CAST(0x0000A1A300000000 AS DateTime), CAST(0x0000A1A300F3E191 AS DateTime), 18, NULL, N'00')
INSERT [dbo].[AuditRoll] ([id], [Start of Cash], [End of Cash], [Cash Difference], [Time Start], [Time Ended], [Started By], [Ended By], [Note]) VALUES (14, 900, 900000, 0, CAST(0x0000A1A300F3F0BA AS DateTime), CAST(0x0000A1A300F44FCC AS DateTime), 18, NULL, N'what?')
SET IDENTITY_INSERT [dbo].[AuditRoll] OFF
/****** Object:  Table [dbo].[Sale]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[Total Quantity] [int] NULL,
	[Total Discount] [float] NULL,
	[Total Tax] [float] NULL,
	[Total Price] [float] NULL,
	[Total Extended Price] [float] NULL,
	[Payment] [float] NULL,
	[Change] [float] NULL,
 CONSTRAINT [PK_PosSalesTransaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Tax] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Extended Price] [float] NULL,
	[SaleID] [int] NOT NULL,
 CONSTRAINT [PK_SaleDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inventory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Inventory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Current Quantity] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[SaleDetailID] [int] NULL,
	[Minimum Stock] [int] NULL,
	[Message] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON
INSERT [dbo].[Inventory] ([ID], [ProductID], [Current Quantity], [Date], [SaleDetailID], [Minimum Stock], [Message]) VALUES (23, 23, 10, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 1, N'Initial stock')
INSERT [dbo].[Inventory] ([ID], [ProductID], [Current Quantity], [Date], [SaleDetailID], [Minimum Stock], [Message]) VALUES (24, 24, 100, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 10, N'Initial stock')
INSERT [dbo].[Inventory] ([ID], [ProductID], [Current Quantity], [Date], [SaleDetailID], [Minimum Stock], [Message]) VALUES (25, 25, 200, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 20, N'Initial stock')
SET IDENTITY_INSERT [dbo].[Inventory] OFF
/****** Object:  Table [dbo].[InventoryDetail]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventoryDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InventoryDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[SaleDetailID] [int] NULL,
	[Change] [int] NOT NULL,
	[Message] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Current Stock] [int] NULL,
 CONSTRAINT [PK_InventoryDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[InventoryDetail] ON
INSERT [dbo].[InventoryDetail] ([ID], [InventoryID], [Date], [SaleDetailID], [Change], [Message], [Current Stock]) VALUES (30, 23, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 10, N'Initial stock', 10)
INSERT [dbo].[InventoryDetail] ([ID], [InventoryID], [Date], [SaleDetailID], [Change], [Message], [Current Stock]) VALUES (31, 24, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 100, N'Initial stock', 100)
INSERT [dbo].[InventoryDetail] ([ID], [InventoryID], [Date], [SaleDetailID], [Change], [Message], [Current Stock]) VALUES (32, 25, CAST(0x0000A1A300F21EE7 AS DateTime), NULL, 200, N'Initial stock', 200)
SET IDENTITY_INSERT [dbo].[InventoryDetail] OFF
/****** Object:  StoredProcedure [dbo].[InsertSaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertSaleDetail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[InsertSaleDetail]
	@SaleDetailID int output,
    @ProductID int,
    @Qty int,
	@Tax float,
	@Discount float,
	@Price float,
	@SaleID int
AS
BEGIN
	declare @InventoryCurrentQuantity int;
	declare @InventoryNextQuantity int;
	declare @ProductName varchar(255);
    declare @msg varchar(255);	
	declare @InventoryID int;

    begin try 
		begin transaction
        --Update SaleDetail
        INSERT INTO dbo.SaleDetail(ProductID, Qty, Tax, Discount, Price, [Extended Price], SaleID)
        VALUES (@ProductID, @Qty, @Tax, @Discount, @Price, @Price+@Tax-@Discount,@SaleID);
		set @SaleDetailID = CAST (SCOPE_IDENTITY() as Int);

        --Update Inventory here		
		SELECT @InventoryCurrentQuantity = [Current Quantity]
		FROM Inventory 
		WHERE ProductID = @ProductID;

		set @InventoryNextQuantity = @InventoryCurrentQuantity - @Qty;

		if @InventoryNextQuantity >= 0
			begin

				-- this should insert a history of inventory
				UPDATE dbo.Inventory
				SET [Current Quantity] = @InventoryNextQuantity,
				Message=''POS Sale'',
				Date = GETDATE()
				WHERE ProductID = @ProductID;

				SELECT @InventoryID = ID
				FROM Inventory 
				WHERE ProductID = @ProductID;
								
				insert into dbo.InventoryDetail(InventoryID, SaleDetailID, Date, Change, Message, [Current Stock]) 
				values(@InventoryID, @SaleDetailID, GETDATE(), -@Qty,''POS Sale'', @InventoryNextQuantity);

			end 
		else		
			begin
				RAISERROR (''Stock will become negative'',
				   16, -- Severity.
				   1 -- State.
				   );
			end
			SET @SaleDetailID = CAST (SCOPE_IDENTITY() as Int)
        commit transaction;
    end try
    begin catch
		rollback transaction 
		SELECT @ProductName = [Name]
		FROM Product 
		WHERE ID = @ProductID;
		
		set @msg = ''Stock of product "''+Convert(varchar(255),@ProductName) +''" will become negative'';
		RAISERROR (@msg,
				   16, -- Severity.
				   1 -- State.
				   );
        
    end catch
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 05/02/2013 22:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertProduct]
    @Code varchar(255), 
	@Name varchar(255), 
	@Price float, 
	@Unit varchar(255), 
	@Discount float, 
	@Tax float, 
	@Stock int,
	@MinimumStock int
AS
BEGIN

	declare @ProductID int;
	declare @InventoryID int;

	begin transaction my_tran
	begin try 
		insert into dbo.product(Code, [Name], Price, Unit, Discount, Tax)
		values(@Code, 
		@Name, 
		@Price, 
		@Unit, 
		@Discount, 
		@Tax);

		set @ProductID = SCOPE_IDENTITY();

		insert into dbo.Inventory(ProductID,[Current Quantity], [Date],[Minimum Stock],Message) 
		values (@ProductID, @Stock, GETDATE(),@MinimumStock,''Initial stock'');

		SET @InventoryID = CAST (SCOPE_IDENTITY() as Int)
		insert into dbo.InventoryDetail(InventoryID, Date, Change, Message, [Current Stock]) 
		values(@InventoryID, GETDATE(), @Stock,''Initial stock'', @Stock);

		commit transaction;
	end try
    begin catch
        rollback transaction
		RAISERROR (''Error inserting product. Existing product code'',
				   16, -- Severity.
				   1 -- State.
				   );
    end catch
END
' 
END
GO
/****** Object:  Default [DF_Users_isadmin]    Script Date: 05/02/2013 22:47:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppUser]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppUser] ADD  CONSTRAINT [DF_Users_isadmin]  DEFAULT ((0)) FOR [Role]
END


End
GO
/****** Object:  Default [DF_SaleDetail_Extended Prce]    Script Date: 05/02/2013 22:47:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaleDetail_Extended Prce]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SaleDetail_Extended Prce]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SaleDetail] ADD  CONSTRAINT [DF_SaleDetail_Extended Prce]  DEFAULT ((0)) FOR [Extended Price]
END


End
GO
/****** Object:  ForeignKey [FK_AuditRoll_AppUser]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll]  WITH CHECK ADD  CONSTRAINT [FK_AuditRoll_AppUser] FOREIGN KEY([Started By])
REFERENCES [dbo].[AppUser] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] CHECK CONSTRAINT [FK_AuditRoll_AppUser]
GO
/****** Object:  ForeignKey [FK_AuditRoll_AppUser1]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser1]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll]  WITH CHECK ADD  CONSTRAINT [FK_AuditRoll_AppUser1] FOREIGN KEY([Ended By])
REFERENCES [dbo].[AppUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AppUser1]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] CHECK CONSTRAINT [FK_AuditRoll_AppUser1]
GO
/****** Object:  ForeignKey [FK_AuditRoll_AuditRoll]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AuditRoll]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll]  WITH CHECK ADD  CONSTRAINT [FK_AuditRoll_AuditRoll] FOREIGN KEY([id])
REFERENCES [dbo].[AuditRoll] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditRoll_AuditRoll]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditRoll]'))
ALTER TABLE [dbo].[AuditRoll] CHECK CONSTRAINT [FK_AuditRoll_AuditRoll]
GO
/****** Object:  ForeignKey [FK_Inventory_Product]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Product]
GO
/****** Object:  ForeignKey [FK_Inventory_SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_SaleDetail] FOREIGN KEY([SaleDetailID])
REFERENCES [dbo].[SaleDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inventory_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inventory]'))
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_SaleDetail]
GO
/****** Object:  ForeignKey [FK_InventoryDetails_InventoryDetails]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_InventoryDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_InventoryDetails_InventoryDetails] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_InventoryDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail] CHECK CONSTRAINT [FK_InventoryDetails_InventoryDetails]
GO
/****** Object:  ForeignKey [FK_InventoryDetails_SaleDetail]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_InventoryDetails_SaleDetail] FOREIGN KEY([SaleDetailID])
REFERENCES [dbo].[SaleDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryDetails_SaleDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryDetail]'))
ALTER TABLE [dbo].[InventoryDetail] NOCHECK CONSTRAINT [FK_InventoryDetails_SaleDetail]
GO
/****** Object:  ForeignKey [FK_PosSalesTransaction_AppUser]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PosSalesTransaction_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_PosSalesTransaction_AppUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PosSalesTransaction_AppUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_PosSalesTransaction_AppUser]
GO
/****** Object:  ForeignKey [FK_SaleDetail_Product]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Product]
GO
/****** Object:  ForeignKey [FK_SaleDetail_Sale]    Script Date: 05/02/2013 22:47:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Sale] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SaleDetail_Sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaleDetail]'))
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Sale]
GO
