/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/27/2015 13:25:35 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/27/2015 13:25:35 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/27/2015 13:25:36 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/27/2015 13:25:36 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/27/2015 13:25:36 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/27/2015 13:25:37 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/27/2015 13:25:37 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/27/2015 13:25:38 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/27/2015 13:25:38 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/27/2015 13:25:38 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/27/2015 13:25:39 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/27/2015 13:25:39 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/27/2015 13:25:40 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/27/2015 13:25:40 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/27/2015 13:25:41 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/27/2015 13:25:41 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/27/2015 13:25:41 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/27/2015 13:25:42 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/27/2015 13:25:42 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/27/2015 13:25:43 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/27/2015 13:25:43 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/27/2015 13:25:44 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/27/2015 13:25:44 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/27/2015 13:25:44 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/27/2015 13:25:45 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/27/2015 13:25:45 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[PartialUser]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartialUser](
	[PartialUserId] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[MiddleName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
	[Contact] [nvarchar](256) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[PartialHouseId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PartialUser] PRIMARY KEY CLUSTERED 
(
	[PartialUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialUserUpdate]    Script Date: 02/27/2015 13:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialUserUpdate] 
    (@PartialUserId uniqueidentifier,
           @Email nvarchar(100),
           @FirstName nvarchar(256),
           @MiddleName nvarchar(256),
           @LastName nvarchar(256),
           @Contact nvarchar(256),
           @RoleId uniqueidentifier,
           @UserId uniqueidentifier,
           @UpdatedBy uniqueidentifier,
           @IsDeleted bit,
           @PartialHouseId uniqueidentifier,
			@UpdatedDate datetime output)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()
	
	BEGIN TRAN

	IF ((select UpdatedDate from [dbo].[PartialUser] where [PartialUserId] = @PartialUserId) <> @UpdatedDate)
	BEGIN
		print 'This record has been updated by someone else!'
	END

	UPDATE [Test_Project_DB].[dbo].[PartialUser]
   SET [PartialUserId] = @PartialUserId
      ,[Email] = @Email
      ,[FirstName] = @FirstName
      ,[MiddleName] = @MiddleName
      ,[LastName] = @LastName
      ,[Contact] = @Contact
      ,[RoleId] = @RoleId
      ,[UserId] = @UserId
	  ,[UpdatedBy] = @UpdatedBy
	  ,[UpdatedDate] = @UpdatedDate
      ,[IsDeleted] = @IsDeleted
      ,[PartialHouseId] = @PartialHouseId
		
		
	WHERE  [PartialUserId] = @PartialUserId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialUserSelect]    Script Date: 02/27/2015 13:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialUserSelect] 
    @PartialUserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [PartialUserId]
      ,[Email]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Contact]
      ,[RoleId]
      ,[UserId]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsDeleted]
      ,[PartialHouseId]
  FROM [dbo].[PartialUser]
	WHERE  ([PartialUserId] = @PartialUserId OR @PartialUserId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialUserInsert]    Script Date: 02/27/2015 13:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialUserInsert] 
   
     (@PartialUserId uniqueidentifier,
           @Email nvarchar(100),
           @FirstName nvarchar(256),
           @MiddleName nvarchar(256),
           @LastName nvarchar(256),
           @Contact nvarchar(256),
           @RoleId uniqueidentifier,
           @UserId uniqueidentifier,
           @CreatedBy uniqueidentifier,
           @UpdatedBy uniqueidentifier,
           @IsDeleted bit,
           @PartialHouseId uniqueidentifier,
		   @CreatedDate datetime output)

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	set @CreatedDate = getutcdate()
	
	INSERT INTO [Test_Project_DB].[dbo].[PartialUser]
           ([PartialUserId]
           ,[Email]
           ,[FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[Contact]
           ,[RoleId]
           ,[UserId]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsDeleted]
           ,[PartialHouseId])
     VALUES
           (@PartialUserId
           ,@Email
           ,@FirstName
           ,@MiddleName
           ,@LastName
           ,@Contact
           ,@RoleId
           ,@UserId
			,@CreatedBy
			,GETUTCDATE()
			,@CreatedBy
			,GETUTCDATE()
           ,@IsDeleted
           ,@PartialHouseId)
		
	
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialUserDelete]    Script Date: 02/27/2015 13:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialUserDelete] 
    @UserId uniqueidentifier,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[PartialUser]
	SET    
		[IsDeleted] = 1,
		[UpdatedBy] = @UpdatedBy,
		[UpdatedDate] = @UpdatedDate
		
	WHERE  [UserId] = @UserId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialUser_IsUserExist]    Script Date: 02/27/2015 13:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_PartialUser_IsUserExist]
    @PartialUserId  uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [PartialUser] where PartialUserId=@PartialUserId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  Table [dbo].[PartialHouse]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartialHouse](
	[PartialHouseId] [uniqueidentifier] NOT NULL,
	[PartialUserId] [uniqueidentifier] NULL,
	[StateId] [int] NULL,
	[ZipCode] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PartialHouse] PRIMARY KEY CLUSTERED 
(
	[PartialHouseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialHouseUpdate]    Script Date: 02/27/2015 13:24:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialHouseUpdate] 
    (@PartialHouseId uniqueidentifier
      ,@PartialUserId uniqueidentifier
      ,@StateId int
      ,@ZipCode nvarchar(256)
      ,@City nvarchar(256)
      ,@Address nvarchar(256)
      ,@UpdatedBy uniqueidentifier
      ,@IsDeleted bit
	  ,@UpdatedDate datetime output)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()
	
	BEGIN TRAN

	IF ((select UpdatedDate from [dbo].[PartialHouse] where [PartialHouseId] = @PartialHouseId) <> @UpdatedDate)
	BEGIN
		print 'This record has been updated by someone else!'
	END

	UPDATE [dbo].[PartialHouse]
   SET 
      [PartialUserId] = @PartialUserId
      ,[StateId] = @StateId
      ,[ZipCode] = @ZipCode
      ,[City] = @City
      ,[Address] = @Address
      ,[UpdatedBy] = @UpdatedBy
      ,[UpdatedDate] = @UpdatedDate
      ,[IsDeleted] = @IsDeleted

	WHERE  [PartialHouseId] = @PartialHouseId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialHouseSelect]    Script Date: 02/27/2015 13:24:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialHouseSelect] 
    @PartialHouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [PartialHouseId]
      ,[PartialUserId]
      ,[StateId]
      ,[ZipCode]
      ,[City]
      ,[Address]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsDeleted]
  FROM [dbo].[PartialHouse]
	WHERE  ([PartialHouseId] = @PartialHouseId OR @PartialHouseId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialHouseInsert]    Script Date: 02/27/2015 13:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialHouseInsert] 
   
     (@PartialHouseId uniqueidentifier
           ,@PartialUserId uniqueidentifier
           ,@StateId int
           ,@ZipCode nvarchar(256)
           ,@City nvarchar(256)
           ,@Address nvarchar(256)
           ,@CreatedBy uniqueidentifier
           ,@UpdatedDate datetime
           ,@IsDeleted bit
           ,@CreatedDate datetime output)

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	set @CreatedDate = getutcdate()
	
	INSERT INTO [dbo].[PartialHouse]
           ([PartialHouseId]
           ,[PartialUserId]
           ,[StateId]
           ,[ZipCode]
           ,[City]
           ,[Address]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsDeleted])
     VALUES
           (@PartialHouseId
           ,@PartialUserId
           ,@StateId
           ,@ZipCode
           ,@City
           ,@Address
           ,@CreatedBy
			,GETUTCDATE()
			,@CreatedBy
			,GETUTCDATE()
           ,@IsDeleted)

               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialHouseDelete]    Script Date: 02/27/2015 13:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PartialHouseDelete] 
    @PartialHouseId uniqueidentifier,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[PartialHouse]
	SET    
		[IsDeleted] = 1,
		[UpdatedBy] = @UpdatedBy,
		[UpdatedDate] = @UpdatedDate
		
	WHERE  [PartialHouseId] = @PartialHouseId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PartialHouse_IsHouseExist]    Script Date: 02/27/2015 13:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_PartialHouse_IsHouseExist]
    @PartialUserId uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from PartialHouse where [PartialUserId]=@PartialUserId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  Table [dbo].[Oraganization]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oraganization](
	[OraganizationId] [int] NOT NULL,
	[OraganizationName] [nvarchar](256) NOT NULL,
	[OraganizationCode] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Oraganization] PRIMARY KEY CLUSTERED 
(
	[OraganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'4Corners Christian Fellowship (4Corners)', N'4Corners Christian Fellowship (4Corners)', N'4Corners Christian Fellowship (4Corners)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'900 Magnolia at UCR (n/a)', N'900 Magnolia at UCR (n/a)', N'900 Magnolia at UCR (n/a)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'909 Hip Hop Dance Troupe (909)', N'909 Hip Hop Dance Troupe (909)', N'909 Hip Hop Dance Troupe (909)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Abyssinian Student Union (ASU)', N'Abyssinian Student Union (ASU)', N'Abyssinian Student Union (ASU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Academic Integrity Committee', N'Academic Integrity Committee', N'Academic Integrity Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Accounting Society at UC Riverside', N'Accounting Society at UC Riverside', N'Accounting Society at UC Riverside', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'ACE', N'ACE', N'ACE', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'Active Minds', N'Active Minds', N'Active Minds', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (9, N'acts2fellowship (a2f)', N'acts2fellowship (a2f)', N'acts2fellowship (a2f)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (10, N'Adventist Christian Fellowship (ACF)', N'Adventist Christian Fellowship (ACF)', N'Adventist Christian Fellowship (ACF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (11, N'Afghan Student Association (ASA)', N'Afghan Student Association (ASA)', N'Afghan Student Association (ASA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (12, N'African Americans in Humanities (AAH)', N'African Americans in Humanities (AAH)', N'African Americans in Humanities (AAH)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (13, N'African Americans United in Science (AAUS) (AAUS)', N'African Americans United in Science (AAUS) (AAUS)', N'African Americans United in Science (AAUS) (AAUS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (14, N'African Student Programs (ASP)', N'African Student Programs (ASP)', N'African Student Programs (ASP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (15, N'Afsana: Hindi Film Dance Team (Afsana)', N'Afsana: Hindi Film Dance Team (Afsana)', N'Afsana: Hindi Film Dance Team (Afsana)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (16, N'Ahmadiyya Muslim Student Association (AMSA)', N'Ahmadiyya Muslim Student Association (AMSA)', N'Ahmadiyya Muslim Student Association (AMSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (17, N'Aikido Organization at UCR (AOU) (Aikido Club)', N'Aikido Organization at UCR (AOU) (Aikido Club)', N'Aikido Organization at UCR (AOU) (Aikido Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (18, N'Allies Program', N'Allies Program', N'Allies Program', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (19, N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (20, N'Alpha Epsilon Pi Fraternity (AEPi)', N'Alpha Epsilon Pi Fraternity (AEPi)', N'Alpha Epsilon Pi Fraternity (AEPi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (21, N'Alpha Gamma Alpha Sorority', N'Alpha Gamma Alpha Sorority', N'Alpha Gamma Alpha Sorority', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (22, N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (23, N'Alpha Kappa Psi (AKPsi)', N'Alpha Kappa Psi (AKPsi)', N'Alpha Kappa Psi (AKPsi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (24, N'Alpha Lambda Delta Honors Society (ALD)', N'Alpha Lambda Delta Honors Society (ALD)', N'Alpha Lambda Delta Honors Society (ALD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (25, N'Alpha Omega (AO)', N'Alpha Omega (AO)', N'Alpha Omega (AO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (26, N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (27, N'Alpha Phi Omega (APhiO)', N'Alpha Phi Omega (APhiO)', N'Alpha Phi Omega (APhiO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (28, N'Alpha Pi Sigma Sorority Inc. (APS)', N'Alpha Pi Sigma Sorority Inc. (APS)', N'Alpha Pi Sigma Sorority Inc. (APS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (29, N'Alpha Sigma Omicron (ASO)', N'Alpha Sigma Omicron (ASO)', N'Alpha Sigma Omicron (ASO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (30, N'American Association for Aerosol Research Student Chapter at UCR (AAAR Student Chapter at UCR)', N'American Association for Aerosol Research Student Chapter at UCR (AAAR Student Chapter at UCR)', N'American Association for Aerosol Research Student Chapter at UCR (AAAR Student Chapter at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (31, N'American Institute of Chemical Engineers (AIChE) (AIChE)', N'American Institute of Chemical Engineers (AIChE) (AIChE)', N'American Institute of Chemical Engineers (AIChE) (AIChE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (32, N'American Marketing Association at UCR (AMA)', N'American Marketing Association at UCR (AMA)', N'American Marketing Association at UCR (AMA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (33, N'American Medical Student Association (AMSA)', N'American Medical Student Association (AMSA)', N'American Medical Student Association (AMSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (34, N'American Medical Student Association UC Riverside School of Medicine Chapter (AMSA UC Riverside School of Medicine Chapter)', N'American Medical Student Association UC Riverside School of Medicine Chapter (AMSA UC Riverside School of Medicine Chapter)', N'American Medical Student Association UC Riverside School of Medicine Chapter (AMSA UC Riverside School of Medicine Chapter)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (35, N'American Medical Womens Association (AMWA)', N'American Medical Womens Association (AMWA)', N'American Medical Womens Association (AMWA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (36, N'American Red Cross at University of California Riverside (ARC at UCR)', N'American Red Cross at University of California Riverside (ARC at UCR)', N'American Red Cross at University of California Riverside (ARC at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (37, N'American Society of Mechanical Engineers at UCR (ASME)', N'American Society of Mechanical Engineers at UCR (ASME)', N'American Society of Mechanical Engineers at UCR (ASME)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (38, N'American Society of Microbiology (ASM)', N'American Society of Microbiology (ASM)', N'American Society of Microbiology (ASM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (39, N'Anglers Association @ UCR', N'Anglers Association @ UCR', N'Anglers Association @ UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (40, N'Animal Rescue Club at UCR (AR@UCR)', N'Animal Rescue Club at UCR (AR@UCR)', N'Animal Rescue Club at UCR (AR@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (41, N'ANSWER (Act Now to Stop War and End Racism)', N'ANSWER (Act Now to Stop War and End Racism)', N'ANSWER (Act Now to Stop War and End Racism)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (42, N'Apple Pi at UCR (Apple Pi)', N'Apple Pi at UCR (Apple Pi)', N'Apple Pi at UCR (Apple Pi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (43, N'Arabic Club (Arabic Club )', N'Arabic Club (Arabic Club )', N'Arabic Club (Arabic Club )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (44, N'Arcade Revival at UCR (AR@UCR)', N'Arcade Revival at UCR (AR@UCR)', N'Arcade Revival at UCR (AR@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (45, N'Armenian Student Association (ASA)', N'Armenian Student Association (ASA)', N'Armenian Student Association (ASA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (46, N'Art History Graduate Student Association (AHGSA)', N'Art History Graduate Student Association (AHGSA)', N'Art History Graduate Student Association (AHGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (47, N'Art of the People Orchestrating Optimistic Renditions (A.O.T.P/Art of the P.O.O.R.)', N'Art of the People Orchestrating Optimistic Renditions (A.O.T.P/Art of the P.O.O.R.)', N'Art of the People Orchestrating Optimistic Renditions (A.O.T.P/Art of the P.O.O.R.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (48, N'Asian American Christian Fellowship (AACF)', N'Asian American Christian Fellowship (AACF)', N'Asian American Christian Fellowship (AACF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (49, N'Asian Pacific Islander Student Advisory Council (APISAC)', N'Asian Pacific Islander Student Advisory Council (APISAC)', N'Asian Pacific Islander Student Advisory Council (APISAC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (50, N'Asian Pacific Student Programs (APSP)', N'Asian Pacific Student Programs (APSP)', N'Asian Pacific Student Programs (APSP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (51, N'Associated Students of UCR (ASUCR)', N'Associated Students of UCR (ASUCR)', N'Associated Students of UCR (ASUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (52, N'Associated Students Program Board (ASPB)', N'Associated Students Program Board (ASPB)', N'Associated Students Program Board (ASPB)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (53, N'Association for Computing Machinery (ACM)', N'Association for Computing Machinery (ACM)', N'Association for Computing Machinery (ACM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (54, N'Association for Women in Science-UC Riverside (AWIS-UC Riverside )', N'Association for Women in Science-UC Riverside (AWIS-UC Riverside )', N'Association for Women in Science-UC Riverside (AWIS-UC Riverside )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (55, N'Association of Graduate Students in Hispanic Studies (AGSHS)', N'Association of Graduate Students in Hispanic Studies (AGSHS)', N'Association of Graduate Students in Hispanic Studies (AGSHS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (56, N'Association of Latino Professionals in Finance and Accounting (ALPFA UCR)', N'Association of Latino Professionals in Finance and Accounting (ALPFA UCR)', N'Association of Latino Professionals in Finance and Accounting (ALPFA UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (57, N'Association of Veterans & Servicemembers (AVS)', N'Association of Veterans & Servicemembers (AVS)', N'Association of Veterans & Servicemembers (AVS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (58, N'Asterisk', N'Asterisk', N'Asterisk', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (59, N'Audio Feed', N'Audio Feed', N'Audio Feed', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (60, N'Badminton Club (Badminton)', N'Badminton Club (Badminton)', N'Badminton Club (Badminton)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (61, N'Bahai Association at University of California, Riverside (BAUCR)', N'Bahai Association at University of California, Riverside (BAUCR)', N'Bahai Association at University of California, Riverside (BAUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (62, N'Ballet Folklorico de UCR (BFde UCR)', N'Ballet Folklorico de UCR (BFde UCR)', N'Ballet Folklorico de UCR (BFde UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (63, N'Bay Area Networking Group (B.A.N.G.)', N'Bay Area Networking Group (B.A.N.G.)', N'Bay Area Networking Group (B.A.N.G.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (64, N'Be a hero, become a donor (BAHBAD)', N'Be a hero, become a donor (BAHBAD)', N'Be a hero, become a donor (BAHBAD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (65, N'Best Buddies at UCR (BBUCR)', N'Best Buddies at UCR (BBUCR)', N'Best Buddies at UCR (BBUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (66, N'Beta Alpha Psi (BAP)', N'Beta Alpha Psi (BAP)', N'Beta Alpha Psi (BAP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (67, N'Beta Chi Theta (Beta Chi)', N'Beta Chi Theta (Beta Chi)', N'Beta Chi Theta (Beta Chi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (68, N'Beta Phi Delta (Beta)', N'Beta Phi Delta (Beta)', N'Beta Phi Delta (Beta)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (69, N'Beta Upsilon Delta Fraternity (BUD)', N'Beta Upsilon Delta Fraternity (BUD)', N'Beta Upsilon Delta Fraternity (BUD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (70, N'Big Brother Big Sister at UCR (BBBS UCR)', N'Big Brother Big Sister at UCR (BBBS UCR)', N'Big Brother Big Sister at UCR (BBBS UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (71, N'Biochemistry & Molecular Biology - Graduate Student Association (BMB-GSA)', N'Biochemistry & Molecular Biology - Graduate Student Association (BMB-GSA)', N'Biochemistry & Molecular Biology - Graduate Student Association (BMB-GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (72, N'Bioengineering Mini-GSA (BIG GSA)', N'Bioengineering Mini-GSA (BIG GSA)', N'Bioengineering Mini-GSA (BIG GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (73, N'Biofeedback Technicians (Biofeedback)', N'Biofeedback Technicians (Biofeedback)', N'Biofeedback Technicians (Biofeedback)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (74, N'BioMedical Engineering Society (BMES)', N'BioMedical Engineering Society (BMES)', N'BioMedical Engineering Society (BMES)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (75, N'Biomedical Sciences Graduate Student Association (BMSGSA)', N'Biomedical Sciences Graduate Student Association (BMSGSA)', N'Biomedical Sciences Graduate Student Association (BMSGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (76, N'Black Student Law Association (BSLA)', N'Black Student Law Association (BSLA)', N'Black Student Law Association (BSLA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (77, N'Black Student Union (BSU)', N'Black Student Union (BSU)', N'Black Student Union (BSU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (78, N'Botany and Entomology Undergraduate Student Association (BEUSA)', N'Botany and Entomology Undergraduate Student Association (BEUSA)', N'Botany and Entomology Undergraduate Student Association (BEUSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (79, N'Botany Graduate Student Association (BGSA)', N'Botany Graduate Student Association (BGSA)', N'Botany Graduate Student Association (BGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (80, N'Brothers Leading African Americans through Consciousness and Knowledge (B.L.A.A.C.K.)', N'Brothers Leading African Americans through Consciousness and Knowledge (B.L.A.A.C.K.)', N'Brothers Leading African Americans through Consciousness and Knowledge (B.L.A.A.C.K.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (81, N'Brown Issues', N'Brown Issues', N'Brown Issues', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (82, N'CA Public Interest Research Group (CALPIRG) (Calpirg)', N'CA Public Interest Research Group (CALPIRG) (Calpirg)', N'CA Public Interest Research Group (CALPIRG) (Calpirg)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (83, N'California Alliance for Minority Participation (CAMP)', N'California Alliance for Minority Participation (CAMP)', N'California Alliance for Minority Participation (CAMP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (84, N'Camp Kesem at UCR', N'Camp Kesem at UCR', N'Camp Kesem at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (85, N'Campus Safety Escort Service (Escort Service)', N'Campus Safety Escort Service (Escort Service)', N'Campus Safety Escort Service (Escort Service)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (86, N'Caribbean Student Union (CSU)', N'Caribbean Student Union (CSU)', N'Caribbean Student Union (CSU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (87, N'Case Manager', N'Case Manager', N'Case Manager', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (88, N'Catholic Student Fellowship (CSF)', N'Catholic Student Fellowship (CSF)', N'Catholic Student Fellowship (CSF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (89, N'Cell, Molecular, and Developmental Biology Graduate Student Association (CMDB GSA) (CMDB)', N'Cell, Molecular, and Developmental Biology Graduate Student Association (CMDB GSA) (CMDB)', N'Cell, Molecular, and Developmental Biology Graduate Student Association (CMDB GSA) (CMDB)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (90, N'Central American Student Alliance (C.A.S.A.)', N'Central American Student Alliance (C.A.S.A.)', N'Central American Student Alliance (C.A.S.A.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (91, N'Chamber Singers Club at UCR (Chamber Singers)', N'Chamber Singers Club at UCR (Chamber Singers)', N'Chamber Singers Club at UCR (Chamber Singers)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (92, N'Change in Scientific Importance for Youth (? SIFY)', N'Change in Scientific Importance for Youth (? SIFY)', N'Change in Scientific Importance for Youth (? SIFY)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (93, N'CHASS F1RST', N'CHASS F1RST', N'CHASS F1RST', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (94, N'Chemical and Environmental Engineering Graduate Student Association (CEE GSA)', N'Chemical and Environmental Engineering Graduate Student Association (CEE GSA)', N'Chemical and Environmental Engineering Graduate Student Association (CEE GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (95, N'Chemistry Club', N'Chemistry Club', N'Chemistry Club', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (96, N'Chemistry Graduate Student Association at UCR (ChemGSA)', N'Chemistry Graduate Student Association at UCR (ChemGSA)', N'Chemistry Graduate Student Association at UCR (ChemGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (97, N'Chess Club at UCR', N'Chess Club at UCR', N'Chess Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (98, N'Chicano Link Peer Mentor Program', N'Chicano Link Peer Mentor Program', N'Chicano Link Peer Mentor Program', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (99, N'Chicano Student Programs (CSP)', N'Chicano Student Programs (CSP)', N'Chicano Student Programs (CSP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (100, N'CHINESE CHRISTIAN GOOD FRIENDS FELLOWSHIP AT UCR (GFF)', N'CHINESE CHRISTIAN GOOD FRIENDS FELLOWSHIP AT UCR (GFF)', N'CHINESE CHRISTIAN GOOD FRIENDS FELLOWSHIP AT UCR (GFF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (101, N'Chinese Martial Arts Club at UCR (CMAC)', N'Chinese Martial Arts Club at UCR (CMAC)', N'Chinese Martial Arts Club at UCR (CMAC)', NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (102, N'Chinese Student Association (CSA)', N'Chinese Student Association (CSA)', N'Chinese Student Association (CSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (103, N'Chinese Students and Scholars Association (CSSA)', N'Chinese Students and Scholars Association (CSSA)', N'Chinese Students and Scholars Association (CSSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (104, N'Christian Challenge (Challenge)', N'Christian Challenge (Challenge)', N'Christian Challenge (Challenge)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (105, N'Christians on Campus (CoC)', N'Christians on Campus (CoC)', N'Christians on Campus (CoC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (106, N'Circle K International (CKI)', N'Circle K International (CKI)', N'Circle K International (CKI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (107, N'Collaborative Multicultural Council (CMC)', N'Collaborative Multicultural Council (CMC)', N'Collaborative Multicultural Council (CMC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (108, N'Collective Faction (CF)', N'Collective Faction (CF)', N'Collective Faction (CF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (109, N'College Panhellenic Association (CPA, Panhellenic)', N'College Panhellenic Association (CPA, Panhellenic)', N'College Panhellenic Association (CPA, Panhellenic)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (110, N'Colleges Against Cancer (CAC)', N'Colleges Against Cancer (CAC)', N'Colleges Against Cancer (CAC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (111, N'Community of Human Resource Management @ UCR (CHRM @ UCR)', N'Community of Human Resource Management @ UCR (CHRM @ UCR)', N'Community of Human Resource Management @ UCR (CHRM @ UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (112, N'Community OUTreach Educators', N'Community OUTreach Educators', N'Community OUTreach Educators', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (113, N'Community Service Ambassadors', N'Community Service Ambassadors', N'Community Service Ambassadors', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (114, N'Community Service Initiatives', N'Community Service Initiatives', N'Community Service Initiatives', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (115, N'Commuter Programs at UCR', N'Commuter Programs at UCR', N'Commuter Programs at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (116, N'Competitive Sports', N'Competitive Sports', N'Competitive Sports', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (117, N'Cooking for Causes (CFC)', N'Cooking for Causes (CFC)', N'Cooking for Causes (CFC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (118, N'Coptic Orthodox Christian Club at UCR (Coptic Club at UCR)', N'Coptic Orthodox Christian Club at UCR (Coptic Club at UCR)', N'Coptic Orthodox Christian Club at UCR (Coptic Club at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (119, N'Cosplay Brigade (CB)', N'Cosplay Brigade (CB)', N'Cosplay Brigade (CB)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (120, N'Counseling Center', N'Counseling Center', N'Counseling Center', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (121, N'Creating Legacy Around Student Style and Fashion (CLASS and Fashion)', N'Creating Legacy Around Student Style and Fashion (CLASS and Fashion)', N'Creating Legacy Around Student Style and Fashion (CLASS and Fashion)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (122, N'Creative Writing Graduate Students Association (CWGSA)', N'Creative Writing Graduate Students Association (CWGSA)', N'Creative Writing Graduate Students Association (CWGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (123, N'Cru', N'Cru', N'Cru', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (124, N'Dance Graduate Student Association at UCR (Dance GSA)', N'Dance Graduate Student Association at UCR (Dance GSA)', N'Dance Graduate Student Association at UCR (Dance GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (125, N'Dancesport at UCR (Dancesport)', N'Dancesport at UCR (Dancesport)', N'Dancesport at UCR (Dancesport)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (126, N'Debate Team at UCR (Debate at UCR)', N'Debate Team at UCR (Debate at UCR)', N'Debate Team at UCR (Debate at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (127, N'Delta Chi Fraternity (D-Chi)', N'Delta Chi Fraternity (D-Chi)', N'Delta Chi Fraternity (D-Chi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (128, N'Delta Epsilon Iota Academic Honor Society (DEI)', N'Delta Epsilon Iota Academic Honor Society (DEI)', N'Delta Epsilon Iota Academic Honor Society (DEI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (129, N'Delta Gamma Fraternity for Women (DG, Dee Gee)', N'Delta Gamma Fraternity for Women (DG, Dee Gee)', N'Delta Gamma Fraternity for Women (DG, Dee Gee)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (130, N'Delta Sigma Pi (DSP)', N'Delta Sigma Pi (DSP)', N'Delta Sigma Pi (DSP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (131, N'Delta Sigma Theta (DST)', N'Delta Sigma Theta (DST)', N'Delta Sigma Theta (DST)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (132, N'Delta Tau Delta Fraternity (Delts)', N'Delta Tau Delta Fraternity (Delts)', N'Delta Tau Delta Fraternity (Delts)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (133, N'Discover Nursing', N'Discover Nursing', N'Discover Nursing', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (134, N'Divine Youth Association (DYA)', N'Divine Youth Association (DYA)', N'Divine Youth Association (DYA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (135, N'Drive at UCR (Drive@UCR)', N'Drive at UCR (Drive@UCR)', N'Drive at UCR (Drive@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (136, N'Earth Science Graduate Student Association (ESGSA)', N'Earth Science Graduate Student Association (ESGSA)', N'Earth Science Graduate Student Association (ESGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (137, N'Education for All at UCR (Edu4All)', N'Education for All at UCR (Edu4All)', N'Education for All at UCR (Edu4All)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (138, N'Electrical Engineering GSA (EE GSA)', N'Electrical Engineering GSA (EE GSA)', N'Electrical Engineering GSA (EE GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (139, N'Engineers Without Borders at UCR (EWB)', N'Engineers Without Borders at UCR (EWB)', N'Engineers Without Borders at UCR (EWB)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (140, N'English Majors Association (EMA)', N'English Majors Association (EMA)', N'English Majors Association (EMA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (141, N'Entomology Graduate Student Association (EGSA)', N'Entomology Graduate Student Association (EGSA)', N'Entomology Graduate Student Association (EGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (142, N'Entrepreneurial and Business Management Society (EBMS)', N'Entrepreneurial and Business Management Society (EBMS)', N'Entrepreneurial and Business Management Society (EBMS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (143, N'Environmental Sciences mini-Graduate Student Association (Environmental Sciences mini-GSA)', N'Environmental Sciences mini-Graduate Student Association (Environmental Sciences mini-GSA)', N'Environmental Sciences mini-Graduate Student Association (Environmental Sciences mini-GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (144, N'Epic Movement (EM)', N'Epic Movement (EM)', N'Epic Movement (EM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (145, N'Epsilon Iota Sigma Fraternity (??S)', N'Epsilon Iota Sigma Fraternity (??S)', N'Epsilon Iota Sigma Fraternity (??S)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (146, N'E-Sports at UCR (E-Sports)', N'E-Sports at UCR (E-Sports)', N'E-Sports at UCR (E-Sports)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (147, N'Evolution, Ecology, and Organismal Biology Graduate Student Association (EEOBGSA)', N'Evolution, Ecology, and Organismal Biology Graduate Student Association (EEOBGSA)', N'Evolution, Ecology, and Organismal Biology Graduate Student Association (EEOBGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (148, N'FeelGood UCR', N'FeelGood UCR', N'FeelGood UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (149, N'Fencing at UCR', N'Fencing at UCR', N'Fencing at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (150, N'Filipino Martial Arts Club (FMAC)', N'Filipino Martial Arts Club (FMAC)', N'Filipino Martial Arts Club (FMAC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (151, N'Filipinos in Health Sciences (FIHS)', N'Filipinos in Health Sciences (FIHS)', N'Filipinos in Health Sciences (FIHS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (152, N'Film and Photography Society at UC Riverside (FPS, UCR )', N'Film and Photography Society at UC Riverside (FPS, UCR )', N'Film and Photography Society at UC Riverside (FPS, UCR )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (153, N'First-Year Mentor Program', N'First-Year Mentor Program', N'First-Year Mentor Program', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (154, N'FIT Squad', N'FIT Squad', N'FIT Squad', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (155, N'Fitness & Wellness', N'Fitness & Wellness', N'Fitness & Wellness', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (156, N'Flying Samaritans at UCR (FS@UCR)', N'Flying Samaritans at UCR (FS@UCR)', N'Flying Samaritans at UCR (FS@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (157, N'Footprintz', N'Footprintz', N'Footprintz', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (158, N'Fraternity and Sorority Involvement Center (FSIC)', N'Fraternity and Sorority Involvement Center (FSIC)', N'Fraternity and Sorority Involvement Center (FSIC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (159, N'Future Business Leaders of America - Phi Beta Lambda (FBLA-PBL)', N'Future Business Leaders of America - Phi Beta Lambda (FBLA-PBL)', N'Future Business Leaders of America - Phi Beta Lambda (FBLA-PBL)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (160, N'Future Dentist Club (FDC)', N'Future Dentist Club (FDC)', N'Future Dentist Club (FDC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (161, N'Future P.I.L.L.S. (Future PILLS)', N'Future P.I.L.L.S. (Future PILLS)', N'Future P.I.L.L.S. (Future PILLS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (162, N'Gamers Guild at UCR (GG)', N'Gamers Guild at UCR (GG)', N'Gamers Guild at UCR (GG)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (163, N'Gamespawn at UCR (Gamespawn (GSR))', N'Gamespawn at UCR (Gamespawn (GSR))', N'Gamespawn at UCR (Gamespawn (GSR))', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (164, N'Gamma Beta Phi Honor Society (GBP)', N'Gamma Beta Phi Honor Society (GBP)', N'Gamma Beta Phi Honor Society (GBP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (165, N'Gamma Phi Beta Sorority (Gamma Phi)', N'Gamma Phi Beta Sorority (Gamma Phi)', N'Gamma Phi Beta Sorority (Gamma Phi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (166, N'Gamma Rho Lambda (GRL)', N'Gamma Rho Lambda (GRL)', N'Gamma Rho Lambda (GRL)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (167, N'Genetics, Genomics and Bioinformatics Graduate Student Association (GGB GSA)', N'Genetics, Genomics and Bioinformatics Graduate Student Association (GGB GSA)', N'Genetics, Genomics and Bioinformatics Graduate Student Association (GGB GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (168, N'Geology Student Organization (GSO)', N'Geology Student Organization (GSO)', N'Geology Student Organization (GSO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (169, N'Get!Give!Go! at UCR (GGG at UCR)', N'Get!Give!Go! at UCR (GGG at UCR)', N'Get!Give!Go! at UCR (GGG at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (170, N'Global Brigades (GB)', N'Global Brigades (GB)', N'Global Brigades (GB)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (171, N'Go Club at UCR', N'Go Club at UCR', N'Go Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (172, N'Golden Arches', N'Golden Arches', N'Golden Arches', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (173, N'Golden Key International Honour Society (GK)', N'Golden Key International Honour Society (GK)', N'Golden Key International Honour Society (GK)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (174, N'Golden Mean Players at UCR (GMP)', N'Golden Mean Players at UCR (GMP)', N'Golden Mean Players at UCR (GMP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (175, N'GradPREP', N'GradPREP', N'GradPREP', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (176, N'Graduate School of Education Graduate Student Association (GSOE-GSA)', N'Graduate School of Education Graduate Student Association (GSOE-GSA)', N'Graduate School of Education Graduate Student Association (GSOE-GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (177, N'Graduate Student Association (GSAUCR)', N'Graduate Student Association (GSAUCR)', N'Graduate Student Association (GSAUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (178, N'Graduate Students in English Association (GSEA)', N'Graduate Students in English Association (GSEA)', N'Graduate Students in English Association (GSEA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (179, N'Graduate Wellnes Student Initiatives', N'Graduate Wellnes Student Initiatives', N'Graduate Wellnes Student Initiatives', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (180, N'Greenwood Anime Society (Anime Club)', N'Greenwood Anime Society (Anime Club)', N'Greenwood Anime Society (Anime Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (181, N'Habitat for Humanity at UCR (H4H@UCR)', N'Habitat for Humanity at UCR (H4H@UCR)', N'Habitat for Humanity at UCR (H4H@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (182, N'Haiti Initiative at UCR', N'Haiti Initiative at UCR', N'Haiti Initiative at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (183, N'Hallyu At UCR (HALLYUCR)', N'Hallyu At UCR (HALLYUCR)', N'Hallyu At UCR (HALLYUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (184, N'Healing Highlanders', N'Healing Highlanders', N'Healing Highlanders', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (185, N'Health Education Initiatives', N'Health Education Initiatives', N'Health Education Initiatives', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (186, N'Health Occupations Students of America at UCR (HOSA at UCR)', N'Health Occupations Students of America at UCR (HOSA at UCR)', N'Health Occupations Students of America at UCR (HOSA at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (187, N'Her Campus @ UC Riverside (HCUCR)', N'Her Campus @ UC Riverside (HCUCR)', N'Her Campus @ UC Riverside (HCUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (188, N'Hermanos Unidos de University of California, Riverside (HU de UCR)', N'Hermanos Unidos de University of California, Riverside (HU de UCR)', N'Hermanos Unidos de University of California, Riverside (HU de UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (189, N'Highlander Aquatics Swimming Club (Highlander Aquatics)', N'Highlander Aquatics Swimming Club (Highlander Aquatics)', N'Highlander Aquatics Swimming Club (Highlander Aquatics)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (190, N'Highlander Band at UCR', N'Highlander Band at UCR', N'Highlander Band at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (191, N'Highlander Consulting Group (HCG)', N'Highlander Consulting Group (HCG)', N'Highlander Consulting Group (HCG)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (192, N'Highlander Gloves', N'Highlander Gloves', N'Highlander Gloves', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (193, N'Highlander Orientation', N'Highlander Orientation', N'Highlander Orientation', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (194, N'Highlander Statistics Society (HiSS)', N'Highlander Statistics Society (HiSS)', N'Highlander Statistics Society (HiSS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (195, N'Highlander Union', N'Highlander Union', N'Highlander Union', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (196, N'Highlander Value Investment Group (HVIG )', N'Highlander Value Investment Group (HVIG )', N'Highlander Value Investment Group (HVIG )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (197, N'Highlanders For Israel (HIFI)', N'Highlanders For Israel (HIFI)', N'Highlanders For Israel (HIFI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (198, N'Hiking Club', N'Hiking Club', N'Hiking Club', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (199, N'Hillel at UCR (Hillel@UCR)', N'Hillel at UCR (Hillel@UCR)', N'Hillel at UCR (Hillel@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (200, N'Hip Hop Congress', N'Hip Hop Congress', N'Hip Hop Congress', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (201, N'Hispanic Scholarship Fund- Scholar Chapter at University of California, Riverside (HSF Scholar Chapter at UCR)', N'Hispanic Scholarship Fund- Scholar Chapter at University of California, Riverside (HSF Scholar Chapter at UCR)', N'Hispanic Scholarship Fund- Scholar Chapter at University of California, Riverside (HSF Scholar Chapter at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (202, N'History Club at UCR', N'History Club at UCR', N'History Club at UCR', NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (203, N'History Graduate Student Association (History Mini GSA)', N'History Graduate Student Association (History Mini GSA)', N'History Graduate Student Association (History Mini GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (204, N'Hmong Student Association (HSA)', N'Hmong Student Association (HSA)', N'Hmong Student Association (HSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (205, N'Humans VS Zombies (HvZ)', N'Humans VS Zombies (HvZ)', N'Humans VS Zombies (HvZ)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (206, N'Hylander Financial Group (HFG)', N'Hylander Financial Group (HFG)', N'Hylander Financial Group (HFG)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (207, N'ILLERSIDE BBOYS (BBOY CLUB AT UCR)', N'ILLERSIDE BBOYS (BBOY CLUB AT UCR)', N'ILLERSIDE BBOYS (BBOY CLUB AT UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (208, N'Improv Anonymous at UCR (IA)', N'Improv Anonymous at UCR (IA)', N'Improv Anonymous at UCR (IA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (209, N'Indian Students Association (ISA-UCR)', N'Indian Students Association (ISA-UCR)', N'Indian Students Association (ISA-UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (210, N'Inland Empire Scholar Program (IESP)', N'Inland Empire Scholar Program (IESP)', N'Inland Empire Scholar Program (IESP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (211, N'Institute of Electrical and Electronic Engineers (IEEE)', N'Institute of Electrical and Electronic Engineers (IEEE)', N'Institute of Electrical and Electronic Engineers (IEEE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (212, N'Interfraternity Council (IFC) (IFC)', N'Interfraternity Council (IFC) (IFC)', N'Interfraternity Council (IFC) (IFC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (213, N'International Chinese Association (ICA)', N'International Chinese Association (ICA)', N'International Chinese Association (ICA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (214, N'International Food Club at UCR (IFC)', N'International Food Club at UCR (IFC)', N'International Food Club at UCR (IFC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (215, N'International Justice Mission Campus Chapter at University of California, Riverside (IJM Campus Chapter at UCR)', N'International Justice Mission Campus Chapter at University of California, Riverside (IJM Campus Chapter at UCR)', N'International Justice Mission Campus Chapter at University of California, Riverside (IJM Campus Chapter at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (216, N'International Student Resource Center (ISRC)', N'International Student Resource Center (ISRC)', N'International Student Resource Center (ISRC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (217, N'InterVarsity Christian Fellowship (IVCF)', N'InterVarsity Christian Fellowship (IVCF)', N'InterVarsity Christian Fellowship (IVCF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (218, N'Iranian Graduate Student Association (IGSA)', N'Iranian Graduate Student Association (IGSA)', N'Iranian Graduate Student Association (IGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (219, N'Iranian Student Association (ISA)', N'Iranian Student Association (ISA)', N'Iranian Student Association (ISA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (220, N'Jacobs Dream Foundation (JDF)', N'Jacobs Dream Foundation (JDF)', N'Jacobs Dream Foundation (JDF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (221, N'Kappa Kappa Gamma Sorority (Kappa)', N'Kappa Kappa Gamma Sorority (Kappa)', N'Kappa Kappa Gamma Sorority (Kappa)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (222, N'Karate Club at UCR', N'Karate Club at UCR', N'Karate Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (223, N'Katipunan Pilipino Student Organization (Katipunan)', N'Katipunan Pilipino Student Organization (Katipunan)', N'Katipunan Pilipino Student Organization (Katipunan)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (224, N'Kendo Club @ UCR', N'Kendo Club @ UCR', N'Kendo Club @ UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (225, N'Kindling Intellectual Development Program (K.I.D.)', N'Kindling Intellectual Development Program (K.I.D.)', N'Kindling Intellectual Development Program (K.I.D.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (226, N'Korea Campus Crusade for Christ (KCCC)', N'Korea Campus Crusade for Christ (KCCC)', N'Korea Campus Crusade for Christ (KCCC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (227, N'Korean American Student Association (KASA) (KASA)', N'Korean American Student Association (KASA) (KASA)', N'Korean American Student Association (KASA) (KASA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (228, N'Korean Student Association Han Noo Ri (KSA-HANNOORI)', N'Korean Student Association Han Noo Ri (KSA-HANNOORI)', N'Korean Student Association Han Noo Ri (KSA-HANNOORI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (229, N'Korean-American Campus Mission (KCM)', N'Korean-American Campus Mission (KCM)', N'Korean-American Campus Mission (KCM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (230, N'La Familia de UCR (LAFA)', N'La Familia de UCR (LAFA)', N'La Familia de UCR (LAFA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (231, N'La Union Estudiantil de la Raza (UER) (UER)', N'La Union Estudiantil de la Raza (UER) (UER)', N'La Union Estudiantil de la Raza (UER) (UER)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (232, N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (233, N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (234, N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (235, N'Latinic Societas Unitas (LSU) (LSU)', N'Latinic Societas Unitas (LSU) (LSU)', N'Latinic Societas Unitas (LSU) (LSU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (236, N'Latino Business Student Association (LBSA)', N'Latino Business Student Association (LBSA)', N'Latino Business Student Association (LBSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (237, N'Latino Medical Student Association (LMSA)', N'Latino Medical Student Association (LMSA)', N'Latino Medical Student Association (LMSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (238, N'Latino Medical Student Association + (LMSA+)', N'Latino Medical Student Association + (LMSA+)', N'Latino Medical Student Association + (LMSA+)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (239, N'Latino Student Law Association (LSLA)', N'Latino Student Law Association (LSLA)', N'Latino Student Law Association (LSLA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (240, N'Latino Union (LU)', N'Latino Union (LU)', N'Latino Union (LU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (241, N'Latter-Day Saint Student Association (LDSSA)', N'Latter-Day Saint Student Association (LDSSA)', N'Latter-Day Saint Student Association (LDSSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (242, N'Laughter Jam (LJ)', N'Laughter Jam (LJ)', N'Laughter Jam (LJ)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (243, N'Leading Educators; SCTA (SCTA Educators)', N'Leading Educators; SCTA (SCTA Educators)', N'Leading Educators; SCTA (SCTA Educators)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (244, N'Lean In (Lean In)', N'Lean In (Lean In)', N'Lean In (Lean In)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (245, N'Lebanese Social Club at UCR (LSC)', N'Lebanese Social Club at UCR (LSC)', N'Lebanese Social Club at UCR (LSC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (246, N'Legends Community Service Group (LGNDS)', N'Legends Community Service Group (LGNDS)', N'Legends Community Service Group (LGNDS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (247, N'LGBT Resource Center (LGBTRC)', N'LGBT Resource Center (LGBTRC)', N'LGBT Resource Center (LGBTRC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (248, N'Liberty in North Korea (LiNK)', N'Liberty in North Korea (LiNK)', N'Liberty in North Korea (LiNK)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (249, N'LIFE (Love Is For Everyone)', N'LIFE (Love Is For Everyone)', N'LIFE (Love Is For Everyone)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (250, N'Lift Every Voice (LEV)', N'Lift Every Voice (LEV)', N'Lift Every Voice (LEV)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (251, N'Materials Research Society at UC Riverside (MRS )', N'Materials Research Society at UC Riverside (MRS )', N'Materials Research Society at UC Riverside (MRS )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (252, N'Mechanical Engineering and Materials Science & Engineering Graduate Student Association (ME/MSE GSA)', N'Mechanical Engineering and Materials Science & Engineering Graduate Student Association (ME/MSE GSA)', N'Mechanical Engineering and Materials Science & Engineering Graduate Student Association (ME/MSE GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (253, N'Medical Outreach Beyond (M.O.B)', N'Medical Outreach Beyond (M.O.B)', N'Medical Outreach Beyond (M.O.B)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (254, N'Mens Club Water Polo at UCR (MCWP at UCR) (MCWP at UCR)', N'Mens Club Water Polo at UCR (MCWP at UCR) (MCWP at UCR)', N'Mens Club Water Polo at UCR (MCWP at UCR) (MCWP at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (255, N'Mens Soccer Club at UCR (Highlander AC)', N'Mens Soccer Club at UCR (Highlander AC)', N'Mens Soccer Club at UCR (Highlander AC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (256, N'Mens Volleyball at UCR (Volleyball)', N'Mens Volleyball at UCR (Volleyball)', N'Mens Volleyball at UCR (Volleyball)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (257, N'Microbiology Graduate Student Association (MGSA)', N'Microbiology Graduate Student Association (MGSA)', N'Microbiology Graduate Student Association (MGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (258, N'Middle Eastern Student Center (MESC)', N'Middle Eastern Student Center (MESC)', N'Middle Eastern Student Center (MESC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (259, N'Model Minority Theater Collective (Model Minority)', N'Model Minority Theater Collective (Model Minority)', N'Model Minority Theater Collective (Model Minority)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (260, N'Model United Nations (MUN) at UCR (MUN at UCR)', N'Model United Nations (MUN) at UCR (MUN at UCR)', N'Model United Nations (MUN) at UCR (MUN at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (261, N'Mosaic Art & Literary Journal (Mosaic)', N'Mosaic Art & Literary Journal (Mosaic)', N'Mosaic Art & Literary Journal (Mosaic)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (262, N'Mountain Bikers at UCR (MTBUCR)', N'Mountain Bikers at UCR (MTBUCR)', N'Mountain Bikers at UCR (MTBUCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (263, N'Movimiento Estudiantil Chicano de Aztlan (MEChA) (M.E.Ch.A.)', N'Movimiento Estudiantil Chicano de Aztlan (MEChA) (M.E.Ch.A.)', N'Movimiento Estudiantil Chicano de Aztlan (MEChA) (M.E.Ch.A.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (264, N'Mu Sigma Rho at UCR (MSR)', N'Mu Sigma Rho at UCR (MSR)', N'Mu Sigma Rho at UCR (MSR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (265, N'Mujeres Activas en Letras y Cambio Social de UCR (MALCS de UCR)', N'Mujeres Activas en Letras y Cambio Social de UCR (MALCS de UCR)', N'Mujeres Activas en Letras y Cambio Social de UCR (MALCS de UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (266, N'Mujeres Unidas (MU)', N'Mujeres Unidas (MU)', N'Mujeres Unidas (MU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (267, N'Music Changing Lives at University of California, Riverside (MCL at UCR)', N'Music Changing Lives at University of California, Riverside (MCL at UCR)', N'Music Changing Lives at University of California, Riverside (MCL at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (268, N'Music Graduate Student Association (MGSA)', N'Music Graduate Student Association (MGSA)', N'Music Graduate Student Association (MGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (269, N'Muslim Student Association (MSA)', N'Muslim Student Association (MSA)', N'Muslim Student Association (MSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (270, N'National Pan-Hellenic Council (NPHC) (Divine Nine)', N'National Pan-Hellenic Council (NPHC) (Divine Nine)', N'National Pan-Hellenic Council (NPHC) (Divine Nine)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (271, N'National Residence Hall Honorary (NRHH)', N'National Residence Hall Honorary (NRHH)', N'National Residence Hall Honorary (NRHH)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (272, N'National Society of Black Engineers (NSBE)', N'National Society of Black Engineers (NSBE)', N'National Society of Black Engineers (NSBE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (273, N'National Society of Collegiate Scholars (NSCS)', N'National Society of Collegiate Scholars (NSCS)', N'National Society of Collegiate Scholars (NSCS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (274, N'Native American Student Association (NASA) (NASA)', N'Native American Student Association (NASA) (NASA)', N'Native American Student Association (NASA) (NASA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (275, N'Native American Student Programs (NASP)', N'Native American Student Programs (NASP)', N'Native American Student Programs (NASP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (276, N'Navigators at UCR (Navs)', N'Navigators at UCR (Navs)', N'Navigators at UCR (Navs)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (277, N'Neuroscience Graduate Student Association (NGSA)', N'Neuroscience Graduate Student Association (NGSA)', N'Neuroscience Graduate Student Association (NGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (278, N'Neuroscience Undergraduate Student Organiazation (NUSO)', N'Neuroscience Undergraduate Student Organiazation (NUSO)', N'Neuroscience Undergraduate Student Organiazation (NUSO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (279, N'Nigerian Student Association (NSA)', N'Nigerian Student Association (NSA)', N'Nigerian Student Association (NSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (280, N'Nikkei Student Union (NSU)', N'Nikkei Student Union (NSU)', N'Nikkei Student Union (NSU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (281, N'Not So Sharp A capella', N'Not So Sharp A capella', N'Not So Sharp A capella', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (282, N'Nothing But Nets at UCR (NBN )', N'Nothing But Nets at UCR (NBN )', N'Nothing But Nets at UCR (NBN )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (283, N'Nu Alpha Kappa Fraternity Inc. (NAK)', N'Nu Alpha Kappa Fraternity Inc. (NAK)', N'Nu Alpha Kappa Fraternity Inc. (NAK)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (284, N'Nuestra Cosa', N'Nuestra Cosa', N'Nuestra Cosa', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (285, N'Oceania Dance', N'Oceania Dance', N'Oceania Dance', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (286, N'Omega Zeta Chi Sorority (OZChi)', N'Omega Zeta Chi Sorority (OZChi)', N'Omega Zeta Chi Sorority (OZChi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (287, N'Omicron Delta Kappa National Leadership Honor Society (ODK)', N'Omicron Delta Kappa National Leadership Honor Society (ODK)', N'Omicron Delta Kappa National Leadership Honor Society (ODK)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (288, N'Order of Omega', N'Order of Omega', N'Order of Omega', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (289, N'Origami Club', N'Origami Club', N'Origami Club', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (290, N'Outdoor Excursions (OE)', N'Outdoor Excursions (OE)', N'Outdoor Excursions (OE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (291, N'OverFlow (OF)', N'OverFlow (OF)', N'OverFlow (OF)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (292, N'Pacific Islander Student Alliance (PISA)', N'Pacific Islander Student Alliance (PISA)', N'Pacific Islander Student Alliance (PISA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (293, N'Pakistani Student Association (PSA)', N'Pakistani Student Association (PSA)', N'Pakistani Student Association (PSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (294, N'Paranormal Research Society at UCR (PRS at UCR)', N'Paranormal Research Society at UCR (PRS at UCR)', N'Paranormal Research Society at UCR (PRS at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (295, N'Peer Connections Mentoring Program (Peer Connections)', N'Peer Connections Mentoring Program (Peer Connections)', N'Peer Connections Mentoring Program (Peer Connections)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (296, N'Peer Education Initiatives', N'Peer Education Initiatives', N'Peer Education Initiatives', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (297, N'Phi Alpha Delta Pre-Law Fraternity (PAD)', N'Phi Alpha Delta Pre-Law Fraternity (PAD)', N'Phi Alpha Delta Pre-Law Fraternity (PAD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (298, N'Phi Beta Kappa', N'Phi Beta Kappa', N'Phi Beta Kappa', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (299, N'Phi Delta Epsilon (Pre-Med Fraternity) (PhiDE)', N'Phi Delta Epsilon (Pre-Med Fraternity) (PhiDE)', N'Phi Delta Epsilon (Pre-Med Fraternity) (PhiDE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (300, N'Phi Gamma Delta (FIJI) Fraternity (FIJI)', N'Phi Gamma Delta (FIJI) Fraternity (FIJI)', N'Phi Gamma Delta (FIJI) Fraternity (FIJI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (301, N'Phi Kappa Psi Fraternity (Phi Psi)', N'Phi Kappa Psi Fraternity (Phi Psi)', N'Phi Kappa Psi Fraternity (Phi Psi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (302, N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (303, N'Philosophy Club', N'Philosophy Club', N'Philosophy Club', NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 300 total records'
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (304, N'Physical Therapy Student Organization (Phyt Club)', N'Physical Therapy Student Organization (Phyt Club)', N'Physical Therapy Student Organization (Phyt Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (305, N'Physician Assistants of Tomorrow (PAT)', N'Physician Assistants of Tomorrow (PAT)', N'Physician Assistants of Tomorrow (PAT)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (306, N'Pi Beta Phi Fraternity for Women (Pi Phi)', N'Pi Beta Phi Fraternity for Women (Pi Phi)', N'Pi Beta Phi Fraternity for Women (Pi Phi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (307, N'Pi Delta Psi Fraternity Inc. (PDPsi)', N'Pi Delta Psi Fraternity Inc. (PDPsi)', N'Pi Delta Psi Fraternity Inc. (PDPsi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (308, N'Pi Kappa Alpha Fraternity (Pike)', N'Pi Kappa Alpha Fraternity (Pike)', N'Pi Kappa Alpha Fraternity (Pike)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (309, N'Pilipino Studies Collective (PST)', N'Pilipino Studies Collective (PST)', N'Pilipino Studies Collective (PST)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (310, N'Pink Ribbon Club at University of California, Riverside (PRC)', N'Pink Ribbon Club at University of California, Riverside (PRC)', N'Pink Ribbon Club at University of California, Riverside (PRC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (311, N'Plant Pathology Graduate Student Association (PLPA GSA)', N'Plant Pathology Graduate Student Association (PLPA GSA)', N'Plant Pathology Graduate Student Association (PLPA GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (312, N'Power of the Peers Peer Network (Power of the Peers)', N'Power of the Peers Peer Network (Power of the Peers)', N'Power of the Peers Peer Network (Power of the Peers)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (313, N'Pre Student Osteopathic Medical Association at University of California Riverside (Pre-SOMA UCR)', N'Pre Student Osteopathic Medical Association at University of California Riverside (Pre-SOMA UCR)', N'Pre Student Osteopathic Medical Association at University of California Riverside (Pre-SOMA UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (314, N'Precision For Vision (PFV)', N'Precision For Vision (PFV)', N'Precision For Vision (PFV)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (315, N'Pre-Veterinary Club (PVC)', N'Pre-Veterinary Club (PVC)', N'Pre-Veterinary Club (PVC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (316, N'Professional Fraternity Council (PFC)', N'Professional Fraternity Council (PFC)', N'Professional Fraternity Council (PFC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (317, N'Project Josh and Friends at UCR (Project Josh and Friends)', N'Project Josh and Friends at UCR (Project Josh and Friends)', N'Project Josh and Friends at UCR (Project Josh and Friends)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (318, N'Project Nicaragua at UCR', N'Project Nicaragua at UCR', N'Project Nicaragua at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (319, N'Project RISHI at UCR', N'Project RISHI at UCR', N'Project RISHI at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (320, N'Providing Opportunities, Dreams, and Education in Riverside (PODER)', N'Providing Opportunities, Dreams, and Education in Riverside (PODER)', N'Providing Opportunities, Dreams, and Education in Riverside (PODER)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (321, N'Psi Chi Psychology Honor Society (Psi Chi)', N'Psi Chi Psychology Honor Society (Psi Chi)', N'Psi Chi Psychology Honor Society (Psi Chi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (322, N'Psychology Graduate Student Association (PGSA)', N'Psychology Graduate Student Association (PGSA)', N'Psychology Graduate Student Association (PGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (323, N'Puente Connection (Puente )', N'Puente Connection (Puente )', N'Puente Connection (Puente )', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (324, N'Queer Alliance (QA)', N'Queer Alliance (QA)', N'Queer Alliance (QA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (325, N'Queer Association of Asian and Pacific Islanders (QAAPI)', N'Queer Association of Asian and Pacific Islanders (QAAPI)', N'Queer Association of Asian and Pacific Islanders (QAAPI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (326, N'Queer People of Color (QPOC)', N'Queer People of Color (QPOC)', N'Queer People of Color (QPOC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (327, N'Quidditch Club at the University of California, Riverside (Riverside Quidditch)', N'Quidditch Club at the University of California, Riverside (Riverside Quidditch)', N'Quidditch Club at the University of California, Riverside (Riverside Quidditch)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (328, N'R Kids', N'R Kids', N'R Kids', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (329, N'R.E.A.C.H. (REACH)', N'R.E.A.C.H. (REACH)', N'R.E.A.C.H. (REACH)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (330, N'Raas Team at UC Riverside (Raas at UCR)', N'Raas Team at UC Riverside (Raas at UCR)', N'Raas Team at UC Riverside (Raas at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (331, N'Raza Assembly (RAZA)', N'Raza Assembly (RAZA)', N'Raza Assembly (RAZA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (332, N'R Beat', N'R Beat', N'R Beat', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (333, N'Residence Hall Association (RHA)', N'Residence Hall Association (RHA)', N'Residence Hall Association (RHA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (334, N'Resources and Research in Genders Initiative (RReGI)', N'Resources and Research in Genders Initiative (RReGI)', N'Resources and Research in Genders Initiative (RReGI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (335, N'Rho Delta Chi Sorority (Rhos)', N'Rho Delta Chi Sorority (Rhos)', N'Rho Delta Chi Sorority (Rhos)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (336, N'Rhythm and Brains (R&B)', N'Rhythm and Brains (R&B)', N'Rhythm and Brains (R&B)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (337, N'Riverside Dhamaka (Dhamaka)', N'Riverside Dhamaka (Dhamaka)', N'Riverside Dhamaka (Dhamaka)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (338, N'Riverside Health Connect (RHC)', N'Riverside Health Connect (RHC)', N'Riverside Health Connect (RHC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (339, N'Riverside Middle Eastern Student Collaborative (R MESC)', N'Riverside Middle Eastern Student Collaborative (R MESC)', N'Riverside Middle Eastern Student Collaborative (R MESC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (340, N'Riverside Surging Dragons Dragon Boat Association (RSD)', N'Riverside Surging Dragons Dragon Boat Association (RSD)', N'Riverside Surging Dragons Dragon Boat Association (RSD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (341, N'Rotaract at UCR (Rotaract)', N'Rotaract at UCR (Rotaract)', N'Rotaract at UCR (Rotaract)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (342, N'R Philanthropic Culture (RPC)', N'R Philanthropic Culture (RPC)', N'R Philanthropic Culture (RPC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (343, N'R Side Events (R Side)', N'R Side Events (R Side)', N'R Side Events (R Side)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (344, N'Rugby Football Club at UCR (RFC at UCR)', N'Rugby Football Club at UCR (RFC at UCR)', N'Rugby Football Club at UCR (RFC at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (345, N'Running Club at UCR', N'Running Club at UCR', N'Running Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (346, N'Sakura-bu', N'Sakura-bu', N'Sakura-bu', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (347, N'Scientific Illustration @ UCR (Scillustration @ UCR)', N'Scientific Illustration @ UCR (Scillustration @ UCR)', N'Scientific Illustration @ UCR (Scillustration @ UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (348, N'SciFi and Fantasy Club @ UC Riverside (SFF @ UCR)', N'SciFi and Fantasy Club @ UC Riverside (SFF @ UCR)', N'SciFi and Fantasy Club @ UC Riverside (SFF @ UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (349, N'Secret Swords & Sorcery Society (SS&SS)', N'Secret Swords & Sorcery Society (SS&SS)', N'Secret Swords & Sorcery Society (SS&SS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (350, N'Secular Student Alliance (SSA)', N'Secular Student Alliance (SSA)', N'Secular Student Alliance (SSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (351, N'Senryu Taiko @ UCR', N'Senryu Taiko @ UCR', N'Senryu Taiko @ UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (352, N'Services for Students with Disabilities', N'Services for Students with Disabilities', N'Services for Students with Disabilities', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (353, N'Sexual Assault and Violence Education (SAVE) Peer Group (SAVE)', N'Sexual Assault and Violence Education (SAVE) Peer Group (SAVE)', N'Sexual Assault and Violence Education (SAVE) Peer Group (SAVE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (354, N'Shadow MD (SMD)', N'Shadow MD (SMD)', N'Shadow MD (SMD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (355, N'Sigma Alpha Epsilon (SAE)', N'Sigma Alpha Epsilon (SAE)', N'Sigma Alpha Epsilon (SAE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (356, N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (357, N'Sigma Delta Alpha (SDA)', N'Sigma Delta Alpha (SDA)', N'Sigma Delta Alpha (SDA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (358, N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (359, N'Sigma Kappa Sorority', N'Sigma Kappa Sorority', N'Sigma Kappa Sorority', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (360, N'Sigma Lambda Beta International Fraternity Inc. (Betas)', N'Sigma Lambda Beta International Fraternity Inc. (Betas)', N'Sigma Lambda Beta International Fraternity Inc. (Betas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (361, N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (362, N'Sigma Phi Epsilon Fraternity (SigEp)', N'Sigma Phi Epsilon Fraternity (SigEp)', N'Sigma Phi Epsilon Fraternity (SigEp)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (363, N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (364, N'Sikh Student Association (SSA)', N'Sikh Student Association (SSA)', N'Sikh Student Association (SSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (365, N'Sisters Against Social Injustice (SASI)', N'Sisters Against Social Injustice (SASI)', N'Sisters Against Social Injustice (SASI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (366, N'Sisters in Strength (SIS)', N'Sisters in Strength (SIS)', N'Sisters in Strength (SIS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (367, N'Skateboard/long board Club at University of California Riverside (Skate Club)', N'Skateboard/long board Club at University of California Riverside (Skate Club)', N'Skateboard/long board Club at University of California Riverside (Skate Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (368, N'Ski & Snowboard Student Association (S3A)', N'Ski & Snowboard Student Association (S3A)', N'Ski & Snowboard Student Association (S3A)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (369, N'Society for Advancement of Chicanos and Native Americans in Science (SACNAS)', N'Society for Advancement of Chicanos and Native Americans in Science (SACNAS)', N'Society for Advancement of Chicanos and Native Americans in Science (SACNAS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (370, N'Society of Automotive Engineers at UCR (SAE)', N'Society of Automotive Engineers at UCR (SAE)', N'Society of Automotive Engineers at UCR (SAE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (371, N'Society of Hispanic Professional Engineers (SHPE) (SHPE)', N'Society of Hispanic Professional Engineers (SHPE) (SHPE)', N'Society of Hispanic Professional Engineers (SHPE) (SHPE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (372, N'Society of Women Engineers (SWE)', N'Society of Women Engineers (SWE)', N'Society of Women Engineers (SWE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (373, N'Sociology Graduate Student Association (SGSA)', N'Sociology Graduate Student Association (SGSA)', N'Sociology Graduate Student Association (SGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (374, N'Starving Artists (SA)', N'Starving Artists (SA)', N'Starving Artists (SA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (375, N'STEM Connections Club (STEM Club)', N'STEM Connections Club (STEM Club)', N'STEM Connections Club (STEM Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (376, N'Stress Busters Peer Educators (Stress Busters)', N'Stress Busters Peer Educators (Stress Busters)', N'Stress Busters Peer Educators (Stress Busters)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (377, N'Student Affiliates in School Psychology (SASP)', N'Student Affiliates in School Psychology (SASP)', N'Student Affiliates in School Psychology (SASP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (378, N'Student Alumni Association (SAA)', N'Student Alumni Association (SAA)', N'Student Alumni Association (SAA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (379, N'Student Association of Graduate Anthropologists (SAGA)', N'Student Association of Graduate Anthropologists (SAGA)', N'Student Association of Graduate Anthropologists (SAGA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (380, N'Student Association of Latino-Spanish Affairs (S.A.L.S.A.)', N'Student Association of Latino-Spanish Affairs (S.A.L.S.A.)', N'Student Association of Latino-Spanish Affairs (S.A.L.S.A.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (381, N'Student Athlete Advisory Committee (SAAC)', N'Student Athlete Advisory Committee (SAAC)', N'Student Athlete Advisory Committee (SAAC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (382, N'Student Chapter of the American Association of Petroleum Geologists at University of California Riverside (AAPG)', N'Student Chapter of the American Association of Petroleum Geologists at University of California Riverside (AAPG)', N'Student Chapter of the American Association of Petroleum Geologists at University of California Riverside (AAPG)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (383, N'Student Conduct and Academic Integrity Programs (SCAIP)', N'Student Conduct and Academic Integrity Programs (SCAIP)', N'Student Conduct and Academic Integrity Programs (SCAIP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (384, N'Student Conduct Committee', N'Student Conduct Committee', N'Student Conduct Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (385, N'Student Conduct Ready Advisor Program', N'Student Conduct Ready Advisor Program', N'Student Conduct Ready Advisor Program', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (386, N'Student Disability Union (SDU)', N'Student Disability Union (SDU)', N'Student Disability Union (SDU)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (387, N'Student Homeless Aid Relief Project (SHaRP)', N'Student Homeless Aid Relief Project (SHaRP)', N'Student Homeless Aid Relief Project (SHaRP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (388, N'Student Life', N'Student Life', N'Student Life', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (389, N'Student Musicians Association (SMA)', N'Student Musicians Association (SMA)', N'Student Musicians Association (SMA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (390, N'Student Run Health Clinic (SRHC)', N'Student Run Health Clinic (SRHC)', N'Student Run Health Clinic (SRHC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (391, N'Student Special Services', N'Student Special Services', N'Student Special Services', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (392, N'Student United Way at UCR (SUW@UCR)', N'Student United Way at UCR (SUW@UCR)', N'Student United Way at UCR (SUW@UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (393, N'Students Consulting for Nonprofit Organizations (SCNO)', N'Students Consulting for Nonprofit Organizations (SCNO)', N'Students Consulting for Nonprofit Organizations (SCNO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (394, N'Students For Education Reform: UC Riverside (SFER)', N'Students For Education Reform: UC Riverside (SFER)', N'Students For Education Reform: UC Riverside (SFER)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (395, N'Students for Justice in Palestine (SJP) (SJP)', N'Students for Justice in Palestine (SJP) (SJP)', N'Students for Justice in Palestine (SJP) (SJP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (396, N'Students for Life', N'Students for Life', N'Students for Life', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (397, N'Super Smash side at UCR (SSS)', N'Super Smash side at UCR (SSS)', N'Super Smash side at UCR (SSS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (398, N'Sustainable UCR', N'Sustainable UCR', N'Sustainable UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (399, N'Swing Club', N'Swing Club', N'Swing Club', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (400, N'Taiwanese American Student Association (TASA)', N'Taiwanese American Student Association (TASA)', N'Taiwanese American Student Association (TASA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (401, N'Taiwanese Graduate Student Association (TGSA)', N'Taiwanese Graduate Student Association (TGSA)', N'Taiwanese Graduate Student Association (TGSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (402, N'Tau Beta Pi (The Engineering Honor Society) (TBP)', N'Tau Beta Pi (The Engineering Honor Society) (TBP)', N'Tau Beta Pi (The Engineering Honor Society) (TBP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (403, N'Tau Sigma National Honor Society (Tau Sigma)', N'Tau Sigma National Honor Society (Tau Sigma)', N'Tau Sigma National Honor Society (Tau Sigma)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (404, N'Team HBV at UCR (Team HBV)', N'Team HBV at UCR (Team HBV)', N'Team HBV at UCR (Team HBV)', NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 400 total records'
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (405, N'Teatro Quinto Sol (T.Q.S.)', N'Teatro Quinto Sol (T.Q.S.)', N'Teatro Quinto Sol (T.Q.S.)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (406, N'TEDxUCR', N'TEDxUCR', N'TEDxUCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (407, N'Teen Awareness on Anorexia, Bulimia, and Obesity Organization (TAABOO)', N'Teen Awareness on Anorexia, Bulimia, and Obesity Organization (TAABOO)', N'Teen Awareness on Anorexia, Bulimia, and Obesity Organization (TAABOO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (408, N'Tennis on Campus at University of California, Riverside (Tennis Club at UCR)', N'Tennis on Campus at University of California, Riverside (Tennis Club at UCR)', N'Tennis on Campus at University of California, Riverside (Tennis Club at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (409, N'The Anti-bullying Society at UCR (ABS)', N'The Anti-bullying Society at UCR (ABS)', N'The Anti-bullying Society at UCR (ABS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (410, N'The Association for GMO Education (AGMOE)', N'The Association for GMO Education (AGMOE)', N'The Association for GMO Education (AGMOE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (411, N'The Barn (Barn)', N'The Barn (Barn)', N'The Barn (Barn)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (412, N'The Deejays and Vinylphiles Club (DVC)', N'The Deejays and Vinylphiles Club (DVC)', N'The Deejays and Vinylphiles Club (DVC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (413, N'The Disney Club at UCR', N'The Disney Club at UCR', N'The Disney Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (414, N'The Dynamic Genome Outreach Group (DGOG)', N'The Dynamic Genome Outreach Group (DGOG)', N'The Dynamic Genome Outreach Group (DGOG)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (415, N'The Highlander Newspaper', N'The Highlander Newspaper', N'The Highlander Newspaper', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (416, N'The Leadership Community for Women Club (TLC)', N'The Leadership Community for Women Club (TLC)', N'The Leadership Community for Women Club (TLC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (417, N'The Mini-Graduate Student Association of the Environmental Toxicology Program (ETOX mini-GSA)', N'The Mini-Graduate Student Association of the Environmental Toxicology Program (ETOX mini-GSA)', N'The Mini-Graduate Student Association of the Environmental Toxicology Program (ETOX mini-GSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (418, N'The Mock Trial Team @ UCR (Mock Trial)', N'The Mock Trial Team @ UCR (Mock Trial)', N'The Mock Trial Team @ UCR (Mock Trial)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (419, N'The National Society of Leadership and Success', N'The National Society of Leadership and Success', N'The National Society of Leadership and Success', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (420, N'The Political Science Society (PSS)', N'The Political Science Society (PSS)', N'The Political Science Society (PSS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (421, N'The Salsa Club at UCR', N'The Salsa Club at UCR', N'The Salsa Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (422, N'The Society of Physics Students (SPS)', N'The Society of Physics Students (SPS)', N'The Society of Physics Students (SPS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (423, N'The Tzu Chi Collegiate Association at UCR (Tzu Ching Club at UCR)', N'The Tzu Chi Collegiate Association at UCR (Tzu Ching Club at UCR)', N'The Tzu Chi Collegiate Association at UCR (Tzu Ching Club at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (424, N'The WELL', N'The WELL', N'The WELL', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (425, N'The Well Christian Club at UCR (The Well Christian Club)', N'The Well Christian Club at UCR (The Well Christian Club)', N'The Well Christian Club at UCR (The Well Christian Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (426, N'There Is Nothing Minor In ME (TINMIM)', N'There Is Nothing Minor In ME (TINMIM)', N'There Is Nothing Minor In ME (TINMIM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (427, N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (428, N'To Write Love on Her Arms at UCR (TWLOHA-UCR)', N'To Write Love on Her Arms at UCR (TWLOHA-UCR)', N'To Write Love on Her Arms at UCR (TWLOHA-UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (429, N'Tomorrow s Teachers in Science and Math (TTSM)', N'Tomorrow s Teachers in Science and Math (TTSM)', N'Tomorrow s Teachers in Science and Math (TTSM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (430, N'Transfer Commuter Alliance (The Alliance)', N'Transfer Commuter Alliance (The Alliance)', N'Transfer Commuter Alliance (The Alliance)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (431, N'Transfer Outreach Program (TOP)', N'Transfer Outreach Program (TOP)', N'Transfer Outreach Program (TOP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (432, N'TRIO Scholars', N'TRIO Scholars', N'TRIO Scholars', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (433, N'U.S. Green Building Council Student Group at UCR (USGBC Student Group at UCR)', N'U.S. Green Building Council Student Group at UCR (USGBC Student Group at UCR)', N'U.S. Green Building Council Student Group at UCR (USGBC Student Group at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (434, N'UCR Go', N'UCR Go', N'UCR Go', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (435, N'UCR Recreation', N'UCR Recreation', N'UCR Recreation', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (436, N'UCR SH101', N'UCR SH101', N'UCR SH101', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (437, N'Ultimate Frisbee Club at UCR', N'Ultimate Frisbee Club at UCR', N'Ultimate Frisbee Club at UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (438, N'Undergraduate Business Association (UBA)', N'Undergraduate Business Association (UBA)', N'Undergraduate Business Association (UBA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (439, N'Undergraduate Sociological Association (USA)', N'Undergraduate Sociological Association (USA)', N'Undergraduate Sociological Association (USA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (440, N'Undergradute Education', N'Undergradute Education', N'Undergradute Education', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (441, N'UNICEF @ UCR', N'UNICEF @ UCR', N'UNICEF @ UCR', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (442, N'United Collegiate Riders (UC Riders/ The Motorcycle Club)', N'United Collegiate Riders (UC Riders/ The Motorcycle Club)', N'United Collegiate Riders (UC Riders/ The Motorcycle Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (443, N'United Students Against Sweatshops Local 19 (USAS Local 19)', N'United Students Against Sweatshops Local 19 (USAS Local 19)', N'United Students Against Sweatshops Local 19 (USAS Local 19)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (444, N'University Honors', N'University Honors', N'University Honors', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (445, N'University Honors 1st Year Cohort', N'University Honors 1st Year Cohort', N'University Honors 1st Year Cohort', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (446, N'University Honors 2nd Year Cohort', N'University Honors 2nd Year Cohort', N'University Honors 2nd Year Cohort', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (447, N'University Honors 3rd Year Cohort', N'University Honors 3rd Year Cohort', N'University Honors 3rd Year Cohort', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (448, N'University Honors 4th Year Cohort', N'University Honors 4th Year Cohort', N'University Honors 4th Year Cohort', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (449, N'University Honors Co-Curricular Committee', N'University Honors Co-Curricular Committee', N'University Honors Co-Curricular Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (450, N'University Honors Leadership Committee', N'University Honors Leadership Committee', N'University Honors Leadership Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (451, N'University Honors Media & Communications', N'University Honors Media & Communications', N'University Honors Media & Communications', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (452, N'University Honors Outreach & Recruitment Committee', N'University Honors Outreach & Recruitment Committee', N'University Honors Outreach & Recruitment Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (453, N'University Honors Service Committee', N'University Honors Service Committee', N'University Honors Service Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (454, N'University Honors Social Committee', N'University Honors Social Committee', N'University Honors Social Committee', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (455, N'Unnatural Causes: Health Equity Advocates (UNC)', N'Unnatural Causes: Health Equity Advocates (UNC)', N'Unnatural Causes: Health Equity Advocates (UNC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (456, N'US Army ROTC Cadet Recruiting at UCR (CRT at UCR)', N'US Army ROTC Cadet Recruiting at UCR (CRT at UCR)', N'US Army ROTC Cadet Recruiting at UCR (CRT at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (457, N'U-TOUCH', N'U-TOUCH', N'U-TOUCH', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (458, N'VegeTales', N'VegeTales', N'VegeTales', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (459, N'Vertical Ascent Climbing Club (VA climbing)', N'Vertical Ascent Climbing Club (VA climbing)', N'Vertical Ascent Climbing Club (VA climbing)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (460, N'Veteran Services', N'Veteran Services', N'Veteran Services', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (461, N'Vietnamese Students Association (VSA)', N'Vietnamese Students Association (VSA)', N'Vietnamese Students Association (VSA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (462, N'Wishmakers on Campus at UCR (WMOC @ UCR)', N'Wishmakers on Campus at UCR (WMOC @ UCR)', N'Wishmakers on Campus at UCR (WMOC @ UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (463, N'Women in Mathematics and Sciences at UCR (WIMS)', N'Women in Mathematics and Sciences at UCR (WIMS)', N'Women in Mathematics and Sciences at UCR (WIMS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (464, N'Women Who Lift (WWL)', N'Women Who Lift (WWL)', N'Women Who Lift (WWL)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (465, N'Women s Club Soccer (WCS)', N'Women s Club Soccer (WCS)', N'Women s Club Soccer (WCS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (466, N'Women s Club Volleyball (WCV)', N'Women s Club Volleyball (WCV)', N'Women s Club Volleyball (WCV)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (467, N'Women s Resource Center (WRC)', N'Women s Resource Center (WRC)', N'Women s Resource Center (WRC)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (468, N'Women s Rugby Football Club at UCR (WRFC at UCR)', N'Women s Rugby Football Club at UCR (WRFC at UCR)', N'Women s Rugby Football Club at UCR (WRFC at UCR)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (469, N'WORLD WITHOUT MONEY (WWM)', N'WORLD WITHOUT MONEY (WWM)', N'WORLD WITHOUT MONEY (WWM)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (470, N'Wrestling Club at UCR (Wrestling Club)', N'Wrestling Club at UCR (Wrestling Club)', N'Wrestling Club at UCR (Wrestling Club)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (471, N'Young Americans for Liberty at UCR (YAL)', N'Young Americans for Liberty at UCR (YAL)', N'Young Americans for Liberty at UCR (YAL)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (472, N'Young at Heart (YAH, Y@H)', N'Young at Heart (YAH, Y@H)', N'Young at Heart (YAH, Y@H)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (473, N'Young Science Scholars (YSS)', N'Young Science Scholars (YSS)', N'Young Science Scholars (YSS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (474, N'Zeta Phi Rho Fraternity Inc. (Zetas)', N'Zeta Phi Rho Fraternity Inc. (Zetas)', N'Zeta Phi Rho Fraternity Inc. (Zetas)', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[Soroity]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soroity](
	[SoroityId] [int] NOT NULL,
	[SoroityName] [nvarchar](256) NOT NULL,
	[SoroityCode] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Soroity] PRIMARY KEY CLUSTERED 
(
	[SoroityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Delta Gamma Fraternity for Women (DG, Dee Gee)', N'Delta Gamma Fraternity for Women (DG, Dee Gee)', N'Delta Gamma Fraternity for Women (DG, Dee Gee)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'Gamma Phi Beta Sorority (Gamma Phi)', N'Gamma Phi Beta Sorority (Gamma Phi)', N'Gamma Phi Beta Sorority (Gamma Phi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', N'Lambda Theta Alpha Latin Sorority Inc. (Lambda Ladies/LTA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Sigma Kappa Sorority', N'Sigma Kappa Sorority', N'Sigma Kappa Sorority', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', N'Sigma Gamma Rho Sorority Inc.- Xi Rho Chapter (SGRHO)', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[Fraternity]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fraternity](
	[FraternityId] [int] NOT NULL,
	[FraternityName] [nvarchar](256) NOT NULL,
	[FraternityCode] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Fraternity] PRIMARY KEY CLUSTERED 
(
	[FraternityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', N'Alpha Phi Alpha Fraternity Incorporated - Pi Epsilon Chapter (APA, Alphas, A Phi A)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Delta Chi Fraternity (D-Chi)', N'Delta Chi Fraternity (D-Chi)', N'Delta Chi Fraternity (D-Chi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'Delta Tau Delta Fraternity (Delts)', N'Delta Tau Delta Fraternity (Delts)', N'Delta Tau Delta Fraternity (Delts)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Phi Kappa Psi Fraternity (Phi Psi)', N'Phi Kappa Psi Fraternity (Phi Psi)', N'Phi Kappa Psi Fraternity (Phi Psi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Phi Kappa Sigma Fraternity (Skulls, Phi Kaps)', N'Phi Kappa Sigma Fraternity (Skulls, Phi Kaps)', N'Phi Kappa Sigma Fraternity (Skulls, Phi Kaps)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Pi Kappa Alpha Fraternity (Pike)', N'Pi Kappa Alpha Fraternity (Pike)', N'Pi Kappa Alpha Fraternity (Pike)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'Sigma Alpha Epsilon (SAE)', N'Sigma Alpha Epsilon (SAE)', N'Sigma Alpha Epsilon (SAE)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'ma Phi Epsilon Fraternity (SigEp)', N'ma Phi Epsilon Fraternity (SigEp)', N'ma Phi Epsilon Fraternity (SigEp)', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[GreakOrganization]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GreakOrganization](
	[GreakOrganizationId] [int] NOT NULL,
	[GreakOrganizationName] [nvarchar](256) NOT NULL,
	[GreakOrganizationCode] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_GreakOrganization] PRIMARY KEY CLUSTERED 
(
	[GreakOrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (0, N'Greak Organizations', N'Greak Organizations', N'Greak Organizations', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', N'Alpha Chi Omega Sorority (A Chi O)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Alpha Epsilon Pi Fraternity (AEPi)', N'Alpha Epsilon Pi Fraternity (AEPi)', N'Alpha Epsilon Pi Fraternity (AEPi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'Alpha Gamma Alpha Sorority', N'Alpha Gamma Alpha Sorority', N'Alpha Gamma Alpha Sorority', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', N'Alpha Kappa Alpha Sorority (Kappa Theta Chapter) (AKA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Alpha Kappa Psi (AKPsi)', N'Alpha Kappa Psi (AKPsi)', N'Alpha Kappa Psi (AKPsi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Alpha Omega (AO)', N'Alpha Omega (AO)', N'Alpha Omega (AO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'Alpha Phi Omega (APhiO)', N'Alpha Phi Omega (APhiO)', N'Alpha Phi Omega (APhiO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'Alpha Pi Sigma Sorority Inc. (APS)', N'Alpha Pi Sigma Sorority Inc. (APS)', N'Alpha Pi Sigma Sorority Inc. (APS)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (9, N'Alpha Sigma Omicron (ASO)', N'Alpha Sigma Omicron (ASO)', N'Alpha Sigma Omicron (ASO)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (10, N'Beta Chi Theta (Beta Chi)', N'Beta Chi Theta (Beta Chi)', N'Beta Chi Theta (Beta Chi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (11, N'Beta Phi Delta (Beta)', N'Beta Phi Delta (Beta)', N'Beta Phi Delta (Beta)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (12, N'Beta Upsilon Delta Fraternity (BUD)', N'Beta Upsilon Delta Fraternity (BUD)', N'Beta Upsilon Delta Fraternity (BUD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (13, N'Delta Sigma Pi (DSP)', N'Delta Sigma Pi (DSP)', N'Delta Sigma Pi (DSP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (14, N'Delta Sigma Theta (DST)', N'Delta Sigma Theta (DST)', N'Delta Sigma Theta (DST)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (15, N'Epsilon Iota Sigma Fraternity (??S)', N'Epsilon Iota Sigma Fraternity (??S)', N'Epsilon Iota Sigma Fraternity (??S)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (16, N'Gamma Rho Lambda (GRL)', N'Gamma Rho Lambda (GRL)', N'Gamma Rho Lambda (GRL)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (17, N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', N'Lambda Sigma Gamma Sorority (LSG, Lambdas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (18, N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', N'Lambda Theta Nu Sorority, Incorporated (Lambdas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (19, N'Omega Zeta Chi Sorority (OZChi)', N'Omega Zeta Chi Sorority (OZChi)', N'Omega Zeta Chi Sorority (OZChi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (20, N'Pi Delta Psi Fraternity Inc. (PDPsi)', N'Pi Delta Psi Fraternity Inc. (PDPsi)', N'Pi Delta Psi Fraternity Inc. (PDPsi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (21, N'Rho Delta Chi Sorority (Rhos)', N'Rho Delta Chi Sorority (Rhos)', N'Rho Delta Chi Sorority (Rhos)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (22, N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', N'Sigma Alpha Lambda National Honors Society (Sigma Alpha Lambda)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (23, N'Sigma Delta Alpha (SDA)', N'Sigma Delta Alpha (SDA)', N'Sigma Delta Alpha (SDA)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (24, N'Sigma Lambda Beta International Fraternity Inc. (Betas)', N'Sigma Lambda Beta International Fraternity Inc. (Betas)', N'Sigma Lambda Beta International Fraternity Inc. (Betas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (25, N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', N'Sigma Omicron Pi Sorority Student Chapters Inc. (SOPi)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (26, N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', N'Sigma Pi Alpha Sorority (Sigmas, Ellas)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (27, N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', N'Theta Tau Professional Engineering Fraternity - Sigma Delta Chapter (Theta Tau)', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[GreekHonorSocities]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GreekHonorSocities](
	[GreekHonorSocitiesId] [int] NOT NULL,
	[GreekHonorSocitiesName] [nvarchar](256) NOT NULL,
	[GreekHonorSocitiesCode] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_GreekHonorSocities] PRIMARY KEY CLUSTERED 
(
	[GreekHonorSocitiesId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Alpha Lambda Delta Honors Society (ALD)', N'Alpha Lambda Delta Honors Society (ALD)', N'Alpha Lambda Delta Honors Society (ALD)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Delta Epsilon Iota Academic Honor Society (DEI)', N'Delta Epsilon Iota Academic Honor Society (DEI)', N'Delta Epsilon Iota Academic Honor Society (DEI)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'Gamma Beta Phi Honor Society (GBP)', N'Gamma Beta Phi Honor Society (GBP)', N'Gamma Beta Phi Honor Society (GBP)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', N'Phi Sigma Pi National Honor Fraternity - Zeta Eta Chapter (Phi Sigma Pi - Zeta Eta Chapter)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Tau Sigma National Honor Society (Tau Sigma)', N'Tau Sigma National Honor Society (Tau Sigma)', N'Tau Sigma National Honor Society (Tau Sigma)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Tau Beta Pi (The Engineering Honor Society) (TBP)', N'Tau Beta Pi (The Engineering Honor Society) (TBP)', N'Tau Beta Pi (The Engineering Honor Society) (TBP)', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[State]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[StateCode] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Alabama', N'AL', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Alaska', N'AK', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'Arizona', N'AZ', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Arkansas ', N'AR', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'California', N'CA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Colorado', N'CO', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'Connecticut', N'CT', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'Delaware ', N'DE', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (9, N'Florida ', N'FL', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (10, N'Georgia', N'GA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (11, N'Hawaii', N'HI', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (12, N'Idaho ', N'ID', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (13, N'Illinois ', N'IL', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (14, N'Indiana ', N'IN', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (15, N'Iowa', N'IA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (16, N'Kansas ', N'KS', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (17, N'Kentucky ', N'KY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (18, N'Louisiana', N'LA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (19, N'Maine', N'ME', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (20, N'Maryland', N'MD', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (21, N'Massachusetts ', N'MA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (22, N'Michigan ', N'MI', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (23, N'Minnesota', N'MN', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (24, N'Mississippi', N'MS', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (25, N'Missouri', N'MO', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (26, N'Montana', N'MT', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (27, N'Nebraska', N'NE', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (28, N'Nevada', N'NV', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (29, N'New Hampshire ', N'NH', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (30, N'New Jersey ', N'NJ', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (31, N'New Mexico ', N'NM', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (32, N'New York ', N'NY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (33, N'North Carolina', N'NC', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (34, N'North Dakota', N'ND', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (35, N'Ohio', N'OH', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (36, N'Oklahoma ', N'OK', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (37, N'Oregon ', N'OR', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (38, N'Pennsylvania', N'PA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (39, N'Rhode Island ', N'RI', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (40, N'South Carolina ', N'SC', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (41, N'South Dakota', N'SD', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (42, N'Tennessee ', N'TN', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (43, N'Texas', N'TX', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (44, N'Utah', N'UT', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (45, N'Vermont', N'VT', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (46, N'Virginia', N'VA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (47, N'Washington', N'WA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (48, N'West Virginia', N'WV', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (49, N'Wisconsin', N'WI', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (50, N'Wyoming ', N'WY', NULL, NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[User]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[AspnetUserId] [uniqueidentifier] NULL,
	[IsPartialUser] [bit] NULL,
	[IsFBUser] [bit] NULL,
	[FBAccessToken] [nvarchar](max) NULL,
	[FBUrl] [nvarchar](256) NULL,
	[FBTokenTimeStamp] [timestamp] NULL,
	[FBProfilePictureURL] [nvarchar](256) NULL,
	[StreetAddress] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[StateId] [int] NULL,
	[Zip] [nvarchar](256) NULL,
	[DateOfBirth] [date] NULL,
	[BestContactNumber] [nvarchar](256) NULL,
	[DriversLicenseNumber] [nvarchar](256) NULL,
	[Status] [nvarchar](256) NULL,
	[PersonalEmail] [nvarchar](256) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[RatingValue] [decimal](5, 2) NULL,
	[FBid] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[FirstName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[HouseId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[ReferralCode] [varchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'dbe8678b-23bb-4ade-8714-019490a4ebce', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1235658565', NULL, NULL, N'djx_me@yahoo.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010CF4BB AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010CF4BB AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'dfgdf', N'', N'fgf', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'cb2bfb4d-f776-467c-8ae8-07c23482453a', NULL, 1, 0, NULL, NULL, NULL, N'add', N'city', 3, N'12133', CAST(0x7E070B00 AS Date), N'1234567890', NULL, NULL, N'look22cool@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40700523010 AS DateTime), N'cb2bfb4d-f776-467c-8ae8-07c23482453a', CAST(0x0000A407005232BA AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'Sampath', N'&nbsp;', N'Medawatta', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'none')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'c1ff7b22-2799-4542-b215-0a25779d6d68', NULL, 1, 0, NULL, NULL, NULL, N'add', N'city', 3, N'12133', CAST(0x7E070B00 AS Date), N'1234567890', NULL, NULL, N'testing@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005419EC AS DateTime), N'c1ff7b22-2799-4542-b215-0a25779d6d68', CAST(0x0000A40700541C58 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'testing', N'&nbsp;', N'Medawatta', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'none')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'0ad651bb-f2bb-4686-aa46-11250d6c68e8', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1239907890', NULL, NULL, N'looks@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AB883F AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800B163A4 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'look', N'', N'me', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'd62fcab2-ddc7-42d5-b162-187501be92f5', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', 1, 0, NULL, NULL, NULL, N'add', N'city', 7, N'12345', CAST(0x7E070B00 AS Date), N'1212335667', NULL, N'Active', N'look@gmail.com', NULL, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A4100075EB04 AS DateTime), N'd62fcab2-ddc7-42d5-b162-187501be92f5', CAST(0x0000A4100075ECE0 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'the', N'&nbsp;', N'look', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'landlord12')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'6100822c-1882-46bc-9670-18f1e67a7ddb', NULL, 1, 0, NULL, NULL, NULL, N'add', N'city', 3, N'12133', CAST(0x7E070B00 AS Date), N'1234567890', NULL, NULL, N'test@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40700570B45 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A41000755AE0 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'test 1', N'', N'Medawatta 1', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'none')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'e945f3e9-b64f-4a82-b016-2b1b548d5ba8', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1234567890', NULL, NULL, N'testing1234@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AE396C AS DateTime), N'e945f3e9-b64f-4a82-b016-2b1b548d5ba8', CAST(0x0000A42800AE3B01 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'testing1234', N'', N'cool', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'0e7d2163-5b09-47f2-b9a0-35f321292c3b', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5558984564', NULL, NULL, N'bfe@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300BA6E89 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413011B4D33 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'fgff', N'gyuyuy', N'kffffdf', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'7f77d1b2-de11-49ec-b3a8-36f5cd01867f', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1239907890', NULL, NULL, N'rentmyhome@yopmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41600574D98 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A424013D699C AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'Sampath', N'', N'Medawatta', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'944149c1-f1dd-4250-9a99-45e40fc692f7', N'944149c1-f1dd-4250-9a99-45e40fc692f7', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'landone@landone.landone', NULL, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A425012FA5D3 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A425013191C1 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'landone', N'landone', N'landone', N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'landone')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'c4661c18-ee87-4e53-b18e-53fabec073bc', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1234567890', NULL, NULL, N'cool@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005B27EF AS DateTime), N'c4661c18-ee87-4e53-b18e-53fabec073bc', CAST(0x0000A407005B6B1E AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'Sampath', N'&nbsp;', N'Medawatta', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Active', N'sampath.m@growfastonline.com.au', NULL, N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', CAST(0x0000A3EF00741C90 AS DateTime), N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', CAST(0x0000A3EF00741C90 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'sam', N'', N'sam1', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', N'landlord12')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'fd7e08c3-a572-4e84-a43f-6ab77e47db90', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4479557644', NULL, NULL, N'me54544@yahoo.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010C83C4 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280154A668 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'Arizona', N'home', N'VIC', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'f57f6efd-b65d-4cee-bf02-71232a8e830d', NULL, 0, 1, N'CAAVxjIX13gYBAGZBzZAGddWTWtKNb4w4hV1sB350b5FHduTw90eOeHeM7Qj81qrHdoiNhFqujrrepcdrzWde5AbPyVRZA69Qs9wDzpy1CZAKeuxkhANZC3qhsepsY13tTMFyxEgsDnXZCTofBt64eosOkPrbPBAAnBLXaZCWZBWM8QkdUAjyTgFNhE6XtBPnzxOvj8Jduthg1LTXOPyUARoD', NULL, N'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10394042_10152513909057499_7685869697928398445_n.jpg?oh=0e41ee2f23b8f4028d9fe97a9bed8471&amp;oe=5527EE1E&amp;__gda__=1429654043_5f86be8d4f96744faea13366400b365d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'cooldilcool@yahoo.com', NULL, N'f57f6efd-b65d-4cee-bf02-71232a8e830d', CAST(0x0000A4230097632D AS DateTime), N'f57f6efd-b65d-4cee-bf02-71232a8e830d', CAST(0x0000A4230097632D AS DateTime), CAST(0.00 AS Decimal(5, 2)), N'10152685168392499', N'male', NULL, NULL, N'Dileep', NULL, N'00000000-0000-0000-0000-000000000000', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'89f55582-128f-42c3-93bd-7f1fd0600667', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1234567890', NULL, NULL, N'landtwo@landtwo.landtwo', NULL, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A4250131588D AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A4250131588D AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'landtwo', N'landtwo', N'landtwo', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', 0, 0, NULL, NULL, NULL, N'add', N'city', 7, N'12345', CAST(0x7E070B00 AS Date), N'1231231234', NULL, N'Active', N'sampath.m@virtualplanet.com.au', NULL, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DE0019795D AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0063EF42 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'sam', N'Arizona', N'landlord', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', N'landlord12')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'3a7dcb56-dbeb-4ed2-bc01-c107d081117c', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1234567890', NULL, NULL, N'testing22@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A78FA6 AS DateTime), N'3a7dcb56-dbeb-4ed2-bc01-c107d081117c', CAST(0x0000A42800A79148 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'testing', N'&nbsp;', N'Medawatta', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'e7d127bc-5217-473c-b569-ca9ae42acbf9', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'7542222323', NULL, NULL, N'sami@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300C06832 AS DateTime), N'e7d127bc-5217-473c-b569-ca9ae42acbf9', CAST(0x0000A41300C06A4F AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'Sampath', N'&nbsp;', N'Medawatta', N'89d8128e-ab4a-4884-9b12-5b1ce9d14762', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'b18282e0-abd6-4905-b281-ce55b2a38384', N'b18282e0-abd6-4905-b281-ce55b2a38384', 0, 0, NULL, NULL, NULL, N'234234', N'sdfsdfsd', 12, N'42342', CAST(0xFC380B00 AS Date), N'2343422342', NULL, N'Active', N'cooldilcool@gmail.com', NULL, N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A3DE00FA8F80 AS DateTime), N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A41C003DDB5A AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'landnirshan', N'landnirshan', N'landnirshan', NULL, N'0a3fda72-fc47-402d-817b-445d89c4c4df', N'landnirsha')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'41023561-7e10-4dc8-9dd1-d78e4340d2a0', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 1, 0, NULL, NULL, NULL, N'add', N'city', 3, N'12133', CAST(0x7E070B00 AS Date), N'1234567890', NULL, NULL, N'djx_me@yahoo.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F63C6C AS DateTime), N'41023561-7e10-4dc8-9dd1-d78e4340d2a0', CAST(0x0000A3DF00F63E09 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'djx', N'_', N'me', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'none')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'50d5e2b5-b501-4b07-be4d-d91bc8c53c7a', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'3333333333', NULL, NULL, N'student2@student2.student2', NULL, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501327190 AS DateTime), N'50d5e2b5-b501-4b07-be4d-d91bc8c53c7a', CAST(0x0000A4250132730D AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'student2', N'student2', N'student2', N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'5e4f2885-1404-4774-82f3-ec1378914d7e', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1234568007', NULL, NULL, N'testroommate@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40F011C9C26 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40F01247B35 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'Sampath 1', N'D', N'Medawatta 1', N'bb92a6ed-9d52-4142-85be-739744208fae', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'ed82067d-475c-445d-b56a-f04b9076e3f1', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1239907890', NULL, NULL, N'cool123@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A9830A AS DateTime), N'ed82067d-475c-445d-b56a-f04b9076e3f1', CAST(0x0000A42800A984A0 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'cool', N'&nbsp;', N'place', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, 0, NULL, NULL, NULL, N'add', N'city', 3, N'12133', CAST(0x7E070B00 AS Date), N'1235678007', NULL, NULL, N'look2cool@gmail.com', NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F3DB08 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800ADD8E6 AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, N'Male', N'look', N'2', N'cool', N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'none')
INSERT [dbo].[User] ([UserId], [AspnetUserId], [IsPartialUser], [IsFBUser], [FBAccessToken], [FBUrl], [FBProfilePictureURL], [StreetAddress], [City], [StateId], [Zip], [DateOfBirth], [BestContactNumber], [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid], [Gender], [FirstName], [MiddleName], [LastName], [HouseId], [RoleId], [ReferralCode]) VALUES (N'b8eb538e-4c0d-436e-9340-fa92b15b71f1', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2222222222', NULL, NULL, N'student1@student1.student1', NULL, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A4250132617E AS DateTime), N'b8eb538e-4c0d-436e-9340-fa92b15b71f1', CAST(0x0000A425013262FC AS DateTime), CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'student1', N'student1', N'student1', N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', NULL)
/****** Object:  Table [dbo].[Spotlight]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spotlight](
	[SpotlightId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Awards] [nvarchar](256) NULL,
	[Achievements] [nvarchar](256) NULL,
	[CurentGPA] [nvarchar](256) NULL,
	[OraganizationId] [int] NULL,
	[Involvments] [nvarchar](256) NULL,
	[FraternityId] [int] NULL,
	[SoroityId] [int] NULL,
	[GreekHonorSocitiesId] [int] NULL,
	[GreakOrganizationId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Spotlight] PRIMARY KEY CLUSTERED 
(
	[SpotlightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightUpdate]    Script Date: 02/27/2015 13:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightUpdate] 
	@UserId uniqueidentifier,
    @Awards nvarchar(256),
    @Achievements nvarchar(256),
    @CurentGPA nvarchar(256),
    @OraganizationId int,
    @Involvments nvarchar(256),
    @FraternityId int,
    @SoroityId int,
    @GreekHonorSocitiesId int,
    @GreakOrganizationId int,
    @IsDeleted bit = NULL,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	SET @UpdatedDate = GETUTCDATE()
	
	BEGIN TRAN

UPDATE [dbo].[Spotlight]
   SET [Awards] = @Awards
      ,[Achievements] = @Achievements
      ,[CurentGPA] = @CurentGPA
      ,[OraganizationId] = @OraganizationId
      ,[Involvments] = @Involvments
      ,[FraternityId] = @FraternityId
      ,[SoroityId] = @SoroityId
      ,[GreekHonorSocitiesId] = @GreekHonorSocitiesId
      ,[GreakOrganizationId] = @GreakOrganizationId
      ,[IsDeleted] = @IsDeleted
      ,[UpdatedBy] = @UpdatedBy
      ,[UpdatedDate] = @UpdatedDate
 WHERE [UserId] = @UserId

COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightSelectByUserId]    Script Date: 02/27/2015 13:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightSelectByUserId] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  


SELECT [SpotlightId]
      ,[UserId]
      ,[Awards]
      ,[Achievements]
      ,[CurentGPA]
      ,[OraganizationId]
           ,[Involvments]
           ,[FraternityId]
           ,[SoroityId]
            ,[GreekHonorSocitiesId]
      ,[GreakOrganizationId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[Spotlight]
WHERE  ([UserId] = @UserId OR @UserId IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightSelectAll]    Script Date: 02/27/2015 13:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightSelectAll] 
   
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN


SELECT [SpotlightId]
      ,[UserId]
      ,[Awards]
      ,[Achievements]
      ,[CurentGPA]
      ,[OraganizationId]
           ,[Involvments]
           ,[FraternityId]
           ,[SoroityId]
            ,[GreekHonorSocitiesId]
      ,[GreakOrganizationId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[Spotlight]
  
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightSelect]    Script Date: 02/27/2015 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightSelect] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  


SELECT [SpotlightId]
      ,[UserId]
      ,[Awards]
      ,[Achievements]
      ,[CurentGPA]
     ,[OraganizationId]
           ,[Involvments]
           ,[FraternityId]
           ,[SoroityId]
            ,[GreekHonorSocitiesId]
      ,[GreakOrganizationId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[Spotlight]
WHERE  ([UserId] = @UserId OR @UserId IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightInsert]    Script Date: 02/27/2015 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightInsert] 
   
    @UserId uniqueidentifier,
    @Awards nvarchar(256),
    @Achievements nvarchar(256),
    @CurentGPA nvarchar(256),
    @OraganizationId int,
    @Involvments nvarchar(256),
    @FraternityId int,
    @SoroityId int,
    @GreekHonorSocitiesId int,
    @GreakOrganizationId int,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	
	INSERT INTO [dbo].[Spotlight]
           ([UserId]
           ,[Awards]
           ,[Achievements]
           ,[CurentGPA]
           ,[OraganizationId]
           ,[Involvments]
           ,[FraternityId]
           ,[SoroityId]
           ,[GreekHonorSocitiesId] 
			,[GreakOrganizationId] 
           ,[IsDeleted]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           (@UserId
           ,@Awards
           ,@Achievements
           ,@CurentGPA
           ,@OraganizationId
           ,@Involvments
           ,@FraternityId
           ,@SoroityId
           ,@GreekHonorSocitiesId
           ,@GreakOrganizationId
           ,@IsDeleted
           ,@CreatedBy
           ,@CreatedDate
           ,@CreatedBy
           ,@CreatedDate)
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SpotlightDelete]    Script Date: 02/27/2015 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SpotlightDelete] 
    @SpotlightId int,
     @UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Spotlight]
	SET  [IsDeleted] = 1, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = GETUTCDATE()
	WHERE  [SpotlightId] = @SpotlightId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_Spotlight_IsSpotlightExist]    Script Date: 02/27/2015 13:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_Spotlight_IsSpotlightExist]
     @UserId uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from Spotlight where UserId=@UserId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  Table [dbo].[Landlord]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Landlord](
	[LandlordId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[LandlordName] [nvarchar](256) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Landlord] PRIMARY KEY CLUSTERED 
(
	[LandlordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'dbe8678b-23bb-4ade-8714-019490a4ebce', N'dbe8678b-23bb-4ade-8714-019490a4ebce', N'dfgdf  fgf', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010D18AC AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010D18AC AS DateTime))
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'0e7d2163-5b09-47f2-b9a0-35f321292c3b', N'0e7d2163-5b09-47f2-b9a0-35f321292c3b', N'fgff gyuyuy kffffdf', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300BA71C1 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413011B5F91 AS DateTime))
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'fd7e08c3-a572-4e84-a43f-6ab77e47db90', N'fd7e08c3-a572-4e84-a43f-6ab77e47db90', N'Arizona home VIC', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010C8653 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280154B0CB AS DateTime))
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'89f55582-128f-42c3-93bd-7f1fd0600667', N'89f55582-128f-42c3-93bd-7f1fd0600667', N'landtwo landtwo landtwo', 0, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501315AF7 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501315AF7 AS DateTime))
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'sam Arizona landlord', 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0063F194 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0063F194 AS DateTime))
INSERT [dbo].[Landlord] ([LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'b18282e0-abd6-4905-b281-ce55b2a38384', N'b18282e0-abd6-4905-b281-ce55b2a38384', N'landnirshan landnirshan landnirshan', 0, N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A3DE00FB7048 AS DateTime), N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A41C003DDDDB AS DateTime))
/****** Object:  Table [dbo].[House]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[HouseId] [uniqueidentifier] NOT NULL,
	[LandlordId] [uniqueidentifier] NOT NULL,
	[StreetAddress] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[StateId] [int] NULL,
	[Zip] [nvarchar](256) NULL,
	[YearHomeBuild] [int] NULL,
	[BedRooms] [int] NULL,
	[BathRooms] [int] NULL,
	[LotSquareFootage] [int] NULL,
	[TotalSquareFootage] [int] NULL,
	[UtilitiesIncludedInRent] [nvarchar](256) NULL,
	[PropertyImagePath] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[RatingValue] [decimal](5, 2) NULL,
	[Price] [decimal](10, 2) NULL,
	[IsPartialHouse] [bit] NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[HouseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'f6aa6934-e992-420a-8ac1-2c4371a4945b', N'b18282e0-abd6-4905-b281-ce55b2a38384', N'ddfsd', N'fsdfsdfsd', 4, N'23423', 1951, 3, 9, 3423423, 423423, N'sdfsdfsdfwdf', NULL, 0, N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A3DE00FB9385 AS DateTime), N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A3DE00FB9385 AS DateTime), NULL, CAST(4234.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'2bb0a3f0-ffdd-425d-8f59-5121ab59f19c', N'b18282e0-abd6-4905-b281-ce55b2a38384', N'sfdfsdf', N'sdfasdf', 4, N'12323', 1952, 14, 2, 234234, 23423, N'4', NULL, 0, N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A41C001D22EF AS DateTime), N'b18282e0-abd6-4905-b281-ce55b2a38384', CAST(0x0000A41C008E4F0D AS DateTime), NULL, CAST(123123.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'89d8128e-ab4a-4884-9b12-5b1ce9d14762', N'0e7d2163-5b09-47f2-b9a0-35f321292c3b', N'34333', N'Maharagama', 15, N'10210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300BB6E14 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41301046487 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'bb92a6ed-9d52-4142-85be-739744208fae', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'add', N'city', 3, N'12133', 1982, 4, 3, 32, 23, N'yes', NULL, 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF006421A8 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF006421A8 AS DateTime), NULL, CAST(1234.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'fd7e08c3-a572-4e84-a43f-6ab77e47db90', N'best place', N'colombo', 9, N'10280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4160056FDDA AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4160056FDDA AS DateTime), NULL, NULL, 1)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'89f55582-128f-42c3-93bd-7f1fd0600667', N'200/4,', N'Nugegoda', 7, N'10250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501318FD6 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501318FD6 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[House] ([HouseId], [LandlordId], [StreetAddress], [City], [StateId], [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price], [IsPartialHouse]) VALUES (N'a2d42d5b-47b7-4201-8e75-d2a4c9115849', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'267/A', N'Maharagama', 15, N'10210', 2007, 2, 4, 32, 23, N'yes', NULL, 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A41A012C6256 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A41A012C6256 AS DateTime), NULL, CAST(1234.00 AS Decimal(10, 2)), 0)
/****** Object:  Table [dbo].[StudentHouseLeave]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHouseLeave](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestBy] [uniqueidentifier] NOT NULL,
	[RequestTo] [uniqueidentifier] NOT NULL,
	[RequestDate] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[ResponseDate] [datetime] NULL,
	[HouseId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_StudentHouseLeave] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentHouseLeave] ON
INSERT [dbo].[StudentHouseLeave] ([RequestID], [RequestBy], [RequestTo], [RequestDate], [status], [ResponseDate], [HouseId]) VALUES (1, N'41023561-7e10-4dc8-9dd1-d78e4340d2a0', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A406014A0EFE AS DateTime), 2, CAST(0x0000A406014D8077 AS DateTime), N'bb92a6ed-9d52-4142-85be-739744208fae')
INSERT [dbo].[StudentHouseLeave] ([RequestID], [RequestBy], [RequestTo], [RequestDate], [status], [ResponseDate], [HouseId]) VALUES (2, N'cb2bfb4d-f776-467c-8ae8-07c23482453a', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4080035652C AS DateTime), 1, CAST(0x0000A41000A18E3A AS DateTime), N'bb92a6ed-9d52-4142-85be-739744208fae')
INSERT [dbo].[StudentHouseLeave] ([RequestID], [RequestBy], [RequestTo], [RequestDate], [status], [ResponseDate], [HouseId]) VALUES (3, N'c1ff7b22-2799-4542-b215-0a25779d6d68', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006A7D0C AS DateTime), 1, CAST(0x0000A41300B93D4A AS DateTime), N'bb92a6ed-9d52-4142-85be-739744208fae')
SET IDENTITY_INSERT [dbo].[StudentHouseLeave] OFF
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseLeaveUpdate]    Script Date: 02/27/2015 13:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseLeaveUpdate] 
    @HouseId uniqueidentifier,
    @RequestBy uniqueidentifier,
    @RequestTo uniqueidentifier,
    @status int = 0,
    @ResponseDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @ResponseDate = GETUTCDATE()
	
	UPDATE [dbo].[StudentHouseLeave]
	SET 
      [status] = @status
      ,[ResponseDate] = @ResponseDate
	WHERE [RequestBy] = @RequestBy and [RequestTo] = @RequestTo and [HouseId] = @HouseId
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseLeaveSelect]    Script Date: 02/27/2015 13:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseLeaveSelect] 
    @HouseId uniqueidentifier,
    @RequestTo uniqueidentifier

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	SELECT [RequestID]
      ,[RequestBy]
      ,[RequestTo]
      ,[RequestDate]
      ,[status]
      ,[ResponseDate]
      ,[HouseId]
	FROM [dbo].[StudentHouseLeave]
	where [RequestTo] = @RequestTo and  [HouseId]= @HouseId and [status] = 0
	
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseLeaveInsert]    Script Date: 02/27/2015 13:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseLeaveInsert] 
    @HouseId uniqueidentifier,
    @RequestBy uniqueidentifier,
    @RequestTo uniqueidentifier,
    @status int = 0,
    @RequestDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @RequestDate = GETUTCDATE()
	
	INSERT INTO [dbo].[StudentHouseLeave]
           ([RequestBy]
           ,[RequestTo]
           ,[RequestDate]
           ,[status]
           ,[ResponseDate]
           ,[HouseId])
     VALUES
           (@RequestBy
           ,@RequestTo
           ,@RequestDate
           ,@status
           ,@RequestDate
           ,@HouseId)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseLeave_IsExist]    Script Date: 02/27/2015 13:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseLeave_IsExist] 
    @HouseId uniqueidentifier,
    @RequestTo uniqueidentifier,
@IsExist bit output
AS 
	IF exists (select null from [StudentHouseLeave] where [RequestTo] = @RequestTo and  [HouseId]= @HouseId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
GO
/****** Object:  Table [dbo].[StudentHouse]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHouse](
	[StudentHouseId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StudentHouse] PRIMARY KEY CLUSTERED 
(
	[StudentHouseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentHouse] ON
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, N'bb92a6ed-9d52-4142-85be-739744208fae', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F5F6D5 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F5F6D5 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, N'bb92a6ed-9d52-4142-85be-739744208fae', N'41023561-7e10-4dc8-9dd1-d78e4340d2a0', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F64015 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F64015 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, N'bb92a6ed-9d52-4142-85be-739744208fae', N'cb2bfb4d-f776-467c-8ae8-07c23482453a', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005235B6 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005235B6 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, N'bb92a6ed-9d52-4142-85be-739744208fae', N'c1ff7b22-2799-4542-b215-0a25779d6d68', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40700541F77 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40700541F77 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (31, N'bb92a6ed-9d52-4142-85be-739744208fae', N'6100822c-1882-46bc-9670-18f1e67a7ddb', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005710C7 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005710C7 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (32, N'bb92a6ed-9d52-4142-85be-739744208fae', N'c4661c18-ee87-4e53-b18e-53fabec073bc', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005BAEDD AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A407005BAEDD AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (33, N'bb92a6ed-9d52-4142-85be-739744208fae', N'5e4f2885-1404-4774-82f3-ec1378914d7e', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40F011CA020 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A40F011CA020 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, N'bb92a6ed-9d52-4142-85be-739744208fae', N'd62fcab2-ddc7-42d5-b162-187501be92f5', 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A4100075EF3C AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A4100075EF3C AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, N'bb92a6ed-9d52-4142-85be-739744208fae', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41000A2169B AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41000A2169B AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, N'89d8128e-ab4a-4884-9b12-5b1ce9d14762', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300BB73FA AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300BB73FA AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, N'89d8128e-ab4a-4884-9b12-5b1ce9d14762', N'e7d127bc-5217-473c-b569-ca9ae42acbf9', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300C06D18 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41300C06D18 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (38, N'89d8128e-ab4a-4884-9b12-5b1ce9d14762', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010466A8 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A413010466A8 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (39, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41600514F80 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A41600514F80 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (40, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A416005702CE AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A416005702CE AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (41, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'7f77d1b2-de11-49ec-b3a8-36f5cd01867f', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4160057519C AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4160057519C AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (42, N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'944149c1-f1dd-4250-9a99-45e40fc692f7', 0, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501319402 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501319402 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (43, N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'b8eb538e-4c0d-436e-9340-fa92b15b71f1', 0, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501326538 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501326538 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (44, N'75d7e14a-21ef-410a-9faf-ad0fadd66d12', N'50d5e2b5-b501-4b07-be4d-d91bc8c53c7a', 0, N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501327523 AS DateTime), N'944149c1-f1dd-4250-9a99-45e40fc692f7', CAST(0x0000A42501327523 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (45, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280088FF12 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280088FF12 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (46, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A428008F5560 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A428008F5560 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (47, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280090C7F5 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280090C7F5 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (48, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280093E738 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280093E738 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (49, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280096F6B6 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280096F6B6 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (50, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A445A7 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A445A7 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (51, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'3a7dcb56-dbeb-4ed2-bc01-c107d081117c', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A79349 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A79349 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (52, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A91DF4 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A91DF4 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (53, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'ed82067d-475c-445d-b56a-f04b9076e3f1', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A986A6 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800A986A6 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (54, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AAF054 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AAF054 AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (55, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'0ad651bb-f2bb-4686-aa46-11250d6c68e8', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AB8BEA AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AB8BEA AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (56, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800ADDC4B AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800ADDC4B AS DateTime))
INSERT [dbo].[StudentHouse] ([StudentHouseId], [HouseId], [UserId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (57, N'75b13596-bfd2-4831-bf0e-8cfc4cca9204', N'e945f3e9-b64f-4a82-b016-2b1b548d5ba8', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AE3D01 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42800AE3D01 AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentHouse] OFF
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseUpdate]    Script Date: 02/27/2015 13:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseUpdate] 
    @HouseId  uniqueidentifier,
    @UserId uniqueidentifier,
    @IsDeleted bit = NULL,
    @UpdatedBy uniqueidentifier,
     @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

set @UpdatedDate = GETUTCDATE()

UPDATE [dbo].[StudentHouse]
   SET [HouseId] = @HouseId 
      ,[UserId] = @UserId
      ,[IsDeleted] = @IsDeleted
	,[UpdatedBy] = @UpdatedBy
	,[UpdatedDate] = @UpdatedDate

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseSelectByStudentId]    Script Date: 02/27/2015 13:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseSelectByStudentId] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentHouseId]
      ,[HouseId]
      ,[UserId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[StudentHouse]
	WHERE  ([UserId] = @UserId OR @UserId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseSelectByHouseId]    Script Date: 02/27/2015 13:25:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseSelectByHouseId] 
    @HouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentHouseId]
      ,[HouseId]
      ,[UserId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[StudentHouse]
	WHERE  ([HouseId] = @HouseId OR @HouseId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseSelect]    Script Date: 02/27/2015 13:25:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseSelect] 
    @StudentHouseId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentHouseId]
      ,[HouseId]
      ,[UserId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[StudentHouse]
	WHERE  ([StudentHouseId] = @StudentHouseId OR @StudentHouseId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseInsert]    Script Date: 02/27/2015 13:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseInsert] 
    @HouseId uniqueidentifier,
    @UserId uniqueidentifier,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	
	
	INSERT INTO [dbo].[StudentHouse]
           ([HouseId]
           ,[UserId]
           ,[IsDeleted]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           (@HouseId, 
            @UserId, 
            @IsDeleted, 
			@CreatedBy, 
			@CreatedDate, 
			@CreatedBy, 
			@CreatedDate )
      
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentHouseDelete]    Script Date: 02/27/2015 13:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentHouseDelete] 
    @StudentHouseId int,
     @UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[StudentHouse]
	SET  [IsDeleted] = 1, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = GETUTCDATE()
	WHERE  [StudentHouseId] = @StudentHouseId

	COMMIT
GO
/****** Object:  Table [dbo].[School]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[SchoolId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[StreetAddress] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[State] [nvarchar](256) NULL,
	[Zip] [nvarchar](256) NULL,
	[ContactNumber] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[WebsiteURL] [nvarchar](256) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[RatingValue] [decimal](5, 2) NULL,
	[Location] [nvarchar](256) NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[School] ([SchoolId], [Name], [StreetAddress], [City], [State], [Zip], [ContactNumber], [Email], [WebsiteURL], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Location]) VALUES (N'00000000-0000-0000-0000-000000000000', N'Another school', N'Street address 2', N'City', N'State', N'Zip', N'Contact Number', N'test@example.com', N'', NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A38200D20B67 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A38200D20B67 AS DateTime), NULL, NULL)
INSERT [dbo].[School] ([SchoolId], [Name], [StreetAddress], [City], [State], [Zip], [ContactNumber], [Email], [WebsiteURL], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Location]) VALUES (N'9030c645-c182-40dd-a1ee-407495a3988e', N'sample school', N'no address', N'no city', N'no state', N'1234', N'0123456789', N'school@school.com', N'http://www.nowebsite.com', NULL, N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A3820124E8D9 AS DateTime), N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A3820124E8D9 AS DateTime), CAST(10.00 AS Decimal(5, 2)), NULL)
INSERT [dbo].[School] ([SchoolId], [Name], [StreetAddress], [City], [State], [Zip], [ContactNumber], [Email], [WebsiteURL], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Location]) VALUES (N'd6f13f43-7a07-43cb-af7c-a3910e1db931', N'School 3', N'Street', N'jlj', N'kljlkj', N'8080', N'09809', N'', N'', 1, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A38200D49A9D AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A38200D5C239 AS DateTime), CAST(9.00 AS Decimal(5, 2)), NULL)
INSERT [dbo].[School] ([SchoolId], [Name], [StreetAddress], [City], [State], [Zip], [ContactNumber], [Email], [WebsiteURL], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Location]) VALUES (N'56570f82-880c-4b6b-95ca-dd775a104668', N'University of California, Riverside', N'900 University Avenue', N'Riverside', N'CA', N'92521', N'9518271012', N'', N'', 0, N'73da82b1-8989-40a4-9270-21d9f7890937', CAST(0x0000A38200C0562C AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A38200D0BCBC AS DateTime), CAST(34.00 AS Decimal(5, 2)), NULL)
/****** Object:  Table [dbo].[Major]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[MajorId] [int] NOT NULL,
	[MajorName] [nvarchar](50) NOT NULL,
	[MajorCode] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MajorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (1, N'Accounting, Auditing and Assurance', N'Accounting, Auditing and Assurance', N'Accounting, Auditing and Assurance', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (2, N'Administrative Studies', N'Administrative Studies', N'Administrative Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (3, N'African American Studies', N'African American Studies', N'African American Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (4, N'Anthropology', N'Anthropology', N'Anthropology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (5, N'Anthropology/Law and Society', N'Anthropology/Law and Society', N'Anthropology/Law and Society', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (6, N'Art (Studio)', N'Art (Studio)', N'Art (Studio)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (7, N'Art History', N'Art History', N'Art History', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (8, N'Art History/Administrative Studies ', N'Art History/Administrative Studies ', N'Art History/Administrative Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (9, N'Art History/Religious Studies', N'Art History/Religious Studies', N'Art History/Religious Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (10, N'Asian American Studies', N'Asian American Studies', N'Asian American Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (11, N'Asian Studies', N'Asian Studies', N'Asian Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (12, N'Biochemistry', N'Biochemistry', N'Biochemistry', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (13, N'Biochemistry and Molecular Biology', N'Biochemistry and Molecular Biology', N'Biochemistry and Molecular Biology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (14, N'Biological Sciences', N'Biological Sciences', N'Biological Sciences', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (15, N'Biology', N'Biology', N'Biology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (16, N'Biomedical Sciences', N'Biomedical Sciences', N'Biomedical Sciences', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (17, N'Biomedical Sciences', N'Biomedical Sciences', N'Biomedical Sciences', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (18, N'Business Administration', N'Business Administration', N'Business Administration', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (19, N'Business Economics', N'Business Economics', N'Business Economics', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (20, N'Business Informatics', N'Business Informatics', N'Business Informatics', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (21, N'Cell, Molecular, and Developmental Biology', N'Cell, Molecular, and Developmental Biology', N'Cell, Molecular, and Developmental Biology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (22, N'Chemistry', N'Chemistry', N'Chemistry', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (23, N'Chicano Studies', N'Chicano Studies', N'Chicano Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (24, N'Classics ', N'Classics ', N'Classics ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (25, N'Comparative Literature', N'Comparative Literature', N'Comparative Literature', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (26, N'Computer Science', N'Computer Science', N'Computer Science', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (27, N'Creative Writing', N'Creative Writing', N'Creative Writing', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (29, N'Critical Dance Studies', N'Critical Dance Studies', N'Critical Dance Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (30, N'Economics', N'Economics', N'Economics', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (31, N' Economics/Administrative Studies', N' Economics/Administrative Studies', N' Economics/Administrative Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (32, N'Economics/Law and Society', N'Economics/Law and Society', N'Economics/Law and Society', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (33, N'Education6', N'Education6', N'Education6', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (34, N'Education', N'Education', N'Education', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (35, N'Engineering ', N'Engineering ', N'Engineering ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (36, N'Bioengineering', N'Bioengineering', N'Bioengineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (37, N'Chemical Engineering', N'Chemical Engineering', N'Chemical Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (38, N'Chemical and Environmental Engineering', N'Chemical and Environmental Engineering', N'Chemical and Environmental Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (39, N'Computer Engineering', N'Computer Engineering', N'Computer Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (40, N'Electrical Engineering', N'Electrical Engineering', N'Electrical Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (41, N'Environmental Engineering', N'Environmental Engineering', N'Environmental Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (42, N'Materials Science and Engineering ', N'Materials Science and Engineering ', N'Materials Science and Engineering ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (43, N'Mechanical Engineering', N'Mechanical Engineering', N'Mechanical Engineering', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (44, N'English', N'English', N'English', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (45, N'Entomology', N'Entomology', N'Entomology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (46, N'Environmental', N'Environmental', N'Environmental', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (47, N'Environmental Sciences', N'Environmental Sciences', N'Environmental Sciences', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (48, N'Environmental Toxicology', N'Environmental Toxicology', N'Environmental Toxicology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (49, N'Ethnic Studies', N'Ethnic Studies', N'Ethnic Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (50, N' Evolution, Ecology, and Organismal Biology', N' Evolution, Ecology, and Organismal Biology', N' Evolution, Ecology, and Organismal Biology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (51, N'Geological Sciences', N'Geological Sciences', N'Geological Sciences', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (52, N'Geology', N'Geology', N'Geology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (53, N'Geophysics ', N'Geophysics ', N'Geophysics ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (54, N'Geoscience Education', N'Geoscience Education', N'Geoscience Education', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (55, N'Global Studies ', N'Global Studies ', N'Global Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (56, N'History ', N'History ', N'History ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (57, N'History/Administrative Studies ', N'History/Administrative Studies ', N'History/Administrative Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (58, N'History/Law and Society ', N'History/Law and Society ', N'History/Law and Society ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (60, N'Interdisciplinary Studies ', N'Interdisciplinary Studies ', N'Interdisciplinary Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (61, N'Chinese Languages and Literatures', N'Chinese Languages and Literatures', N'Chinese Languages and Literatures', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (62, N'Classical Studies Languages and Literatures', N'Classical Studies Languages and Literatures', N'Classical Studies Languages and Literatures', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (64, N'Comparative Literature ', N'Comparative Literature ', N'Comparative Literature ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (65, N'French ', N'French ', N'French ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (66, N'Germanic Studies ', N'Germanic Studies ', N'Germanic Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (67, N'Japanese ', N'Japanese ', N'Japanese ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (68, N'Languages ', N'Languages ', N'Languages ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (69, N'Russian Studies ', N'Russian Studies ', N'Russian Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (70, N'Latin American Studies ', N'Latin American Studies ', N'Latin American Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (71, N'Law and Society ', N'Law and Society ', N'Law and Society ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (72, N'Liberal Studies ', N'Liberal Studies ', N'Liberal Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (73, N'Linguistics ', N'Linguistics ', N'Linguistics ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (74, N'Management ', N'Management ', N'Management ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (75, N'Mathematics', N'Mathematics', N'Mathematics', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (76, N'Mathematics, Applied', N'Mathematics, Applied', N'Mathematics, Applied', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (77, N'Mathematics for Secondary School Teachers ', N'Mathematics for Secondary School Teachers ', N'Mathematics for Secondary School Teachers ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (78, N'Media and Cultural Studies', N'Media and Cultural Studies', N'Media and Cultural Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (79, N'Medicine', N'Medicine', N'Medicine', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (80, N'Microbiology', N'Microbiology', N'Microbiology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (81, N'Middle East and Islamic Studies', N'Middle East and Islamic Studies', N'Middle East and Islamic Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (82, N'Music', N'Music', N'Music', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (83, N'Music and Culture', N'Music and Culture', N'Music and Culture', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (84, N'Native American Studies', N'Native American Studies', N'Native American Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (85, N'Neuroscience ', N'Neuroscience ', N'Neuroscience ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (86, N'Pest Management ', N'Pest Management ', N'Pest Management ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (87, N'Philosophy', N'Philosophy', N'Philosophy', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (88, N'Philosophy/Law and Society ', N'Philosophy/Law and Society ', N'Philosophy/Law and Society ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (89, N'Physical Sciences2 ', N'Physical Sciences2 ', N'Physical Sciences2 ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (90, N'Physics', N'Physics', N'Physics', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (91, N'Plant Biology', N'Plant Biology', N'Plant Biology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (92, N'Plant Biology (Plant Genetics)', N'Plant Biology (Plant Genetics)', N'Plant Biology (Plant Genetics)', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (93, N'Plant Pathology', N'Plant Pathology', N'Plant Pathology', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (94, N'Political Science ', N'Political Science ', N'Political Science ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (95, N'Political Science/Administrative Studies', N'Political Science/Administrative Studies', N'Political Science/Administrative Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (96, N'Political Science/International Affairs', N'Political Science/International Affairs', N'Political Science/International Affairs', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (97, N'Political Science/Law and Society', N'Political Science/Law and Society', N'Political Science/Law and Society', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (98, N'Political Science/Public Service', N'Political Science/Public Service', N'Political Science/Public Service', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (99, N'Population Biology ', N'Population Biology ', N'Population Biology ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (100, N'Psychology ', N'Psychology ', N'Psychology ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (101, N'Psychology/Law and Society', N'Psychology/Law and Society', N'Psychology/Law and Society', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (102, N'Public Policy ', N'Public Policy ', N'Public Policy ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (103, N'Religious Studies ', N'Religious Studies ', N'Religious Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (104, N'Sociology ', N'Sociology ', N'Sociology ', NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (105, N'Sociology/Administrative Studies ', N'Sociology/Administrative Studies ', N'Sociology/Administrative Studies ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (106, N'Sociology/Law and Society ', N'Sociology/Law and Society ', N'Sociology/Law and Society ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (107, N'Soil and Water Sciences ', N'Soil and Water Sciences ', N'Soil and Water Sciences ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (108, N'Southeast Asian Studies', N'Southeast Asian Studies', N'Southeast Asian Studies', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (109, N'Spanish ', N'Spanish ', N'Spanish ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (110, N'Statistics ', N'Statistics ', N'Statistics ', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (111, N'Statistics, Applied', N'Statistics, Applied', N'Statistics, Applied', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (112, N'Theatre', N'Theatre', N'Theatre', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (113, N'Visual Art', N'Visual Art', N'Visual Art', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted]) VALUES (114, N'Women’s Studies ', N'Women’s Studies ', N'Women’s Studies ', NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[Student]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SchoolId] [uniqueidentifier] NULL,
	[Year] [int] NULL,
	[StartYear] [int] NULL,
	[StartMonth] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[MajorId] [int] NULL,
	[PreviousSchoolInfo] [nvarchar](50) NULL,
	[PreviousSchool] [nvarchar](256) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Student] ([StudentId], [UserId], [SchoolId], [Year], [StartYear], [StartMonth], [Status], [MajorId], [PreviousSchoolInfo], [PreviousSchool], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'7ccfee51-3358-4cde-9bc2-643132f3aeba', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'9030c645-c182-40dd-a1ee-407495a3988e', 2009, 2013, 3, N'Freshman', 3, N'High school student', N'', 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4210078E3D0 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A421007A32D5 AS DateTime))
/****** Object:  StoredProcedure [dbo].[usp_StudentUpdate]    Script Date: 02/27/2015 13:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentUpdate] 

     (@StudentId uniqueidentifier,
           @UserId uniqueidentifier,
           @SchoolId uniqueidentifier,
           @Year int,
           @StartYear int,
           @StartMonth int,
           @Status nvarchar(50),
           @MajorId int,
           @PreviousSchoolInfo nvarchar(50),
           @PreviousSchool nvarchar(256),
           @IsDeleted bit,
           @UpdatedBy uniqueidentifier,
			@UpdatedDate datetime output)
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	SET @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[Student]
	SET		[StudentId] = @StudentId, 
			[UserId] = @UserId, 
			[SchoolId] = @SchoolId, 
			[Year] = @Year,
			[StartYear] = @StartYear,
            [StartMonth] = @StartMonth,
			[Status] = @Status,
			[MajorId] = @MajorId,
			[PreviousSchoolInfo] = @PreviousSchoolInfo,
            [PreviousSchool] = @PreviousSchool,
			[IsDeleted] = @IsDeleted, 
			[UpdatedBy] = @UpdatedBy, 
			[UpdatedDate] = @UpdatedDate
	WHERE  [StudentId] = @StudentId
	
    
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentSelectByUserId]    Script Date: 02/27/2015 13:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentSelectByUserId] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentId]
      ,[UserId]
      ,[SchoolId]
      ,[Year]
      ,[StartYear]
      ,[StartMonth]
      ,[Status]
      ,[MajorId]
      ,[PreviousSchoolInfo]
      ,[PreviousSchool]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
	FROM   [dbo].[Student] 
	WHERE  ([UserId] = @UserId OR @UserId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentSelect]    Script Date: 02/27/2015 13:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentSelect] 
    @StudentId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentId]
      ,[UserId]
      ,[SchoolId]
      ,[Year]
      ,[StartYear]
      ,[StartMonth]
      ,[Status]
      ,[MajorId]
      ,[PreviousSchoolInfo]
      ,[PreviousSchool]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
	FROM   [dbo].[Student] 
	WHERE  ([StudentId] = @StudentId OR @StudentId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentInsert]    Script Date: 02/27/2015 13:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentInsert] 

    (@StudentId uniqueidentifier,
           @UserId uniqueidentifier,
           @SchoolId uniqueidentifier,
           @Year int,
           @StartYear int,
           @StartMonth int,
           @Status nvarchar(50),
           @MajorId int,
           @PreviousSchoolInfo nvarchar(50),
           @PreviousSchool nvarchar(256),
           @IsDeleted bit,
           @CreatedBy uniqueidentifier,
           @CreatedDate datetime output)
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	SET @CreatedDate = GETUTCDATE() 

	INSERT INTO [dbo].[Student] 
		 ( [StudentId]
           ,[UserId]
           ,[SchoolId]
           ,[Year]
           ,[StartYear]
           ,[StartMonth]
           ,[Status]
           ,[MajorId]
           ,[PreviousSchoolInfo]
           ,[PreviousSchool]
           ,[IsDeleted]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
	SELECT 
		@StudentId, 
		@UserId, 
		@SchoolId, 
		@Year ,
		@StartYear,
        @StartMonth,
		@Status,
		@MajorId,
		@PreviousSchoolInfo,
        @PreviousSchool,
		@IsDeleted, 
		@CreatedBy, 
		@CreatedDate, 
		@CreatedBy, 
		@CreatedDate
		
	

	-- Begin Return Select <- do not remove
	--SELECT [StudentId], [UserId], [SchoolId], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[Student]
	--WHERE  [StudentId] = @StudentId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentDelete]    Script Date: 02/27/2015 13:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentDelete] 
    @StudentId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Student]
	WHERE  [StudentId] = @StudentId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_IsStudentExist]    Script Date: 02/27/2015 13:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_Student_IsStudentExist]
    @StudentId uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from Student where StudentId=@StudentId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserUpdateHouse]    Script Date: 02/27/2015 13:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserUpdateHouse] 
    @UserId uniqueidentifier,
    @HouseId uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[User]
	SET  [HouseId] = @HouseId,
	[UpdatedDate] = @UpdatedDate,
	[UpdatedBy] = @UserId

	
		
	WHERE  [UserId] = @UserId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_UserUpdate]    Script Date: 02/27/2015 13:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserUpdate] 
    @UserId uniqueidentifier,
    @IsFBUser bit = NULL,
    @AspnetUserId uniqueidentifier,
     @IsPartialUser bit = NULL,
    @FBAccessToken nvarchar(MAX) = NULL,
    @FBUrl nvarchar(256) = NULL,
    @FBProfilePictureURL nvarchar(256) = NULL,
    @FirstName nvarchar(100) = NULL, 
	@MiddleName nvarchar(100) = NULL,
	@LastName nvarchar(100) = NULL,
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
    @StateId int = NULL,
    @Zip nvarchar(256) = NULL,
    @DateOfBirth date = NULL,
    @BestContactNumber nvarchar(256) = NULL,
    @DriversLicenseNumber nvarchar(256) = NULL,
    @Status nvarchar(256) = NULL,
    @PersonalEmail nvarchar(256) = NULL,
    @UpdatedBy uniqueidentifier,
    @LastUpdatedDate datetime,
    @RatingValue decimal(5, 2) = NULL,
    @Gender nvarchar(50) = NULL,
    @HouseId uniqueidentifier,
    @RoleId uniqueidentifier,
    --@ReferralCode varchar(10),
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	IF ((select UpdatedDate from [User] where UserId = @UserId) <> @LastUpdatedDate)
	BEGIN
		print 'This record has been updated by someone else!'
	END

	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[User]
	SET    
		[IsFBUser] = @IsFBUser, 
		[FBAccessToken] = @FBAccessToken, 
		[AspnetUserId] = @AspnetUserId,
      [IsPartialUser] = @IsPartialUser,
		[FBUrl] = @FBUrl, 
		[FBProfilePictureURL] = @FBProfilePictureURL, 
		[FirstName] = @FirstName, 
		[MiddleName] = @MiddleName, 
		[LastName] = @LastName, 
		[StreetAddress] = @StreetAddress, 
		[City] = @City, 
		[StateId] = @StateId, 
		[Zip] = @Zip, 
		[DateOfBirth] = @DateOfBirth, 
		[BestContactNumber] = @BestContactNumber, 
		[DriversLicenseNumber] = @DriversLicenseNumber, 
		[Status] = @Status, 
		[PersonalEmail] = @PersonalEmail, 
		[UpdatedBy] = @UpdatedBy, 
		[UpdatedDate] = @UpdatedDate, 
		[RatingValue] = @RatingValue,
		[Gender] =  @Gender,
		[HouseId] = @HouseId,
		[RoleId] = @RoleId
	--	[ReferralCode] = @ReferralCode
		
	WHERE  [UserId] = @UserId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelect]    Script Date: 02/27/2015 13:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserSelect] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [UserId], 
	[IsFBUser], 
	[AspnetUserId],
      [IsPartialUser],
	[FBAccessToken], 
	[FBUrl], 
	[FBTokenTimeStamp], 
	[FBProfilePictureURL],
	[FirstName],
    [MiddleName],
    [LastName],
	 [StreetAddress], 
	 [City], 
	 [StateId],
	  [Zip], 
	  [DateOfBirth], 
	  [BestContactNumber], 
	  [DriversLicenseNumber], [Status], [PersonalEmail], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid],[Gender],[HouseId],[RoleId],[ReferralCode]
	FROM   [dbo].[User] 
	WHERE  ([UserId] = @UserId OR @UserId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_UserInsert]    Script Date: 02/27/2015 13:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserInsert] 
    @UserId uniqueidentifier,
    @IsFBUser bit = NULL,
    @AspnetUserId uniqueidentifier,
     @IsPartialUser bit = NULL,
    @FBAccessToken nvarchar(MAX) = NULL,
    @FBUrl nvarchar(256) = NULL,
    @FBProfilePictureURL nvarchar(256) = NULL,
    @FirstName nvarchar(100) = NULL,
	@MiddleName nvarchar(100) = NULL,
	@LastName nvarchar(100) = NULL,
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
	@StateId int = null,
    @Zip nvarchar(256) = NULL,
    @DateOfBirth date = NULL,
    @BestContactNumber nvarchar(256) = NULL,
    @DriversLicenseNumber nvarchar(256) = NULL,
    @Status nvarchar(256) = NULL,
    @PersonalEmail nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier,
    @RatingValue decimal(5, 2) = NULL,
	@FBid varchar(50) = null,
	@Gender nvarchar(10) = NULL,
	@HouseId uniqueidentifier,
	@RoleId uniqueidentifier,
	@ReferralCode varchar(10) = null,
	@CreatedDate datetime output

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	set @CreatedDate = getutcdate()
	
	INSERT INTO [dbo].[User] 
		([UserId], 
		[IsFBUser], 
		[AspnetUserId],
      [IsPartialUser],
		[FBAccessToken], 
		[FBUrl], 
		[FBProfilePictureURL], 
		[FirstName], 
		[MiddleName],
		[LastName],
		[StreetAddress], 
		[City], 
		[StateId],
		[Zip], 
		[DateOfBirth], 
		[BestContactNumber], 
		[DriversLicenseNumber], 
		[Status], 
		[PersonalEmail], 
		[CreatedBy], 
		[CreatedDate], 
		[UpdatedBy], 
		[UpdatedDate], 
		[RatingValue],
		[FBid],
		[Gender],
		[HouseId],
		[RoleId],
		[ReferralCode])
	SELECT 
		@UserId, 
		@IsFBUser, 
		@AspnetUserId ,
     @IsPartialUser,
		@FBAccessToken, 
		@FBUrl, 
		@FBProfilePictureURL, 
		@FirstName,
		@MiddleName,
		@LastName, 
		@StreetAddress, 
		@City, 
		@StateId,
		@Zip, 
		@DateOfBirth, 
		@BestContactNumber, 
		@DriversLicenseNumber, 
		@Status, 
		@PersonalEmail, 
		@CreatedBy, 
		GETUTCDATE(), 
		@CreatedBy, 
		GETUTCDATE(), 
		@RatingValue,
		@FBid,
		@Gender,
		@HouseId,
		@RoleId,
		@ReferralCode
	
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_UserDelete]    Script Date: 02/27/2015 13:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserDelete] 
    @UserId uniqueidentifier,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[User]
	SET    
		[IsDeleted] = 1,
		[UpdatedBy] = @UpdatedBy,
		[UpdatedDate] = @UpdatedDate
		
	WHERE  [UserId] = @UserId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_User_IsUserExist]    Script Date: 02/27/2015 13:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_User_IsUserExist]
    @UserId  uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [User] where UserId=@UserId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_IsPartialUserExist]    Script Date: 02/27/2015 13:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_User_IsPartialUserExist]
    @UserId  uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [User] where IsPartialUser= 1 and [UserId] = @UserId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_IsPartialUserEmailExist]    Script Date: 02/27/2015 13:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_User_IsPartialUserEmailExist]
    @Email nvarchar(256),
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [User] where IsPartialUser= 1  and [PersonalEmail] = @Email)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_IsFBUserExist]    Script Date: 02/27/2015 13:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_User_IsFBUserExist]
    @FbId  varchar(50),
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [User] where FBid=@FbId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  Table [dbo].[OptionCategory]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OptionCategory](
	[OptionCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OptionCategory] PRIMARY KEY CLUSTERED 
(
	[OptionCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OptionCategory] ON
INSERT [dbo].[OptionCategory] ([OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Basic Features', N'Basic House Options / Features', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime), N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime))
INSERT [dbo].[OptionCategory] ([OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Furnished Rooms', N'Furnished Rooms', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime), N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime))
INSERT [dbo].[OptionCategory] ([OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Furnished Kitchen', N'Furnished Kitchen', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime), N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime))
INSERT [dbo].[OptionCategory] ([OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Furnished Living Space', N'Furnished Living Space', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime), N'cd09fe90-926f-4f47-93f1-bde8b1a63765', CAST(0x0000A38400B91B1C AS DateTime))
SET IDENTITY_INSERT [dbo].[OptionCategory] OFF
/****** Object:  Table [dbo].[Option]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[OptionCategoryId] [int] NULL,
	[ParentOptionId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsMultiSelect] [bit] NULL,
	[Points] [int] NULL,
 CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Option] ON
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (29, N'Room 1', N'Room 1', 1, 0, 1, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (30, N'Cealing fans', N'Cealing fans', 1, 0, 0, 0, 10)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (31, N'Sunroom', N'Sunroom', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (32, N'mother in low quartes', N'mother in low quartes', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (33, N'Washer , dryer', N'Washer , dryer', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (34, N'laundery room', N'laundery room', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (35, N'Attached garage', N'Attached garage', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (36, N'deattached garage', N'deattached garage', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (37, N'drive way parking', N'drive way parking', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (38, N'street parking', N'street parking', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (39, N'bike rack', N'bike rack', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (40, N'motion censor light', N'motion censor light', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (41, N'Second fridge', N'Second fridge', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (42, N'wireless internet', N'wireless internet', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (43, N'BBQ', N'BBQ', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (44, N'Back yard', N'Back yard', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (45, N'Pool', N'Pool', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (46, N'Hot tab', N'Hot tab', 1, 0, 0, 0, 12)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (47, N'electric stove', N'electric stove', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (48, N'Oven', N'Oven', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (49, N'Alarm System', N'Alarm System', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (50, N'Sana', N'Sana', 1, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (51, N'bed', N'bed', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (52, N'chair', N'chair', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (53, N'dresser', N'dresser', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (54, N'lamp', N'lamp', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (55, N'cooling fans', N'cooling fans', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (56, N'fans', N'fans', 2, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (57, N'plates', N'plates', 3, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (58, N'toster', N'toster', 3, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (59, N'mini oven', N'mini oven', 3, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (60, N'TV', N'TV', 4, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (61, N'Radio', N'Radio', 4, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (62, N'Couch', N'Couch', 4, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (63, N'lamp', N'lamp', 4, 0, 0, 0, 4)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (64, N'fire place', N'fire place', 4, 0, 0, 0, NULL)
INSERT [dbo].[Option] ([OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect], [Points]) VALUES (65, N'table chairs', N'table chairs', 4, 0, 0, 0, 23)
SET IDENTITY_INSERT [dbo].[Option] OFF
/****** Object:  Table [dbo].[HouseOption]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HouseOption](
	[HouseOptionId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [uniqueidentifier] NULL,
	[OptionId] [int] NULL,
	[OptionValue] [varchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HouseOption] PRIMARY KEY CLUSTERED 
(
	[HouseOptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HouseOption] ON
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (397, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 30, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E81C AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E81C AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (398, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 31, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E87A AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E87A AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (399, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 32, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E8D8 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E8D8 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (400, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 33, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E935 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E935 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (401, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 34, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E993 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E993 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (402, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 35, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E9F0 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028E9F0 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (403, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 41, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EA4E AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EA4E AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (404, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 42, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EAAC AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EAAC AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (405, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 43, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EB0A AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EB0A AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (406, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 44, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EB67 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EB67 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (407, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 45, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EBC5 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EBC5 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (408, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 51, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EC23 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EC23 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (409, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 52, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EC80 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EC80 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (410, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 53, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ECDE AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ECDE AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (411, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 60, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ED3C AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ED3C AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (412, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 61, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ED9A AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028ED9A AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (413, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 62, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EDF7 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EDF7 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (414, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 57, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EE55 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EE55 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (415, N'f6aa6934-e992-420a-8ac1-2c4371a4945b', 58, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EEB2 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0028EEB2 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (416, N'bb92a6ed-9d52-4142-85be-739744208fae', 37, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064B98C AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064B98C AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (417, N'bb92a6ed-9d52-4142-85be-739744208fae', 44, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064B9ED AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064B9ED AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (418, N'bb92a6ed-9d52-4142-85be-739744208fae', 47, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BA4D AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BA4D AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (419, N'bb92a6ed-9d52-4142-85be-739744208fae', 51, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BAAE AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BAAE AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (420, N'bb92a6ed-9d52-4142-85be-739744208fae', 56, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BB0F AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BB0F AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (421, N'bb92a6ed-9d52-4142-85be-739744208fae', 61, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BB70 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BB70 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (422, N'bb92a6ed-9d52-4142-85be-739744208fae', 63, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BBD1 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BBD1 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (423, N'bb92a6ed-9d52-4142-85be-739744208fae', 58, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BC32 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A3DF0064BC32 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (424, N'2bb0a3f0-ffdd-425d-8f59-5121ab59f19c', 30, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E64F8 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E64F8 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (425, N'2bb0a3f0-ffdd-425d-8f59-5121ab59f19c', 31, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E6589 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E6589 AS DateTime))
INSERT [dbo].[HouseOption] ([HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (426, N'2bb0a3f0-ffdd-425d-8f59-5121ab59f19c', 40, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E6610 AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A41C008E6610 AS DateTime))
SET IDENTITY_INSERT [dbo].[HouseOption] OFF
/****** Object:  StoredProcedure [dbo].[usp_HouseOptionUpdate]    Script Date: 02/27/2015 13:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseOptionUpdate] 
    @HouseOptionId int,
    @HouseId uniqueidentifier = NULL,
    @OptionId int = NULL,
    @OptionValue varchar(100) = NULL,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[HouseOption]
	SET    [HouseId] = @HouseId, [OptionId] = @OptionId, [OptionValue] = @OptionValue, [IsDeleted] = @IsDeleted, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [HouseOptionId] = @HouseOptionId
	
	-- Begin Return Select <- do not remove
	SELECT [HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[HouseOption]
	WHERE  [HouseOptionId] = @HouseOptionId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseOptionSelect]    Script Date: 02/27/2015 13:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseOptionSelect] 
    @HouseOptionId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[HouseOption] 
	WHERE  ([HouseOptionId] = @HouseOptionId OR @HouseOptionId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseOptionInsert]    Script Date: 02/27/2015 13:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseOptionInsert] 
    @HouseId uniqueidentifier = NULL,
    @OptionId int = NULL,
    @OptionValue varchar(100) = NULL,
    @CreatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	declare @CreatedDate datetime
	set @CreatedDate = GETUTCDATE()

	BEGIN TRAN
	
	INSERT INTO [dbo].[HouseOption] ([HouseId], [OptionId], [OptionValue], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @HouseId, @OptionId, @OptionValue, @CreatedBy, @CreatedDate, @CreatedBy, @CreatedDate
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseOptionDeleteByHouseId]    Script Date: 02/27/2015 13:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseOptionDeleteByHouseId] 
    @HouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	DELETE
	FROM   [dbo].[HouseOption]
	WHERE  [HouseId] = @HouseId
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseOptionDelete]    Script Date: 02/27/2015 13:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseOptionDelete] 
    @HouseOptionId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[HouseOption]
	WHERE  [HouseOptionId] = @HouseOptionId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseUpdate]    Script Date: 02/27/2015 13:24:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseUpdate] 
	@HouseId uniqueidentifier,
    @LandlordId uniqueidentifier,
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
     @StateId int = NULL,
    @Zip nvarchar(256) = NULL,
    @YearHomeBuild int = NULL,
    @BedRooms int = NULL,
    @BathRooms int = NULL,
    @LotSquareFootage int = NULL,
    @TotalSquareFootage int = NULL,
    @UtilitiesIncludedInRent nvarchar(256) = NULL,
    @PropertyImagePath nvarchar(MAX) = NULL,
    @IsDeleted bit = NULL,
     @IsPartialHouse bit = NULL,
    @UpdatedBy uniqueidentifier,
    @RatingValue decimal(5, 2) = NULL,
     @Price decimal(10, 2) = NULL,
     @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

set @UpdatedDate = GETUTCDATE()
	UPDATE [dbo].[House]
	SET    [HouseId] = @HouseId, 
	[LandlordId] = @LandlordId, 
	[StreetAddress] = @StreetAddress, 
	[City] = @City, 
	[StateId] = @StateId, 
	[Zip] = @Zip, 
	[YearHomeBuild] = @YearHomeBuild, 
	[BedRooms] = @BedRooms, 
	[BathRooms] = @BathRooms, 
	[LotSquareFootage] = @LotSquareFootage, 
	[TotalSquareFootage] = @TotalSquareFootage,
	[UtilitiesIncludedInRent] = @UtilitiesIncludedInRent, 
	[PropertyImagePath] = @PropertyImagePath, 
	[IsDeleted] = @IsDeleted, 
	[IsPartialHouse] = @IsPartialHouse,
	[UpdatedBy] = @UpdatedBy, 
	[UpdatedDate] = @UpdatedDate, 
	[RatingValue] = @RatingValue,
	[Price] = @Price
	WHERE  [HouseId] = @HouseId

COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseSelect]    Script Date: 02/27/2015 13:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSelect] 
    @HouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT [HouseId], [LandlordId], [StreetAddress], [City], [StateId] , [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage],[UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price] ,[IsPartialHouse]
	FROM   [dbo].[House] 
	WHERE  ([HouseId] = @HouseId OR @HouseId IS NULL) 

	SELECT [HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[HouseOption] 
	WHERE  ([HouseId] = @HouseId OR @HouseId IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseInsert]    Script Date: 02/27/2015 13:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseInsert] 
    @HouseId uniqueidentifier,
    @LandlordId uniqueidentifier,
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
    @StateId int = NULL,
    @Zip nvarchar(256) = NULL,
    @YearHomeBuild int = NULL,
    @BedRooms int = NULL,
    @BathRooms int = NULL,
    @LotSquareFootage int = NULL,
    @TotalSquareFootage int = NULL,
    @UtilitiesIncludedInRent nvarchar(256) = NULL,
    @PropertyImagePath nvarchar(MAX) = NULL,
    @IsDeleted bit = NULL,
    @IsPartialHouse bit = NULL,
    @CreatedBy uniqueidentifier,
    @RatingValue decimal(5, 2) = NULL,
    @Price decimal(10, 2) = NULL,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	
	INSERT INTO [dbo].[House] (
		[HouseId], 
		[LandlordId], 
		[StreetAddress], 
		[City], 
		[StateId], 
		[Zip], 
		[YearHomeBuild], 
		[BedRooms], 
		[BathRooms], 
		[LotSquareFootage],
		[TotalSquareFootage], 
		[UtilitiesIncludedInRent], 
		[PropertyImagePath], 
		[IsDeleted], 
		[IsPartialHouse],
		[CreatedBy], 
		[CreatedDate], 
		[UpdatedBy], 
		[UpdatedDate], 
		[RatingValue],
		[Price])
	SELECT 
		@HouseId, 
		@LandlordId, 
		@StreetAddress, 
		@City, 
		@StateId, 
		@Zip, 
		@YearHomeBuild, 
		@BedRooms, 
		@BathRooms, 
		@LotSquareFootage,
		@TotalSquareFootage, 
		@UtilitiesIncludedInRent, 
		@PropertyImagePath, 
		@IsDeleted, 
		@IsPartialHouse,
		@CreatedBy, 
		@CreatedDate, 
		@CreatedBy, 
		@CreatedDate, 
		@RatingValue,
		@Price
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseDelete]    Script Date: 02/27/2015 13:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseDelete] 
    @HouseId uniqueidentifier,
     @UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[House]
	SET  [IsDeleted] = 1, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = GETUTCDATE()
	WHERE  [HouseId] = @HouseId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_House_IsHouseExist]    Script Date: 02/27/2015 13:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_House_IsHouseExist]
    @HouseId uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from House where [HouseId]=@HouseId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelectLandlordByHouseId]    Script Date: 02/27/2015 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserSelectLandlordByHouseId] 
    @HouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN
	
	declare @LandlordUserId uniqueidentifier

	SELECT @LandlordUserId = Landlord.LandlordId
		FROM        
                      House INNER JOIN  Landlord ON House.LandlordId = Landlord.LandlordId
		WHERE  ([House].HouseId = @HouseId OR @HouseId IS NULL) 
	
	SELECT     @LandlordUserId As LandlordId,UserId , AspnetUserId, IsPartialUser, IsFBUser, FBAccessToken, FBUrl, FBTokenTimeStamp, FBProfilePictureURL, StreetAddress, City, StateId, Zip, 
                      DateOfBirth, BestContactNumber, DriversLicenseNumber, Status, PersonalEmail, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, FBid, 
                      Gender, FirstName, MiddleName, LastName, HouseId, RoleId,ReferralCode
	FROM         [User]
	WHERE  ([User].[UserId] = @LandlordUserId OR @LandlordUserId IS NULL) 
	

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelectAll]    Script Date: 02/27/2015 13:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserSelectAll] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT 
		U.[UserId], 
		U.[IsFBUser], 
		U.[AspnetUserId],
        U.[IsPartialUser],
		U.[FBAccessToken], 
		U.[FBUrl], 
		U.[FBTokenTimeStamp], 
		U.[FBProfilePictureURL], 
		U.[FirstName],
		U.[MiddleName],
		U.[LastName],
		U.[StreetAddress], 
		U.[City], 
		U.[StateId],
		U.[Zip], 
		U.[DateOfBirth], 
		U.[BestContactNumber], 
		U.[DriversLicenseNumber], 
		U.[Status], 
		U.[PersonalEmail], 
		U.[RatingValue], 
		U.[FBid],
		U.[Gender],
		U.[HouseId],
		U.RoleId,
		U.ReferralCode,
		CASE
			WHEN S.StudentId IS NOT NULL THEN 'Student'
			WHEN L.LandlordId IS NOT NULL THEN 'Landlord'
		end as UserType
	FROM   [dbo].[User] U 
		LEFT OUTER JOIN [dbo].[Student] S ON U.UserId = S.UserId
		LEFT OUTER JOIN [dbo].[Landlord] L ON L.UserId = U.UserId

	WHERE  (isnull(U.IsDeleted,0) <> 0 ) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordUpdate]    Script Date: 02/27/2015 13:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordUpdate] 
    @LandlordId uniqueidentifier,
    @UserId uniqueidentifier,
    @LandlordName nvarchar(256) = NULL,
    @IsDeleted bit = NULL,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	SET @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[Landlord]
	SET    [LandlordId] = @LandlordId,
	 [UserId] = @UserId,
	 [LandlordName] = @LandlordName,
	 [IsDeleted] = @IsDeleted,
	 [UpdatedBy] = @UpdatedBy,
	 [UpdatedDate] = @UpdatedDate
	WHERE  [LandlordId] = @LandlordId
	
	-- Begin Return Select <- do not remove
	--SELECT [LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[Landlord]
	--WHERE  [LandlordId] = @LandlordId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordSelectByUserId]    Script Date: 02/27/2015 13:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordSelectByUserId] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Landlord] 
	WHERE  ([UserId] = @UserId OR @UserId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordSelect]    Script Date: 02/27/2015 13:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordSelect] 
    @LandlordId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Landlord] 
	WHERE  ([LandlordId] = @LandlordId OR @LandlordId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordInsert]    Script Date: 02/27/2015 13:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordInsert] 
    @LandlordId uniqueidentifier,
    @UserId uniqueidentifier,
    @LandlordName nvarchar(256) = NULL,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	SET @CreatedDate = GETUTCDATE() 
	
	INSERT INTO [dbo].[Landlord] ([LandlordId], 
	[UserId], 
	[LandlordName], 
	[IsDeleted], 
	[CreatedBy], 
	[CreatedDate], 
	[UpdatedBy], 
	[UpdatedDate])
	
	SELECT @LandlordId, 
	@UserId, 
	@LandlordName, 
	@IsDeleted, 
	@CreatedBy, 
	@CreatedDate, 
	@CreatedBy, 
	@CreatedDate
	
	-- Begin Return Select <- do not remove
	--SELECT [LandlordId], [UserId], [LandlordName], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[Landlord]
	--WHERE  [LandlordId] = @LandlordId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordDelete]    Script Date: 02/27/2015 13:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordDelete] 
    @LandlordId uniqueidentifier,
    @UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Landlord]
	SET		IsDeleted = 1,
			[UpdatedBy] = @UpdatedBy, 
			[UpdatedDate] = GETUTCDATE()
	WHERE  [LandlordId] = @LandlordId

	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_Landlord_IsLandlordExist]    Script Date: 02/27/2015 13:24:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_Landlord_IsLandlordExist]
    @LandlordId uniqueidentifier,
	@IsExist bit output
AS
BEGIN
    IF exists (select null from Landlord where [LandlordId]=@LandlordId)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		SET @IsExist = 0
	END
    
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'37978c03-e5bc-412b-956f-d6528d24ecec', NULL)
/****** Object:  StoredProcedure [dbo].[InsertLookupData]    Script Date: 02/27/2015 13:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertLookupData]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--INSERT INTO [dbo].[SystemConfig]
 --          ([SystemConfigId]
 --          ,[Key]
 --          ,[Value]
 --          ,[Description]
 --          ,[CreatedBy]
 --          ,[CreatedDate]
 --          ,[UpdatedBy]
 --          ,[UpdatedDate])
 --    VALUES
 --          (2
 --          ,'FacebookAppSecret'
 --          ,'f7c55471278a90514530f0e4806976ec'
 --          ,'Facebook Application secret'
 --          ,'37978c03-e5bc-412b-956f-d6528d24ecec'
 --          ,GETUTCDATE()
 --          ,'37978c03-e5bc-412b-956f-d6528d24ecec'
 --          ,GETUTCDATE())

END
GO
/****** Object:  Table [dbo].[ContextType]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContextType](
	[ContextTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContextType] PRIMARY KEY CLUSTERED 
(
	[ContextTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ContextType] ([ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Student', N'Student', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[ContextType] ([ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Landlord', N'Landlord', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
/****** Object:  Table [dbo].[ContextSubType]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContextSubType](
	[ContextSubTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContextSubType] PRIMARY KEY CLUSTERED 
(
	[ContextSubTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ContextSubType] ([ContextSubTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'House', N'House', N'78504635-2f99-4eaa-a6db-d44a0675a3aa', CAST(0x0000A3B901473C96 AS DateTime), N'78504635-2f99-4eaa-a6db-d44a0675a3aa', CAST(0x0000A3B901473C96 AS DateTime))
/****** Object:  Table [dbo].[CommentType]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentType](
	[CommentTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_CommentType] PRIMARY KEY CLUSTERED 
(
	[CommentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CommentType] ([CommentTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Comment', N'Comment', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[CommentType] ([CommentTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Feedback', N'Feedback', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[CommentType] ([CommentTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Photo', N'Photo', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[CommentType] ([CommentTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Document', N'Document', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/27/2015 13:24:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/27/2015 13:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  StoredProcedure [dbo].[A_CleanDbByUserId]    Script Date: 02/27/2015 13:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[A_CleanDbByUserId]
	@UserId uniqueidentifier
AS
BEGIN
	-- Add new tables as appropriate
	SET NOCOUNT ON;

	PRINT 'This script must be executed manually if needed after a release!'

			
		--DELETE FROM [dbo].[PartialHouse] WHERE [PartialUserId] = @UserId 

		--DELETE FROM [dbo].[PartialUser] WHERE [PartialUserId] = @UserId

		--DELETE FROM [dbo].[Photo] WHERE [ContextId] = @UserId

		--DELETE FROM [dbo].[PartialUser] WHERE [PartialUserId] = @UserId 

		--DELETE FROM [dbo].[StudentHouseLeave] WHERE [RequestBy] = @UserId 

		--DELETE FROM [dbo].[StudentHouseLeave] WHERE [RequestTo] = @UserId 

		--DELETE FROM [dbo].[StudentHouse] WHERE [UserId] = @UserId 

		--DELETE FROM [dbo].[Spotlight] WHERE [UserId] = @UserId 

		--DELETE FROM [dbo].[Comment] WHERE [ContextId] = @UserId 

		--DELETE FROM [dbo].[HouseOption] WHERE [CreatedBy] = @UserId 

		--DELETE FROM [dbo].[House] WHERE [LandlordId] = @UserId 

		--DELETE FROM [dbo].[Student] WHERE[UserId] = @UserId 

		--DELETE FROM [dbo].[Landlord] WHERE  [LandlordId] = @UserId 

		--DELETE FROM [dbo].[User] WHERE [UserId] = @UserId 

		--DELETE FROM [dbo].[aspnet_UsersInRoles] where UserId = @UserId 

		--DELETE FROM [dbo].[aspnet_Users] WHERE  UserId = @UserId 

		--DELETE FROM [dbo].[aspnet_Membership] WHERE UserId =  @UserId 
END
GO
/****** Object:  StoredProcedure [dbo].[A_CleanDB]    Script Date: 02/27/2015 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[A_CleanDB]
AS
BEGIN
	-- Add new tables as appropriate
	SET NOCOUNT ON;

	PRINT 'This script must be executed manually if needed after a release!'

	--DELETE FROM [dbo].[aspnet_UsersInRoles] where UserId <> 'cd09fe90-926f-4f47-93f1-bde8b1a63765'
	--DELETE FROM [dbo].[OptionItem]
	--DELETE FROM [dbo].[aspnet_Membership] where UserId <> 'cd09fe90-926f-4f47-93f1-bde8b1a63765'
	--DELETE FROM [dbo].[Comment]
	--DELETE FROM [dbo].[PartialHouse]
	--DELETE FROM [dbo].[PartialUser]
	--DELETE FROM [dbo].[HouseOption]
	--DELETE FROM [dbo].[Student]
	--DELETE FROM [dbo].[StudentHouse]
	--DELETE FROM [dbo].[StudentHouseLeave]
	--UPDATE [dbo].[User] SET [HouseId] = null
	
	--DELETE FROM [dbo].[House]
	--DELETE FROM [dbo].[Landlord]
	--DELETE FROM [dbo].Photo
	--DELETE FROM [dbo].[Spotlight]
	--DELETE FROM [dbo].[User]
	--DELETE FROM [dbo].[aspnet_Users] where UserName <> 'admin'
	
   --DELETE FROM [dbo].[School]
   --DELETE FROM [dbo].[Option]
   
	/*Data updates*/

	--update [dbo].[SystemConfig] 

	--set [Value] = 'http://ratemystudenthousingandme.com/'
	--where [SystemConfigId] = 8

	--update [dbo].[SystemConfig] 

	--set [Value] = 'true'
	--where [SystemConfigId] = 3
    
END
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[SystemConfigId] [int] NOT NULL,
	[Key] [nvarchar](50) NULL,
	[Value] [nvarchar](1000) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[SystemConfigId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'FacebookAppID', N'851790534864861', N'Facebook Application Id which does not change', N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601238CC7 AS DateTime), N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601238CC7 AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'FacebookAppSecret', N'834a6f7272f736671998a6e98cdc06cb', N'Facebook Application secret', N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601245F45 AS DateTime), N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601245F45 AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'IsEmailActivation', N'false', N'Email Activation true or false', N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601245F45 AS DateTime), N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A37601245F45 AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'SMTP_HOST', N'smtpout.secureserver.net', N'Email host server', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SMTP_PORT', N'80', N'SMTP_PORT', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'SMTP_FROM_EMAIL', N'support@ratemystudenthome.com', N'From email address for auto generated emails', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'SMTP_FROM_EMAIL_PASSWORD', N'support', N'From email password', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'SITEURL', N'http://localhost:63990/', N'Site Url', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'ENABLE_DEVELOPER_EMAILS', N'false', N'ENABLE_DEVELOPER_EMAILS', N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A3A50098C9AF AS DateTime), N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'DEVELOPER_EMAIL', N'COOLDILCOOL@GMAIL.COM', N'Developers Test email address', N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime), N'9dfa50b5-1a9d-4c15-a227-f70d96dbdca5', CAST(0x0000A3A50098C9AF AS DateTime))
INSERT [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'FB_REDIRECT_URL', N'', N'FB Return url', N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A3CA01175CE4 AS DateTime), N'37978c03-e5bc-412b-956f-d6528d24ecec', CAST(0x0000A3CA01175CE4 AS DateTime))
/****** Object:  StoredProcedure [dbo].[usp_StudentSelectAll]    Script Date: 02/27/2015 13:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentSelectAll] 
   
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN
SELECT     UserId, IsPartialUser, IsFBUser, FBAccessToken, StreetAddress, City, StateId,
                          (SELECT     StateName
                            FROM          State
                            WHERE      (StateId = [User].StateId)) AS State, Zip, BestContactNumber, Status, PersonalEmail, FBid, RatingValue, Gender, FirstName, MiddleName, LastName, 
                      HouseId, RoleId, IsDeleted,  ReferralCode, FirstName + ' ' + MiddleName  + ' ' + LastName AS Name,ReferralCode
FROM         [User]
where RoleId ='6E712B8E-3559-40C2-A170-5E08B194AA1A'
--SELECT     [User].UserId, [User].IsPartialUser, [User].IsFBUser, [User].FBAccessToken, [User].StreetAddress, [User].City, [User].StateId, (SELECT [StateName] FROM [dbo].[State] where [StateId] = [User].[StateId]) as State, [User].Zip, [User].BestContactNumber, 
--                      [User].Status, [User].PersonalEmail, [User].FBid, [User].RatingValue, [User].Gender, [User].FirstName, [User].MiddleName, [User].LastName, [User].HouseId, 
--                      [User].RoleId, [User].IsDeleted, aspnet_Users.UserName, aspnet_Membership.Email, aspnet_Membership.LoweredEmail, aspnet_Membership.PasswordQuestion, 
--                      Student.SchoolId,(SELECT [Name] FROM [dbo].[School] where [SchoolId] = Student.SchoolId ) as SchoolName, Student.Year, Student.StartYear, Student.StartMonth, Student.Status AS Expr1, Student.MajorId, Student.PreviousSchoolInfo, 
--                      Student.PreviousSchool
--FROM         Student INNER JOIN
--                      aspnet_Membership ON Student.UserId = aspnet_Membership.UserId INNER JOIN
--                      aspnet_Users ON Student.UserId = aspnet_Users.UserId AND aspnet_Membership.UserId = aspnet_Users.UserId INNER JOIN
--                      [User] ON aspnet_Users.UserId = [User].UserId AND aspnet_Users.UserId = [User].CreatedBy AND aspnet_Users.UserId = [User].UpdatedBy
                      

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LandlordSelectAll]    Script Date: 02/27/2015 13:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LandlordSelectAll] 
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

SELECT     UserId, IsPartialUser, IsFBUser, FBAccessToken, StreetAddress, City, StateId,
                          (SELECT     StateName
                            FROM          State
                            WHERE      (StateId = [User].StateId)) AS State, Zip, BestContactNumber, Status, PersonalEmail, FBid, RatingValue, Gender, FirstName, MiddleName, LastName, 
                      HouseId, RoleId, IsDeleted,  ReferralCode, FirstName + ' ' + MiddleName  + ' ' + LastName AS Name, ReferralCode
FROM         [User]
where RoleId ='0A3FDA72-FC47-402D-817B-445D89C4C4DF'
--	SELECT     Landlord.LandlordId,Landlord.LandlordName, aspnet_Users.UserName, [User].FirstName,[User].MiddleName,[User].LastName, [User].StreetAddress, [User].City, (SELECT [StateName] FROM [dbo].[State] where [StateId] = [User].[StateId]) as State, [User].[StateId], [User].Zip, [User].BestContactNumber, 
--                      [User].DriversLicenseNumber, [User].RatingValue, [User].IsDeleted, [User].IsFBUser, aspnet_Membership.LoweredEmail, 
--                      aspnet_Membership.PasswordQuestion
--FROM         Landlord INNER JOIN
--                      aspnet_Users ON Landlord.UserId = aspnet_Users.UserId INNER JOIN
--                      [User] ON aspnet_Users.UserId = [User].UserId AND aspnet_Users.UserId = [User].CreatedBy AND aspnet_Users.UserId = [User].UpdatedBy INNER JOIN
--                      aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId
--	WHERE  (isnull([User].IsDeleted,0) <> 1 )
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseSelectByLandlordId]    Script Date: 02/27/2015 13:24:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSelectByLandlordId] 
    @LandlordId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [HouseId], [LandlordId], [StreetAddress], [City],  (SELECT [StateName] FROM [dbo].[State] where [StateId] =  [dbo].[House] .[StateId]) AS state , [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage],[TotalSquareFootage], [UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue] ,[Price]
	FROM   [dbo].[House] 
	WHERE  ([LandlordId] = @LandlordId OR @LandlordId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseSelectAll]    Script Date: 02/27/2015 13:24:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSelectAll] 

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT      House.HouseId, House.LandlordId, House.StreetAddress, House.City, (SELECT [StateName] FROM [dbo].[State] where [StateId] =  [dbo].[House] .[StateId]) AS state , House.Zip, House.YearHomeBuild, House.BedRooms, 
                      House.BathRooms, House.LotSquareFootage, House.TotalSquareFootage, House.UtilitiesIncludedInRent, House.PropertyImagePath, House.IsDeleted, 
                      House.CreatedBy, House.CreatedDate, House.UpdatedBy, House.UpdatedDate, House.RatingValue, House.Price, Landlord.LandlordName
FROM         House INNER JOIN
                      Landlord ON House.LandlordId = Landlord.LandlordId
WHERE  (isnull(House.IsDeleted,0) <> 1 )
	COMMIT
GO
/****** Object:  Table [dbo].[PhotoCategory]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoCategory](
	[PhotoCategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[CategoryDescription] [nvarchar](250) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PhotoCategory] PRIMARY KEY CLUSTERED 
(
	[PhotoCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Profile_Picture', N'Profile_Picture', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Cover_Picture', N'Cover_Picture', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'House_Picture', N'House_Picture', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'House_Life_Picture', N'House_Life_Picture', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38200B9F7D7 AS DateTime))
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Photo_Comment', N'Photo_Comment', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38400B91B1C AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38400B91B1C AS DateTime))
INSERT [dbo].[PhotoCategory] ([PhotoCategoryId], [CategoryName], [CategoryDescription], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'Document_Comment', N'Document_Comment', N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38400B91B1C AS DateTime), N'01772af6-8315-4c05-82e1-9e22c665038c', CAST(0x0000A38400B91B1C AS DateTime))
/****** Object:  StoredProcedure [dbo].[usp_SystemConfigUpdate]    Script Date: 02/27/2015 13:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SystemConfigUpdate] 
    @SystemConfigId int,
    @Key nvarchar(50) = NULL,
    @Value nvarchar(50) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[SystemConfig]
	SET    [SystemConfigId] = @SystemConfigId, [Key] = @Key, [Value] = @Value, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [SystemConfigId] = @SystemConfigId
	
	-- Begin Return Select <- do not remove
	SELECT [SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[SystemConfig]
	WHERE  [SystemConfigId] = @SystemConfigId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SystemConfigSelectByKey]    Script Date: 02/27/2015 13:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SystemConfigSelectByKey] 
    @Key nvarchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  



	SELECT [SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[SystemConfig] 
	WHERE  ([Key] = @Key)
GO
/****** Object:  StoredProcedure [dbo].[usp_SystemConfigSelect]    Script Date: 02/27/2015 13:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SystemConfigSelect] 
    @SystemConfigId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[SystemConfig] 
	WHERE  ([SystemConfigId] = @SystemConfigId OR @SystemConfigId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SystemConfigInsert]    Script Date: 02/27/2015 13:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SystemConfigInsert] 
    @SystemConfigId int,
    @Key nvarchar(50) = NULL,
    @Value nvarchar(50) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[SystemConfig] ([SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @SystemConfigId, @Key, @Value, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [SystemConfigId], [Key], [Value], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[SystemConfig]
	WHERE  [SystemConfigId] = @SystemConfigId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SystemConfigDelete]    Script Date: 02/27/2015 13:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SystemConfigDelete] 
    @SystemConfigId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[SystemConfig]
	WHERE  [SystemConfigId] = @SystemConfigId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StateUpdate]    Script Date: 02/27/2015 13:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StateUpdate] 
    @StateId int,
    @StateName nvarchar(50),
    @StateCode nvarchar(50) = NULL,
    @Description nvarchar(250) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[State]
	SET    [StateId] = @StateId, [StateName] = @StateName, [StateCode] = @StateCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [StateId] = @StateId
	
	-- Begin Return Select <- do not remove
	SELECT [StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[State]
	WHERE  [StateId] = @StateId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StateSelectAll]    Script Date: 02/27/2015 13:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StateSelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[State] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StateSelect]    Script Date: 02/27/2015 13:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StateSelect] 
    @StateId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[State] 
	WHERE  ([StateId] = @StateId OR @StateId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StateInsert]    Script Date: 02/27/2015 13:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StateInsert] 
    @StateId int,
    @StateName nvarchar(50),
    @StateCode nvarchar(50) = NULL,
    @Description nvarchar(250) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[State] ([StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @StateId, @StateName, @StateCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [StateId], [StateName], [StateCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[State]
	WHERE  [StateId] = @StateId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_StateDelete]    Script Date: 02/27/2015 13:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StateDelete] 
    @StateId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[State]
	WHERE  [StateId] = @StateId

	COMMIT
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/27/2015 13:22:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionCategoryUpdate]    Script Date: 02/27/2015 13:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionCategoryUpdate] 
    @OptionCategoryId int,
    @Name nvarchar(50) = NULL,
    @Description nvarchar(50) = NULL,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[OptionCategory]
	SET    [Name] = @Name, [Description] = @Description, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [OptionCategoryId] = @OptionCategoryId
	
	-- Begin Return Select <- do not remove
	--SELECT [OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[OptionCategory]
	--WHERE  [OptionCategoryId] = @OptionCategoryId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionCategorySelectAll]    Script Date: 02/27/2015 13:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionCategorySelectAll] 

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionCategoryId], [Name], [Name] as [OptionCategoryName], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[OptionCategory] 


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionCategorySelect]    Script Date: 02/27/2015 13:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionCategorySelect] 
    @OptionCategoryId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[OptionCategory] 
	WHERE  ([OptionCategoryId] = @OptionCategoryId OR @OptionCategoryId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionCategoryInsert]    Script Date: 02/27/2015 13:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionCategoryInsert] 
    @Name nvarchar(50) = NULL,
    @Description nvarchar(50) = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	
	INSERT INTO [dbo].[OptionCategory] ([Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @Name, @Description, @CreatedBy, @CreatedDate, @CreatedBy, @CreatedDate
	
	-- Begin Return Select <- do not remove
	--SELECT [OptionCategoryId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[OptionCategory]
	--WHERE  [OptionCategoryId] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionCategoryDelete]    Script Date: 02/27/2015 13:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionCategoryDelete] 
    @OptionCategoryId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[OptionCategory]
	WHERE  [OptionCategoryId] = @OptionCategoryId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MajorUpdate]    Script Date: 02/27/2015 13:24:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MajorUpdate] 
    @MajorId int,
    @MajorName nvarchar(256),
    @MajorCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Major]
	SET    [MajorId] = @MajorId, [MajorName] = @MajorName, [MajorCode] = @MajorCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [MajorId] = @MajorId
	
	-- Begin Return Select <- do not remove
	SELECT [MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Major]
	WHERE  [MajorId] = @MajorId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MajorSelectAll]    Script Date: 02/27/2015 13:24:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MajorSelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Major] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MajorSelect]    Script Date: 02/27/2015 13:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MajorSelect] 
    @MajorId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Major] 
	WHERE  ([MajorId] = @MajorId OR @MajorId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MajorInsert]    Script Date: 02/27/2015 13:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MajorInsert] 
    @MajorId int,
    @MajorName nvarchar(256),
    @MajorCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Major] ([MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @MajorId, @MajorName, @MajorCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [MajorId], [MajorName], [MajorCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Major]
	WHERE  [MajorId] = @MajorId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MajorDelete]    Script Date: 02/27/2015 13:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MajorDelete] 
    @MajorId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Major]
	WHERE  [MajorId] = @MajorId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoCategoryUpdate]    Script Date: 02/27/2015 13:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[usp_PhotoCategoryUpdate] 
    @PhotoCategoryId int,
	@CategoryName nvarchar(150),
	@CategoryDescription nvarchar(250),
    @UpdatedBy uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()

	BEGIN TRAN

	UPDATE [dbo].[PhotoCategory]
   SET 
      [CategoryName] = @CategoryName
      ,[CategoryDescription] = @CategoryDescription
      ,[UpdatedBy] = @UpdatedBy
      ,[UpdatedDate] = @UpdatedDate
 WHERE [PhotoCategoryId] = @PhotoCategoryId
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoCategorySelectAll]    Script Date: 02/27/2015 13:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoCategorySelectAll] 
   
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [PhotoCategoryId]
      ,[CategoryName]
      ,[CategoryDescription]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[PhotoCategory]
	

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoCategorySelect]    Script Date: 02/27/2015 13:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoCategorySelect] 
    @PhotoCategoryId int 
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [PhotoCategoryId]
      ,[CategoryName]
      ,[CategoryDescription]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
  FROM [dbo].[PhotoCategory]
	WHERE  ([PhotoCategoryId] = @PhotoCategoryId OR @PhotoCategoryId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoCategoryInsert]    Script Date: 02/27/2015 13:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoCategoryInsert] 
	@PhotoCategoryId int,
	@CategoryName nvarchar(150),
	@CategoryDescription nvarchar(250),
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	INSERT INTO [dbo].[PhotoCategory]
           ([PhotoCategoryId]
           ,[CategoryName]
           ,[CategoryDescription]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           (@PhotoCategoryId
           ,@CategoryName
           ,@CategoryDescription
           ,@CreatedBy
           ,@CreatedDate
           ,@CreatedBy
           ,@CreatedDate)
		
		
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoCategoryDelete]    Script Date: 02/27/2015 13:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoCategoryDelete] 
    @PhotoCategoryId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE FROM [dbo].[PhotoCategory]
     WHERE PhotoCategoryId = @PhotoCategoryId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SoroityUpdate]    Script Date: 02/27/2015 13:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SoroityUpdate] 
    @SoroityId int,
    @SoroityName nvarchar(256),
    @SoroityCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Soroity]
	SET    [SoroityId] = @SoroityId, [SoroityName] = @SoroityName, [SoroityCode] = @SoroityCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [SoroityId] = @SoroityId
	
	-- Begin Return Select <- do not remove
	SELECT [SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Soroity]
	WHERE  [SoroityId] = @SoroityId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SoroitySelectAll]    Script Date: 02/27/2015 13:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SoroitySelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Soroity] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SoroitySelect]    Script Date: 02/27/2015 13:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SoroitySelect] 
    @SoroityId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Soroity] 
	WHERE  ([SoroityId] = @SoroityId OR @SoroityId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SoroityInsert]    Script Date: 02/27/2015 13:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SoroityInsert] 
    @SoroityId int,
    @SoroityName nvarchar(256),
    @SoroityCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Soroity] ([SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @SoroityId, @SoroityName, @SoroityCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [SoroityId], [SoroityName], [SoroityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Soroity]
	WHERE  [SoroityId] = @SoroityId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SoroityDelete]    Script Date: 02/27/2015 13:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SoroityDelete] 
    @SoroityId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Soroity]
	WHERE  [SoroityId] = @SoroityId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SchoolUpdate]    Script Date: 02/27/2015 13:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SchoolUpdate] 
    @SchoolId uniqueidentifier,
    @Name nvarchar(256),
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
    @State nvarchar(256) = NULL,
    @Zip nvarchar(256) = NULL,
    @ContactNumber nvarchar(256) = NULL,
    @Email nvarchar(256) = NULL,
    @Location nvarchar(256) = NULL,
    @WebsiteURL nvarchar(256) = NULL,
    @UpdatedBy uniqueidentifier,
    @RatingValue decimal(5, 2) = NULL,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()

	BEGIN TRAN

	UPDATE [dbo].[School]
	SET		[SchoolId] = @SchoolId, 
			[Name] = @Name, 
			[StreetAddress] = @StreetAddress, 
			[City] = @City, 
			[State] = @State, 
			[Zip] = @Zip, 
			[ContactNumber] = @ContactNumber, 
			[Email] = @Email, 
			[Location] = @Location, 
			[WebsiteURL] = @WebsiteURL, 
			[UpdatedBy] = @UpdatedBy, 
			[UpdatedDate] = @UpdatedDate, 
			[RatingValue] = @RatingValue
	WHERE  [SchoolId] = @SchoolId
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SchoolSelectAll]    Script Date: 02/27/2015 13:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SchoolSelectAll] 
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT 
		[SchoolId], 
		[Name], 
		[StreetAddress], 
		[City], 
		[State], 
		[Zip], 
		[ContactNumber], 
		[Email], 
		[Location], 
		[WebsiteURL], 
		[IsDeleted], 
		[CreatedBy], 
		[CreatedDate], 
		[UpdatedBy], 
		[UpdatedDate], 
		[RatingValue] 
	FROM   [dbo].[School] 
	WHERE  (isnull(IsDeleted,0) <> 1 )
GO
/****** Object:  StoredProcedure [dbo].[usp_SchoolSelect]    Script Date: 02/27/2015 13:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SchoolSelect] 
    @SchoolId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT 
		[SchoolId], 
		[Name], 
		[StreetAddress], 
		[City], 
		[State], 
		[Zip], 
		[ContactNumber], 
		[Email], 
		[Location], 
		[WebsiteURL], 
		[IsDeleted], 
		[CreatedBy], 
		[CreatedDate], 
		[UpdatedBy], 
		[UpdatedDate], 
		[RatingValue] 
	FROM   [dbo].[School] 
	WHERE  ([SchoolId] = @SchoolId OR @SchoolId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SchoolInsert]    Script Date: 02/27/2015 13:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SchoolInsert] 
    @SchoolId uniqueidentifier,
    @Name nvarchar(256),
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
    @State nvarchar(256) = NULL,
    @Zip nvarchar(256) = NULL,
    @ContactNumber nvarchar(256) = NULL,
    @Email nvarchar(256) = NULL,
    @Location nvarchar(256) = NULL,
    @WebsiteURL nvarchar(256) = NULL,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
	@RatingValue decimal(5,2),
    @CreatedDate datetime output

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	SET @CreatedDate = GETUTCDATE()

	BEGIN TRAN
	
	INSERT INTO [dbo].[School] 
		(	[SchoolId], 
			[Name], 
			[StreetAddress], 
			[City], 
			[State], 
			[Zip], 
			[ContactNumber], 
			[Email], 
			[Location], 
			[WebsiteURL],
			[RatingValue],
			[CreatedBy], 
			[CreatedDate], 
			[UpdatedBy], 
			[UpdatedDate] )
	SELECT 
			@SchoolId, 
			@Name, 
			@StreetAddress, 
			@City, 
			@State, 
			@Zip, 
			@ContactNumber, 
			@Email, 
			@Location, 
			@WebsiteURL,
			@RatingValue,
			@CreatedBy, 
			@CreatedDate, 
			@CreatedBy, 
			@CreatedDate
	               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_SchoolDelete]    Script Date: 02/27/2015 13:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_SchoolDelete] 
    @SchoolId uniqueidentifier,
	@UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[School]
	SET		IsDeleted = 1,
			[UpdatedBy] = @UpdatedBy, 
			[UpdatedDate] = GETUTCDATE()
	WHERE  [SchoolId] = @SchoolId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OraganizationUpdate]    Script Date: 02/27/2015 13:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OraganizationUpdate] 
    @OraganizationId int,
    @OraganizationName nvarchar(50),
    @OraganizationCode nvarchar(50) = NULL,
    @Description nvarchar(250) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Oraganization]
	SET    [OraganizationId] = @OraganizationId, [OraganizationName] = @OraganizationName, [OraganizationCode] = @OraganizationCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [OraganizationId] = @OraganizationId
	
	-- Begin Return Select <- do not remove
	SELECT [OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Oraganization]
	WHERE  [OraganizationId] = @OraganizationId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OraganizationSelectAll]    Script Date: 02/27/2015 13:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OraganizationSelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Oraganization] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OraganizationSelect]    Script Date: 02/27/2015 13:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OraganizationSelect] 
    @OraganizationId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Oraganization] 
	WHERE  ([OraganizationId] = @OraganizationId OR @OraganizationId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OraganizationInsert]    Script Date: 02/27/2015 13:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OraganizationInsert] 
    @OraganizationId int,
    @OraganizationName nvarchar(50),
    @OraganizationCode nvarchar(50) = NULL,
    @Description nvarchar(250) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Oraganization] ([OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @OraganizationId, @OraganizationName, @OraganizationCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [OraganizationId], [OraganizationName], [OraganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Oraganization]
	WHERE  [OraganizationId] = @OraganizationId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OraganizationDelete]    Script Date: 02/27/2015 13:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OraganizationDelete] 
    @OraganizationId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Oraganization]
	WHERE  [OraganizationId] = @OraganizationId

	COMMIT
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[PhotoId] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](150) NULL,
	[Caption] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[FilePath] [nvarchar](500) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[ContextTypeId] [int] NOT NULL,
	[ContextSubTypeId] [int] NULL,
	[ContextId] [uniqueidentifier] NOT NULL,
	[ContextSubId] [uniqueidentifier] NULL,
	[PhotoCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Photo] ([PhotoId], [FileName], [Caption], [Description], [FilePath], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ContextTypeId], [ContextSubTypeId], [ContextId], [ContextSubId], [PhotoCategoryId]) VALUES (N'bf4e5173-b76c-4a26-9313-2fe6214ba339', N'da62778e-6ec0-41d3-a70e-849c8930b905.jpg', N'da62778e-6ec0-41d3-a70e-849c8930b905.jpg', N'da62778e-6ec0-41d3-a70e-849c8930b905.jpg', N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/da62778e-6ec0-41d3-a70e-849c8930b905.jpg', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F6AF23 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F6AF23 AS DateTime), 1, NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', NULL, 4)
INSERT [dbo].[Photo] ([PhotoId], [FileName], [Caption], [Description], [FilePath], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ContextTypeId], [ContextSubTypeId], [ContextId], [ContextSubId], [PhotoCategoryId]) VALUES (N'ef909c62-d9ff-4137-9e1e-4e2b7ff8ef90', N'3271c9b2-8152-40db-a256-426d08c08692.jpg', N'3271c9b2-8152-40db-a256-426d08c08692.jpg', N'3271c9b2-8152-40db-a256-426d08c08692.jpg', N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/3271c9b2-8152-40db-a256-426d08c08692.jpg', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F704F9 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F704F9 AS DateTime), 1, NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', NULL, 1)
INSERT [dbo].[Photo] ([PhotoId], [FileName], [Caption], [Description], [FilePath], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ContextTypeId], [ContextSubTypeId], [ContextId], [ContextSubId], [PhotoCategoryId]) VALUES (N'14645a6a-b09a-4093-9127-f5fd917908c3', N'd91734e8-1f45-4c11-8a07-894350021f78.jpg', N'd91734e8-1f45-4c11-8a07-894350021f78.jpg', N'd91734e8-1f45-4c11-8a07-894350021f78.jpg', N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/d91734e8-1f45-4c11-8a07-894350021f78.jpg', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F6D6AE AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F6D6AE AS DateTime), 1, NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', NULL, 2)
INSERT [dbo].[Photo] ([PhotoId], [FileName], [Caption], [Description], [FilePath], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ContextTypeId], [ContextSubTypeId], [ContextId], [ContextSubId], [PhotoCategoryId]) VALUES (N'24dc7d69-1b64-4121-8a77-fa03882417d0', N'4e156447-1245-44a1-803b-43c89ff690bd.jpg', N'4e156447-1245-44a1-803b-43c89ff690bd.jpg', N'4e156447-1245-44a1-803b-43c89ff690bd.jpg', N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/4e156447-1245-44a1-803b-43c89ff690bd.jpg', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F689B5 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F689B5 AS DateTime), 1, NULL, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', NULL, 4)
/****** Object:  StoredProcedure [dbo].[usp_GreekHonorSocitiesUpdate]    Script Date: 02/27/2015 13:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreekHonorSocitiesUpdate] 
    @GreekHonorSocitiesId int,
    @GreekHonorSocitiesName nvarchar(256),
    @GreekHonorSocitiesCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[GreekHonorSocities]
	SET    [GreekHonorSocitiesId] = @GreekHonorSocitiesId, [GreekHonorSocitiesName] = @GreekHonorSocitiesName, [GreekHonorSocitiesCode] = @GreekHonorSocitiesCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [GreekHonorSocitiesId] = @GreekHonorSocitiesId
	
	-- Begin Return Select <- do not remove
	SELECT [GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[GreekHonorSocities]
	WHERE  [GreekHonorSocitiesId] = @GreekHonorSocitiesId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreekHonorSocitiesSelectAll]    Script Date: 02/27/2015 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreekHonorSocitiesSelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[GreekHonorSocities] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreekHonorSocitiesSelect]    Script Date: 02/27/2015 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreekHonorSocitiesSelect] 
    @GreekHonorSocitiesId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[GreekHonorSocities] 
	WHERE  ([GreekHonorSocitiesId] = @GreekHonorSocitiesId OR @GreekHonorSocitiesId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreekHonorSocitiesInsert]    Script Date: 02/27/2015 13:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreekHonorSocitiesInsert] 
    @GreekHonorSocitiesId int,
    @GreekHonorSocitiesName nvarchar(256),
    @GreekHonorSocitiesCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @GreekHonorSocitiesId, @GreekHonorSocitiesName, @GreekHonorSocitiesCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [GreekHonorSocitiesId], [GreekHonorSocitiesName], [GreekHonorSocitiesCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[GreekHonorSocities]
	WHERE  [GreekHonorSocitiesId] = @GreekHonorSocitiesId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreekHonorSocitiesDelete]    Script Date: 02/27/2015 13:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreekHonorSocitiesDelete] 
    @GreekHonorSocitiesId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[GreekHonorSocities]
	WHERE  [GreekHonorSocitiesId] = @GreekHonorSocitiesId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreakOrganizationUpdate]    Script Date: 02/27/2015 13:24:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreakOrganizationUpdate] 
    @GreakOrganizationId int,
    @GreakOrganizationName nvarchar(256),
    @GreakOrganizationCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[GreakOrganization]
	SET    [GreakOrganizationId] = @GreakOrganizationId, [GreakOrganizationName] = @GreakOrganizationName, [GreakOrganizationCode] = @GreakOrganizationCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [GreakOrganizationId] = @GreakOrganizationId
	
	-- Begin Return Select <- do not remove
	SELECT [GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[GreakOrganization]
	WHERE  [GreakOrganizationId] = @GreakOrganizationId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreakOrganizationSelectAll]    Script Date: 02/27/2015 13:24:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreakOrganizationSelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[GreakOrganization] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreakOrganizationSelect]    Script Date: 02/27/2015 13:24:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreakOrganizationSelect] 
    @GreakOrganizationId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[GreakOrganization] 
	WHERE  ([GreakOrganizationId] = @GreakOrganizationId OR @GreakOrganizationId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreakOrganizationInsert]    Script Date: 02/27/2015 13:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreakOrganizationInsert] 
    @GreakOrganizationId int,
    @GreakOrganizationName nvarchar(256),
    @GreakOrganizationCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[GreakOrganization] ([GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @GreakOrganizationId, @GreakOrganizationName, @GreakOrganizationCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [GreakOrganizationId], [GreakOrganizationName], [GreakOrganizationCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[GreakOrganization]
	WHERE  [GreakOrganizationId] = @GreakOrganizationId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_GreakOrganizationDelete]    Script Date: 02/27/2015 13:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GreakOrganizationDelete] 
    @GreakOrganizationId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[GreakOrganization]
	WHERE  [GreakOrganizationId] = @GreakOrganizationId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_FraternityUpdate]    Script Date: 02/27/2015 13:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_FraternityUpdate] 
    @FraternityId int,
    @FraternityName nvarchar(256),
    @FraternityCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Fraternity]
	SET    [FraternityId] = @FraternityId, [FraternityName] = @FraternityName, [FraternityCode] = @FraternityCode, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [FraternityId] = @FraternityId
	
	-- Begin Return Select <- do not remove
	SELECT [FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Fraternity]
	WHERE  [FraternityId] = @FraternityId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_FraternitySelectAll]    Script Date: 02/27/2015 13:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_FraternitySelectAll] 
    
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Fraternity] 
	WHERE  (isnull([IsDeleted],0) <> 1) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_FraternitySelect]    Script Date: 02/27/2015 13:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_FraternitySelect] 
    @FraternityId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Fraternity] 
	WHERE  ([FraternityId] = @FraternityId OR @FraternityId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_FraternityInsert]    Script Date: 02/27/2015 13:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_FraternityInsert] 
    @FraternityId int,
    @FraternityName nvarchar(256),
    @FraternityCode nvarchar(256) = NULL,
    @Description nvarchar(256) = NULL,
    @CreatedBy uniqueidentifier = NULL,
    @CreatedDate datetime = NULL,
    @UpdatedBy uniqueidentifier = NULL,
    @UpdatedDate datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Fraternity] ([FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @FraternityId, @FraternityName, @FraternityCode, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [FraternityId], [FraternityName], [FraternityCode], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[Fraternity]
	WHERE  [FraternityId] = @FraternityId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_FraternityDelete]    Script Date: 02/27/2015 13:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_FraternityDelete] 
    @FraternityId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Fraternity]
	WHERE  [FraternityId] = @FraternityId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ContextTypeUpdate]    Script Date: 02/27/2015 13:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ContextTypeUpdate] 
    @ContextTypeId int,
    @Name nvarchar(50) = NULL,
    @Description nvarchar(100) = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ContextType]
	SET    [ContextTypeId] = @ContextTypeId, [Name] = @Name, [Description] = @Description, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [ContextTypeId] = @ContextTypeId
	
	-- Begin Return Select <- do not remove
	SELECT [ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[ContextType]
	WHERE  [ContextTypeId] = @ContextTypeId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ContextTypeSelect]    Script Date: 02/27/2015 13:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ContextTypeSelect] 
    @ContextTypeId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[ContextType] 
	WHERE  ([ContextTypeId] = @ContextTypeId OR @ContextTypeId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ContextTypeInsert]    Script Date: 02/27/2015 13:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ContextTypeInsert] 
    @ContextTypeId int,
    @Name nvarchar(50) = NULL,
    @Description nvarchar(100) = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[ContextType] ([ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @ContextTypeId, @Name, @Description, @CreatedBy, @CreatedDate, @UpdatedBy, @UpdatedDate
	
	-- Begin Return Select <- do not remove
	SELECT [ContextTypeId], [Name], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	FROM   [dbo].[ContextType]
	WHERE  [ContextTypeId] = @ContextTypeId
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ContextTypeDelete]    Script Date: 02/27/2015 13:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ContextTypeDelete] 
    @ContextTypeId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ContextType]
	WHERE  [ContextTypeId] = @ContextTypeId

	COMMIT
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', N'admin', N'admin', NULL, 0, CAST(0x0000A44500C62C8D AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'landlord', N'landlord', NULL, 0, CAST(0x0000A43D00F101D4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'b18282e0-abd6-4905-b281-ce55b2a38384', N'landnirshan', N'landnirshan', NULL, 0, CAST(0x0000A41C00B5A651 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'look2cool', N'look2cool', NULL, 0, CAST(0x0000A445012F7404 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', N'samsam1', N'samsam1', NULL, 0, CAST(0x0000A3EF007462EC AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'cf22d856-d9b4-4eb7-89d7-6e7792132d1c', N'jbsfb', N'jbsfb', NULL, 0, CAST(0x0000A423008A4B84 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'944149c1-f1dd-4250-9a99-45e40fc692f7', N'landone', N'landone', NULL, 0, CAST(0x0000A42901090827 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'f57f6efd-b65d-4cee-bf02-71232a8e830d', N'10152679756667499', N'10152679756667499', NULL, 0, CAST(0x0000A423012183AF AS DateTime))
/****** Object:  StoredProcedure [dbo].[usp_UserSelectUsernameByFbId]    Script Date: 02/27/2015 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UserSelectUsernameByFbId] 
    @FBId nvarchar(50),
	@Username nvarchar(256) output
AS 
	BEGIN
		IF exists (select null from [User] where FBid=@FbId)
		BEGIN
			SELECT @Username = au.UserName
			FROM   [dbo].[User] U inner join aspnet_Users au on au.UserId = u.UserId
			WHERE  u.FBid = @FBId and isnull(U.IsFBUser,0) = 1
		END
		ELSE
		BEGIN
			SET @Username = ''
		END
	END

	BEGIN TRAN



	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_Search ]    Script Date: 02/27/2015 13:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_Student_Search ]
    @StudentId uniqueidentifier,
	@SchoolId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT 
		S.[StudentId], 
		S.[UserId], 
		S.[SchoolId], 
		S.[Year],
		sc.[Name] as SchoolName,
		sc.[StreetAddress] as SchoolStreetAddress,
		sc.[ContactNumber] as SchoolContactNumber,
		u.City,
		u.BestContactNumber,
		u.DriversLicenseNumber,
		u.PersonalEmail,
		u.RatingValue as StudentRatingValue,

		S.[IsDeleted], 
		S.[CreatedBy], 
		S.[CreatedDate], 
		S.[UpdatedBy], 
		S.[UpdatedDate]

	FROM   [dbo].[Student] s inner join [User] u on u.UserId = s.UserId
	inner JOIN School sc on sc.[SchoolId] = s.SchoolId
	inner join aspnet_Users au on au.UserId = s.UserId

	WHERE  (S.[StudentId] = @StudentId OR @StudentId IS NULL) AND
			(s.SchoolId = @SchoolId or @SchoolId IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/27/2015 13:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/27/2015 13:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/27/2015 13:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[ContextTypeId] [int] NOT NULL,
	[ContextId] [uniqueidentifier] NOT NULL,
	[CommentText] [nvarchar](max) NOT NULL,
	[RatingValue] [decimal](5, 2) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[CommentTypeId] [int] NULL,
	[FilePath] [nvarchar](500) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (34, 1, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'abc', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F850F2 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00F850F2 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (35, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'sacasdffffffffaaaaaaadffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00FA603B AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3DF00FA603B AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (36, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'', CAST(25.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF010EA9D9 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF010EA9D9 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (37, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'cdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV fdsfdfdsfd fdsffffffffffffffff dsvdsfdg', CAST(25.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0110D711 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0110D711 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (38, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'cdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV fdsfdfdsfd fdsffffffffffffffff dsvdsfdg', CAST(25.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0110E77C AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF0110E77C AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (39, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'cdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV fdsfdfdsfd fdsffxsacasffadfsdfffffffffffffff dsvdsfdg', CAST(25.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF011105B2 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A3DF011105B2 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (40, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'', CAST(10.33 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007AF249 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007AF249 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (41, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'', CAST(10.33 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007B03BB AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007B03BB AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (42, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'sdfsfsf sadf sdf sf sdf', CAST(5.38 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007B18E3 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF007B18E3 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (43, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 1', CAST(25.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C7199 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C7199 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (44, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 1', CAST(25.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C7B2B AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C7B2B AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (45, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 2', CAST(5.38 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C8C3E AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C8C3E AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (46, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 2', CAST(5.38 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C96D5 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009C96D5 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (47, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 3', CAST(5.38 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009CA910 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009CA910 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (48, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 3', CAST(5.38 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009CB36D AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009CB36D AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (49, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'test 3', CAST(10.33 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009EC956 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF009EC956 AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (50, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'dfgdfgdfg', CAST(10.33 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF00A14F4D AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A3FF00A14F4D AS DateTime), 2, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (51, 1, N'cb2bfb4d-f776-467c-8ae8-07c23482453a', N'hi its me sam.. well come to Ratemyhome.. its great applicaton.. enjoy..', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006EBB52 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006EBB52 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (52, 1, N'cb2bfb4d-f776-467c-8ae8-07c23482453a', N'hi its me sam.. well come to Ratemyhome.. its great applicaton.. enjoy..2', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006F2431 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006F2431 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (53, 1, N'cb2bfb4d-f776-467c-8ae8-07c23482453a', N'best web ever..', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006F6802 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A408006F6802 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (54, 1, N'cb2bfb4d-f776-467c-8ae8-07c23482453a', N'wow.. cool idea....', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4080070F33B AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4080070F33B AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (55, 1, N'7f77d1b2-de11-49ec-b3a8-36f5cd01867f', N'wow coolll', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42300713607 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42300713607 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (56, 1, N'7f77d1b2-de11-49ec-b3a8-36f5cd01867f', N'fdbdgfgff dfdfdfd', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42300715F2E AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A42300715F2E AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (57, 2, N'bb92a6ed-9d52-4142-85be-739744208fae', N'fdfddffdfdf', CAST(0.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A42400462A77 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A42400462A77 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (58, 2, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'uyjhgggggnj gghghg', CAST(0.00 AS Decimal(5, 2)), 0, N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A42400463E38 AS DateTime), N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', CAST(0x0000A42400463E38 AS DateTime), 1, N'')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (59, 1, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'nice pic', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280169A515 AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A4280169A515 AS DateTime), 3, N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/2da417c2-4163-4706-867a-2388abb3f475.jpg')
INSERT [dbo].[Comment] ([CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CommentTypeId], [FilePath]) VALUES (60, 1, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'gghgghgggg', CAST(0.00 AS Decimal(5, 2)), 0, N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A428016ADD9A AS DateTime), N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', CAST(0x0000A428016ADD9A AS DateTime), 3, N'~/uploads/b0b180a3-b20a-4a5c-9f85-f63b1b2aee77/96c93285-cef5-4dd0-a346-6a34ed078de7.jpg')
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/27/2015 13:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/27/2015 13:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'0e9b4b0f-339d-48fe-9c0b-22f6666ceb0f', N'Admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'0a3fda72-fc47-402d-817b-445d89c4c4df', N'Landlord', N'landlord', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'6e712b8e-3559-40c2-a170-5e08b194aa1a', N'Student', N'student', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'62094967-9855-408a-9de7-55f7784b9300', N'SystemAdmin', N'systemadmin', NULL)
/****** Object:  StoredProcedure [dbo].[usp_UserSelectByRoleName]    Script Date: 02/27/2015 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserSelectByRoleName]
	-- Add the parameters for the stored procedure here
	(@RoleName nvarchar(256)
	,@Email nvarchar(256))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT    [User].UserId, [User].FirstName, [User].MiddleName, [User].LastName, [User].City, [User].Zip, S.StateName, [User].StateId, [User].DateOfBirth, [User].BestContactNumber, 
                      [User].DriversLicenseNumber, [User].Status, [User].PersonalEmail, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, [User].FBid, 
                      [User].Gender, [User].AspnetUserId, [User].IsPartialUser, [User].HouseId, [User].RoleId, [User].ReferralCode, [User].IsFBUser, [User].FBAccessToken, [User].FBUrl, 
                      [User].FBProfilePictureURL, [User].StreetAddress, [User].FBTokenTimeStamp
FROM         aspnet_Roles INNER JOIN
                      [User] ON aspnet_Roles.RoleId = [User].RoleId LEFT OUTER JOIN
                      State AS S ON [User].StateId = S.StateId
                      
                      where aspnet_Roles.LoweredRoleName = @RoleName and [User].PersonalEmail = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelectAllByHouseId]    Script Date: 02/27/2015 13:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserSelectAllByHouseId]
	-- Add the parameters for the stored procedure here
	(@RoleName nvarchar(256),
	@HouseId uniqueidentifier)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     [User].UserId, [User].AspnetUserId, [User].IsPartialUser, [User].IsFBUser, [User].FBAccessToken, [User].FBUrl, [User].FBTokenTimeStamp, 
                      [User].FBProfilePictureURL, [User].StreetAddress, [User].City, [User].StateId,(SELECT [StateName] FROM [dbo].[State]
where [StateId] = [User].StateId)  As StateName, [User].Zip, [User].DateOfBirth, [User].BestContactNumber, [User].DriversLicenseNumber, 
                      [User].Status, [User].PersonalEmail, [User].IsDeleted, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, [User].RatingValue, [User].FBid, 
                      [User].Gender, [User].FirstName, [User].LastName, [User].MiddleName, [User].HouseId, [User].RoleId, aspnet_Roles.RoleName,[User].ReferralCode
FROM         aspnet_Roles INNER JOIN
                      [User] ON aspnet_Roles.RoleId = [User].RoleId 

                      where [User].HouseId = @HouseId AND  aspnet_Roles.LoweredRoleName = @RoleName 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelectAllByEmail]    Script Date: 02/27/2015 13:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserSelectAllByEmail]
	-- Add the parameters for the stored procedure here
	(@RoleName nvarchar(256)
	,@Email nvarchar(256))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



SELECT     [User].FirstName, [User].MiddleName, [User].LastName, [User].StreetAddress, [User].City, [User].Zip, S.StateName, [User].StateId, [User].DateOfBirth, 
                      [User].BestContactNumber, [User].DriversLicenseNumber, [User].Status, [User].PersonalEmail, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, 
                      [User].UpdatedDate, [User].FBid, [User].Gender, [User].AspnetUserId, [User].IsPartialUser, [User].HouseId, [User].RoleId,[User].ReferralCode
FROM         aspnet_Roles INNER JOIN
                      [User] ON aspnet_Roles.RoleId = [User].RoleId LEFT OUTER JOIN
                      State AS S ON [User].StateId = S.StateId
                      where aspnet_Roles.LoweredRoleName = @RoleName and [User].PersonalEmail = @Email



-- select registerd users
--	SELECT     [User].FirstName ,[User].MiddleName,[User].LastName, [User].StreetAddress, [User].City, [User].Zip, s.StateName, [User].StateId, [User].DateOfBirth, [User].BestContactNumber, 
--                      [User].DriversLicenseNumber, [User].Status, [User].PersonalEmail, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, 
--                      aspnet_Users.UserId, aspnet_Users.UserName, aspnet_Membership.PasswordQuestion, aspnet_Membership.IsApproved, aspnet_Membership.IsLockedOut, 
--                      aspnet_Membership.LastLoginDate, aspnet_Membership.LastPasswordChangedDate, aspnet_Membership.LastLockoutDate, 
--                      aspnet_Membership.FailedPasswordAttemptCount, [User].FBid,[User].Gender,[User].[AspnetUserId],[User].[IsPartialUser],[User].HouseId,[User].RoleId
--FROM         aspnet_Users INNER JOIN
--                      aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId INNER JOIN
--                      [User] ON aspnet_Users.UserId = [User].UserId AND aspnet_Users.UserId = [User].CreatedBy AND aspnet_Users.UserId = [User].UpdatedBy INNER JOIN
--                      aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN
--                      aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId left outer join State S 
--						on s.StateId = [User].StateId
--                      where aspnet_Roles.LoweredRoleName = @RoleName and aspnet_Membership.Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentSearch]    Script Date: 02/27/2015 13:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_StudentSearch] 
	@FirstName nvarchar(256) = NULL,
	@MiddleName nvarchar(256) = NULL,
	@LastName nvarchar(256) = NULL,
     @Zip nvarchar(256) = NULL,
     @Gender nvarchar(10) = NULL,
     @Status nvarchar(256) = NULL,
     @SchoolName nvarchar(256) = null
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN



SELECT     [User].UserId, [User].AspnetUserId, [User].IsPartialUser, [User].IsFBUser, [User].FBAccessToken, [User].FBUrl, [User].FBTokenTimeStamp, 
                      [User].FBProfilePictureURL, [User].StreetAddress, [User].City, [User].StateId, [User].Zip, [User].DateOfBirth, [User].BestContactNumber, [User].DriversLicenseNumber, 
                      [User].Status, [User].PersonalEmail, [User].IsDeleted, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, [User].RatingValue, [User].FBid, 
                      [User].Gender, [User].FirstName, [User].MiddleName, [User].LastName, [User].HouseId, [User].RoleId, Student.StudentId, Student.Year, 
                      Student.Status AS StudentStatus, School.Name AS SchoolName, School.StreetAddress AS SchoolStreetAddress, School.City AS SchoolCity, 
                      School.State AS SchoolState, School.Zip AS SchoolZip, School.ContactNumber, School.Email AS SchoolEmail, School.WebsiteURL, School.Location, Student.StartYear, 
                      Student.StartMonth, Student.MajorId, Student.PreviousSchoolInfo, Student.PreviousSchool, Student.IsDeleted AS Expr1
FROM        [User] 
			INNER JOIN aspnet_Roles	R on [User].RoleId = r.RoleId
			LEFT JOIN Student ON [User].UserId = Student.UserId 
			LEFT JOIN School ON Student.SchoolId = School.SchoolId 
 where     r.RoleName = 'student' 
			and ((@Zip IS  NULL) or School.Zip LIKE '%' + @Zip +'%') 
			and ((@Gender IS  NULL) or [User].Gender LIKE '%' + @Gender +'%') 
			and ((@Status IS  NULL) or [Student].Status LIKE '%' + @Status +'%') 
			and ((@FirstName IS  NULL) or [User].FirstName LIKE '%' + @FirstName +'%') 
			and ((@MiddleName IS  NULL) or [User].MiddleName LIKE '%' + @MiddleName +'%') 
			and ((@LastName IS  NULL) or [User].LastName LIKE '%' + @LastName +'%')
			and ((@SchoolName is NULL) or school.Name like @SchoolName + '%') 
		
 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_HouseSearch]    Script Date: 02/27/2015 13:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSearch] 
     @Zip nvarchar(256) = NULL,
     @BedRooms int = NULL,
     @BathRooms int = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

		SELECT     [User].UserId, [User].IsPartialUser, [User].AspnetUserId, [User].IsFBUser, [User].FBAccessToken, [User].FBUrl, [User].FBTokenTimeStamp, 
							  [User].FBProfilePictureURL, [User].StreetAddress, [User].City, [User].StateId, [User].Zip, [User].DateOfBirth, [User].BestContactNumber, [User].DriversLicenseNumber, 
							  [User].Status, [User].PersonalEmail, [User].IsDeleted, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, [User].RatingValue, [User].FBid, 
							  [User].Gender, [User].FirstName, [User].MiddleName, [User].LastName, [User].RoleId, House.HouseId AS HouseId, House.LandlordId, 
							  House.StreetAddress AS HouseStreetAddress, House.City AS HouseCity, House.StateId AS Expr4, House.Zip AS HouseZip, House.YearHomeBuild, House.BedRooms, 
							  House.BathRooms, House.LotSquareFootage, House.TotalSquareFootage, House.UtilitiesIncludedInRent, House.PropertyImagePath, 
							  House.IsDeleted AS HouseIsDeleted, House.CreatedBy AS HouseCreatedBy, House.CreatedDate AS HouseCreatedDate, House.UpdatedBy AS HouseUpdatedBy, 
							  House.UpdatedDate AS HouseUpdatedDate, House.RatingValue AS HouseRatingValue, House.Price, House.IsPartialHouse
		FROM         Landlord INNER JOIN
							  House ON Landlord.LandlordId = House.LandlordId INNER JOIN
							  aspnet_Roles INNER JOIN
							  [User] ON aspnet_Roles.RoleId = [User].RoleId ON Landlord.UserId = [User].UserId
		where     aspnet_Roles.RoleName = 'Landlord' 
					AND ((@Zip IS  NULL) or House.Zip LIKE '%' + @Zip +'%') 
					and ((@BedRooms IS  NULL) or House.BedRooms = @BedRooms) 
					and ((@BathRooms IS  NULL) or House.BathRooms = @BathRooms ) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/27/2015 13:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'f57f6efd-b65d-4cee-bf02-71232a8e830d', N'gQzvua0i/sy99A0vgOLvD5eDcBY=', 1, N'9FixevEHI2SfJR1HTAcoyQ==', NULL, N'cooldilcool@yahoo.com', N'cooldilcool@yahoo.com', N'Are you FB User ?', N'jNw+vG6vBm8KEmOLh12Lbi/3m9E=', 1, 0, CAST(0x0000A42300975888 AS DateTime), CAST(0x0000A42300975888 AS DateTime), CAST(0x0000A42300975888 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 2, CAST(0x0000A42901030BE2 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'cd09fe90-926f-4f47-93f1-bde8b1a63765', N'w8791c/x/0fs8JELfmGxoOaIEhI=', 1, N'8uptiGHK1RhYB0vQNGQsJg==', NULL, N'look2coolg@gmail.com', N'look2coolg@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A364010E4E0C AS DateTime), CAST(0x0000A44500C62C8D AS DateTime), CAST(0x0000A364010E4E0C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'PtyChrXtZ/2yCcRscX6yEjYp9r4=', 1, N'IVYBl1gpxYU+r5UWrcFuVg==', NULL, N'sampath.m@virtualplanet.com.au', N'sampath.m@virtualplanet.com.au', N'landlord?', N'VgKxb0WBHKOonELPEjgcD4v3fbw=', 1, 0, CAST(0x0000A3DE0019E54C AS DateTime), CAST(0x0000A43D00F0F03F AS DateTime), CAST(0x0000A3DE0019E54C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'b18282e0-abd6-4905-b281-ce55b2a38384', N'qyRBMGA2w8UOrHixzCxHSxSlqsg=', 1, N'w3nM08DvtGe0aFuY6lxTgg==', NULL, N'cooldilcool@gmail.com', N'cooldilcool@gmail.com', N'landnirshan?', N'3gtgN7idG4yFUTlQChhV/JeFeEk=', 1, 0, CAST(0x0000A3DE00FAF938 AS DateTime), CAST(0x0000A41C001D2A25 AS DateTime), CAST(0x0000A41C001D0290 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 2, CAST(0x0000A429010336E2 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'PVvlbzL1Jw4xjisFsYwFHAUdD30=', 1, N'QpewzKBBNxh1E5yvdOuVHg==', NULL, N'look2cool@gmail.com', N'look2cool@gmail.com', N'look2cool?', N'aPR8URuwXVSNGMhNpMaRKxuECTY=', 1, 0, CAST(0x0000A3DF00F43FBC AS DateTime), CAST(0x0000A445012F5D9C AS DateTime), CAST(0x0000A445012EEDDC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', N'NwjoBdYiDxVvKuW2NNNmkXQXf04=', 1, N'IKGUMi5A8KD3JLDF706NIw==', NULL, N'sampath.m@growfastonline.com.au', N'sampath.m@growfastonline.com.au', N'sam?', N'qLdEHNQTs4hV5pa3KNBl44B+uxo=', 0, 0, CAST(0x0000A3EF007462EC AS DateTime), CAST(0x0000A3EF007462EC AS DateTime), CAST(0x0000A3EF007462EC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'cf22d856-d9b4-4eb7-89d7-6e7792132d1c', N'ZG2lbLOQt6G3niOe4nf1m6uxwxI=', 1, N'lQbOK1wM8MA6i2HFZFgx4A==', NULL, N'cooldilcool111@yahoo.com', N'cooldilcool111@yahoo.com', N'Are you FB User ?', N'TlWL5S1hduzwac5PO/uJrplALWE=', 1, 0, CAST(0x0000A423008A4B84 AS DateTime), CAST(0x0000A423008A4B84 AS DateTime), CAST(0x0000A423008A4B84 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'37978c03-e5bc-412b-956f-d6528d24ecec', N'944149c1-f1dd-4250-9a99-45e40fc692f7', N'r5tiuJ+RDo/S9OSUqmYH5fNezqo=', 1, N'M3uSsvphRMXd4wsmYnbD/Q==', NULL, N'landone@landone.landone', N'landone@landone.landone', N'landone?', N'r5tiuJ+RDo/S9OSUqmYH5fNezqo=', 1, 0, CAST(0x0000A425012F8B08 AS DateTime), CAST(0x0000A4290108D529 AS DateTime), CAST(0x0000A425012F8B08 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[usp_User_IsUserEmailExist]    Script Date: 02/27/2015 13:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_User_IsUserEmailExist]
    @Email nvarchar(256),
	@IsExist bit output
AS
BEGIN
    IF exists (select null from [User] where PersonalEmail=@Email)
	BEGIN
        SET @IsExist = 1
	END
	ELSE
	BEGIN
		IF exists (select null from [dbo].[aspnet_Membership] where [Email]=@Email OR [LoweredEmail] = @Email)
		BEGIN
			SET @IsExist = 1
		END
		ELSE
		BEGIN
			SET @IsExist = 0
		END
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/27/2015 13:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/27/2015 13:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/27/2015 13:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/27/2015 13:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/27/2015 13:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'944149c1-f1dd-4250-9a99-45e40fc692f7', N'6e712b8e-3559-40c2-a170-5e08b194aa1a')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e6f3fe10-ec0e-452a-8745-65a2ab992a98', N'0a3fda72-fc47-402d-817b-445d89c4c4df')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'cf22d856-d9b4-4eb7-89d7-6e7792132d1c', N'6e712b8e-3559-40c2-a170-5e08b194aa1a')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'f57f6efd-b65d-4cee-bf02-71232a8e830d', N'6e712b8e-3559-40c2-a170-5e08b194aa1a')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'cd09fe90-926f-4f47-93f1-bde8b1a63765', N'0e9b4b0f-339d-48fe-9c0b-22f6666ceb0f')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'60297c18-ae9e-4f45-bddb-bf0b6f5334a5', N'0a3fda72-fc47-402d-817b-445d89c4c4df')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b18282e0-abd6-4905-b281-ce55b2a38384', N'0a3fda72-fc47-402d-817b-445d89c4c4df')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b0b180a3-b20a-4a5c-9f85-f63b1b2aee77', N'6e712b8e-3559-40c2-a170-5e08b194aa1a')
/****** Object:  StoredProcedure [dbo].[usp_UserSelectByEmail]    Script Date: 02/27/2015 13:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserSelectByEmail]
	-- Add the parameters for the stored procedure here
	(@RoleName nvarchar(256)
	,@Email nvarchar(256))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     [User].FirstName ,[User].MiddleName,[User].LastName, [User].StreetAddress, [User].City, [User].Zip, s.StateName, [User].StateId, [User].DateOfBirth, [User].BestContactNumber, 
                      [User].DriversLicenseNumber, [User].Status, [User].PersonalEmail, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, 
                      aspnet_Users.UserId, aspnet_Users.UserName, aspnet_Membership.PasswordQuestion, aspnet_Membership.IsApproved, aspnet_Membership.IsLockedOut, 
                      aspnet_Membership.LastLoginDate, aspnet_Membership.LastPasswordChangedDate, aspnet_Membership.LastLockoutDate, 
                      aspnet_Membership.FailedPasswordAttemptCount, [User].FBid,[User].Gender,aspnet_Membership.Email,aspnet_Membership.LoweredEmail,[User].AspnetUserId,[User].IsPartialUser,[User].HouseId,[User].RoleId,[User].ReferralCode
FROM         aspnet_Users INNER JOIN
                      aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId INNER JOIN
                      [User] ON aspnet_Users.UserId = [User].UserId AND aspnet_Users.UserId = [User].CreatedBy AND aspnet_Users.UserId = [User].UpdatedBy INNER JOIN
                      aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN
                      aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId left outer join State S 
						on s.StateId = [User].StateId
                      where aspnet_Roles.LoweredRoleName = @RoleName and aspnet_Membership.Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserSelectAllByRole]    Script Date: 02/27/2015 13:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserSelectAllByRole]
	-- Add the parameters for the stored procedure here
	(@RoleName nvarchar(256))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     [User].FirstName ,[User].MiddleName,[User].LastName, [User].StreetAddress, [User].City, [User].Zip, s.StateName, [User].StateId, [User].DateOfBirth, [User].BestContactNumber, 
                      [User].DriversLicenseNumber, [User].Status, [User].PersonalEmail, [User].CreatedBy, [User].CreatedDate, [User].UpdatedBy, [User].UpdatedDate, 
                      aspnet_Users.UserId, aspnet_Users.UserName, aspnet_Membership.PasswordQuestion, aspnet_Membership.IsApproved, aspnet_Membership.IsLockedOut, 
                      aspnet_Membership.LastLoginDate, aspnet_Membership.LastPasswordChangedDate, aspnet_Membership.LastLockoutDate, 
                      aspnet_Membership.FailedPasswordAttemptCount, [User].FBid,[User].Gender,[User].IsPartialUser,[User].AspnetUserId,[User].HouseId,[User].RoleId,[User].ReferralCode
FROM         aspnet_Users INNER JOIN
                      aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId INNER JOIN
                      [User] ON aspnet_Users.UserId = [User].UserId AND aspnet_Users.UserId = [User].CreatedBy AND aspnet_Users.UserId = [User].UpdatedBy INNER JOIN
                      aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN
                      aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId left outer join State S 
						on s.StateId = [User].StateId
                      where aspnet_Roles.LoweredRoleName = @RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CommentUpdate]    Script Date: 02/27/2015 13:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CommentUpdate] 
    @CommentId int,
    @ContextTypeId int,
    @ContextId uniqueidentifier,
    @CommentText nvarchar(MAX) = NULL,
    @RatingValue decimal(5, 2),
    @IsDeleted bit = NULL,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()

	BEGIN TRAN

	UPDATE [dbo].[Comment]
	SET    [ContextTypeId] = @ContextTypeId, [ContextId] = @ContextId, [CommentText] = @CommentText, [RatingValue] = @RatingValue, [IsDeleted] = @IsDeleted, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [CommentId] = @CommentId
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_CommentSelectAllByContextId]    Script Date: 02/27/2015 13:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CommentSelectAllByContextId]
	@ContextId uniqueidentifier = null,
	@ContextTypeId int 
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue], [CommentTypeId], [FilePath],[IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Comment] 
	WHERE  ([ContextId] = @ContextId OR @ContextId IS NULL) AND (ISNULL(IsDeleted,0) <> 1 AND [ContextTypeId] = @ContextTypeId OR @ContextTypeId IS NULL )
order by [CommentId] DESC
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_CommentSelect]    Script Date: 02/27/2015 13:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CommentSelect] 
    @CommentId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CommentId], [ContextTypeId], [ContextId], [CommentText], [RatingValue],[CommentTypeId], [FilePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[Comment] 
	WHERE  ([CommentId] = @CommentId OR @CommentId IS NULL) 
order by [CommentId] DESC
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_CommentInsert]    Script Date: 02/27/2015 13:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CommentInsert] 
    @ContextTypeId int,
    @ContextId uniqueidentifier,
    @CommentText nvarchar(MAX) = NULL,
    @RatingValue decimal(5, 2),
    @CommentTypeId int,
    @FilePath nvarchar(500),
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	INSERT INTO [dbo].[Comment] 
	([ContextTypeId], [ContextId], [CommentText], [RatingValue], [CommentTypeId], [FilePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	
	SELECT @ContextTypeId, @ContextId, @CommentText, @RatingValue,@CommentTypeId, @FilePath, @IsDeleted, @CreatedBy, @CreatedDate, @CreatedBy, @CreatedDate
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_CommentDelete]    Script Date: 02/27/2015 13:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CommentDelete] 
    @CommentId int,
	@UpdatedBy uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Comment]
	SET    [IsDeleted] = 1, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = GETUTCDATE()
	WHERE  [CommentId] = @CommentId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_aspnet_RolesSelectByRoleName]    Script Date: 02/27/2015 13:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[usp_aspnet_RolesSelectByRoleName] 
    @RoleName nvarchar(256)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ApplicationId]
      ,[RoleId]
      ,[RoleName]
      ,[LoweredRoleName]
      ,[Description]
  FROM [dbo].[aspnet_Roles]
	WHERE  ([RoleName] = @RoleName OR @RoleName IS NULL) 

	COMMIT
GO
/****** Object:  Table [dbo].[OptionItem]    Script Date: 02/27/2015 13:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OptionItem](
	[OptionItemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[IsDeleted] [nchar](10) NULL,
	[OptionId] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OptionItem] PRIMARY KEY CLUSTERED 
(
	[OptionItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionUpdate]    Script Date: 02/27/2015 13:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionUpdate] 
    @OptionId int,
    @Name nvarchar(50) = NULL,
    @Description nvarchar(150) = NULL,
    @OptionCategoryId int = NULL,
    @ParentOptionId int = NULL,
    @IsDeleted bit = NULL,
    @IsMultiSelect bit = NULL,
    @Points int = null,
    @OptionId_ int output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Option]
	SET		[Name] = @Name, 
			[Description] = @Description, 
			[OptionCategoryId] = @OptionCategoryId, 
			[ParentOptionId] = @ParentOptionId, 
			[IsDeleted] = @IsDeleted, 
			[IsMultiSelect] = @IsMultiSelect,
			[Points] = @Points
	WHERE  [OptionId] = @OptionId
	
	set @OptionId_ = @OptionId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionSelectByIsMultiSelect]    Script Date: 02/27/2015 13:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionSelectByIsMultiSelect] 
@IsMultiSelect bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted],[IsMultiSelect] 
	FROM   [dbo].[Option] 
	WHERE  ([IsMultiSelect] = @IsMultiSelect)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionSelectAllByOptionCategoryId]    Script Date: 02/27/2015 13:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionSelectAllByOptionCategoryId] 
   @OptionCategoryId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted] , [IsMultiSelect]
	FROM   [dbo].[Option] 
	WHERE  (isnull(IsDeleted,0) <> 1 ) AND OptionCategoryId = @OptionCategoryId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionSelectAll]    Script Date: 02/27/2015 13:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionSelectAll] 
   
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted] , [IsMultiSelect], Points
	FROM   [dbo].[Option] 
	WHERE  (isnull(IsDeleted,0) <> 1 )-- AND [IsMultiSelect] = 1

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionSelect]    Script Date: 02/27/2015 13:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionSelect] 
    @OptionId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted],[IsMultiSelect] 
	FROM   [dbo].[Option] 
	WHERE  ([OptionId] = @OptionId OR @OptionId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoUpdate]    Script Date: 02/27/2015 13:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoUpdate] 
    @PhotoId uniqueidentifier,
	@FileName nvarchar(max),
	@FilePath nvarchar(max),
    @ContextId uniqueidentifier,
    @ContextSubId uniqueidentifier,
	@Description nvarchar(max),
    @ContextTypeId int,
    @ContextSubTypeId int,
    @PhotoCategoryId int,
    @UpdatedBy uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	set @UpdatedDate = GETUTCDATE()

	BEGIN TRAN

	UPDATE [dbo].[Photo]
   SET 
      [FileName] = @FileName
      ,[Caption] = @FileName
      ,[Description] = @Description
      ,[FilePath] = @FilePath
      ,[UpdatedBy] = @UpdatedBy
      ,[UpdatedDate] = @UpdatedDate
      ,[ContextTypeId] = @ContextTypeId
      ,[ContextSubTypeId] = @ContextSubTypeId
      ,[ContextId] = @ContextId
      ,[ContextSubId] = @ContextSubId
      ,[PhotoCategoryId] = @PhotoCategoryId
 WHERE [PhotoId] = @PhotoId
	
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoSelectAllByContextSubId]    Script Date: 02/27/2015 13:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoSelectAllByContextSubId]
	@ContextId uniqueidentifier = null,
	@ContextSubId uniqueidentifier = null,
	@PhotoCategoryId int = null,
	@ContextSubTypeId int = null
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT  [PhotoId]
      ,[FileName]
      ,[Caption]
      ,[Description]
      ,[FilePath]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[ContextTypeId]
      ,[ContextSubTypeId]
      ,[ContextId]
      ,[ContextSubId]
      ,[PhotoCategoryId]
  FROM [dbo].[Photo]
	WHERE  ([ContextId] = @ContextId OR @ContextId IS NULL) AND ( [PhotoCategoryId] = @PhotoCategoryId OR @PhotoCategoryId IS NULL ) AND 
			([ContextSubTypeId] = @ContextSubTypeId OR @ContextSubTypeId IS NULL) AND ( [ContextSubId] = @ContextSubId OR @ContextSubId IS NULL )
	
	order by [CreatedDate] ASC

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoSelectAllByContextId]    Script Date: 02/27/2015 13:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoSelectAllByContextId]
	@ContextId uniqueidentifier = null,
	@PhotoCategoryId int = null
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT  [PhotoId]
      ,[FileName]
      ,[Caption]
      ,[Description]
      ,[FilePath]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[ContextTypeId]
      ,[ContextSubTypeId]
      ,[ContextId]
      ,[ContextSubId]
      ,[PhotoCategoryId]
  FROM [dbo].[Photo]
	WHERE  ([ContextId] = @ContextId OR @ContextId IS NULL) AND ( [PhotoCategoryId] = @PhotoCategoryId OR @PhotoCategoryId IS NULL )
	
	order by [CreatedDate] ASC

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoSelectAll]    Script Date: 02/27/2015 13:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoSelectAll] 
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT  [PhotoId]
      ,[FileName]
      ,[Caption]
      ,[Description]
      ,[FilePath]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[ContextTypeId]
      ,[ContextSubTypeId]
      ,[ContextId]
      ,[ContextSubId]
      ,[PhotoCategoryId]
  FROM [dbo].[Photo]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoSelect]    Script Date: 02/27/2015 13:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoSelect] 
    @PhotoId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT  [PhotoId]
      ,[FileName]
      ,[Caption]
      ,[Description]
      ,[FilePath]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[ContextTypeId]
      ,[ContextSubTypeId]
      ,[ContextId]
      ,[ContextSubId]
      ,[PhotoCategoryId]
  FROM [dbo].[Photo]
	WHERE  ([PhotoId] = @PhotoId OR @PhotoId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoInsert]    Script Date: 02/27/2015 13:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoInsert] 
	@PhotoId uniqueidentifier,
	@FileName nvarchar(max),
	@FilePath nvarchar(max),
    @ContextId uniqueidentifier,
    @ContextSubId uniqueidentifier,
	@Description nvarchar(max),
    @ContextTypeId int,
    @ContextSubTypeId int,
    @PhotoCategoryId int,
    @CreatedBy uniqueidentifier,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @CreatedDate = GETUTCDATE()
	INSERT INTO dbo.Photo  
		(PhotoId, 
		[FileName], 
		Caption, 
		[Description], 
		FilePath, 
		CreatedBy, 
		CreatedDate, 
		UpdatedBy, 
		UpdatedDate, 
		ContextTypeId, 
		ContextSubTypeId, 
		ContextId, 
		ContextSubId,
		PhotoCategoryId)
	SELECT 
		@PhotoId,
		@FileName,
		@FileName,
		@Description,
		@FilePath,
		
		@CreatedBy,
		GETUTCDATE(),
		@CreatedBy,
		GETUTCDATE(),
		@ContextTypeId,
		@ContextSubTypeId,
		@ContextId,
		@ContextSubId,
		@PhotoCategoryId
		
		
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoDelete]    Script Date: 02/27/2015 13:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PhotoDelete] 
    @PhotoId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE FROM [dbo].[Photo]
     WHERE PhotoId = @PhotoId


	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemSelectAllByOptionCategoryId]    Script Date: 02/27/2015 13:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemSelectAllByOptionCategoryId] 

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT 
		[OptionId], 
		[Name], 
		[Description], 
		[OptionCategoryId], 
		[ParentOptionId], 
		[IsDeleted], 
		[IsMultiSelect]
	FROM   [dbo].[Option] 
	WHERE  (isnull(IsDeleted,0) <> 1 )

	COMMIT
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/27/2015 13:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/27/2015 13:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionInsert]    Script Date: 02/27/2015 13:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionInsert] 
    @Name nvarchar(50) = NULL,
    @Description nvarchar(150) = NULL,
    @OptionCategoryId int = NULL,
    @ParentOptionId int = NULL,
    @IsDeleted bit = NULL,
    @IsMultiSelect bit = NULL,
    @Points int = null,
    @OptionId int output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Option] ([Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted],[IsMultiSelect], [Points])
	SELECT @Name, @Description, @OptionCategoryId, @ParentOptionId, @IsDeleted,@IsMultiSelect,@Points
	
	set @OptionId = SCOPE_IDENTITY()
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionDelete]    Script Date: 02/27/2015 13:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionDelete] 
    @OptionId int,
     @IsDeleted bit = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Option]
	SET [IsDeleted] = @IsDeleted
	WHERE  [OptionId] = @OptionId

	COMMIT
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/27/2015 13:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/27/2015 13:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/27/2015 13:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/27/2015 13:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/27/2015 13:22:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/27/2015 13:22:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemSelectAll]    Script Date: 02/27/2015 13:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemSelectAll] 

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionItemId], [Name], [Description], [IsDeleted], [OptionId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[OptionItem] 
	WHERE  (isnull(IsDeleted,0) <> 1 )

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemSelect]    Script Date: 02/27/2015 13:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemSelect] 
    @OptionItemId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [OptionItemId], [Name], [Description], [IsDeleted], [OptionId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[OptionItem] 
	WHERE  ([OptionItemId] = @OptionItemId OR @OptionItemId IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemInsert]    Script Date: 02/27/2015 13:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemInsert] 
    @Name nvarchar(50) = NULL,
    @Description nvarchar(50) = NULL,
    @IsDeleted nchar(10) = NULL,
    @OptionId int,
    @CreatedBy uniqueidentifier,
    @OptionItemId int output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	
	INSERT INTO [dbo].[OptionItem] ([Name], [Description], [IsDeleted], [OptionId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
	SELECT @Name, @Description, @IsDeleted, @OptionId, @CreatedBy, GETUTCDATE(), @CreatedBy, GETUTCDATE()
	
	set @OptionItemId = SCOPE_IDENTITY()
	-- Begin Return Select <- do not remove
	--SELECT [OptionItemId], [Name], [Description], [IsDeleted], [OptionId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[OptionItem]
	--WHERE  [OptionItemId] = SCOPE_IDENTITY()
	
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemDelete]    Script Date: 02/27/2015 13:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemDelete] 
    @OptionItemId int,
     @IsDeleted nchar(10) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[OptionItem]
	set [IsDeleted] = @IsDeleted
	WHERE  [OptionItemId] = @OptionItemId

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_OptionItemUpdate]    Script Date: 02/27/2015 13:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_OptionItemUpdate] 
    @OptionItemId int,
    @Name nvarchar(50) = NULL,
    @Description nvarchar(50) = NULL,
    @IsDeleted nchar(10) = NULL,
    @OptionId int,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[OptionItem]
	SET    [Name] = @Name, [Description] = @Description, [IsDeleted] = @IsDeleted, [OptionId] = @OptionId, [CreatedBy] = @UpdatedBy, [CreatedDate] = @UpdatedDate, [UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate
	WHERE  [OptionItemId] = @OptionItemId
	
	-- Begin Return Select <- do not remove
	--SELECT [OptionItemId], [Name], [Description], [IsDeleted], [OptionId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]
	--FROM   [dbo].[OptionItem]
	--WHERE  [OptionItemId] = @OptionItemId	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/27/2015 13:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/27/2015 13:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/27/2015 13:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/27/2015 13:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/27/2015 13:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/27/2015 13:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/27/2015 13:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/27/2015 13:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/27/2015 13:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/27/2015 13:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/27/2015 13:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/27/2015 13:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/27/2015 13:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/27/2015 13:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/27/2015 13:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/27/2015 13:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/27/2015 13:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/27/2015 13:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/27/2015 13:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/27/2015 13:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/27/2015 13:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/27/2015 13:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/27/2015 13:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/27/2015 13:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/27/2015 13:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/27/2015 13:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/27/2015 13:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/27/2015 13:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/27/2015 13:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/27/2015 13:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/27/2015 13:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/27/2015 13:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/27/2015 13:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/27/2015 13:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/27/2015 13:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/27/2015 13:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/27/2015 13:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/27/2015 13:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/27/2015 13:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/27/2015 13:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/27/2015 13:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/27/2015 13:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__6A30C649]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__6B24EA82]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__6C190EBB]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6D0D32F4]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__6E01572D]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__6EF57B66]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__6FE99F9F]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__70DDC3D8]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF_Comment_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Fraternity_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Fraternity] ADD  CONSTRAINT [DF_Fraternity_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_GreakOrganization_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[GreakOrganization] ADD  CONSTRAINT [DF_GreakOrganization_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_GreekHonorSocities_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[GreekHonorSocities] ADD  CONSTRAINT [DF_GreekHonorSocities_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Major_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Major] ADD  CONSTRAINT [DF_Major_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Oraganization_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Oraganization] ADD  CONSTRAINT [DF_Oraganization_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Soroity_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Soroity] ADD  CONSTRAINT [DF_Soroity_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_State_IsDeleted]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__71D1E811]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__72C60C4A]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__73BA3083]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__74AE54BC]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__75A278F5]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__76969D2E]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__778AC167]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__787EE5A0]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__797309D9]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__7A672E12]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__7B5B524B]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK_Comment_CommentType]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_CommentType] FOREIGN KEY([CommentTypeId])
REFERENCES [dbo].[CommentType] ([CommentTypeId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_CommentType]
GO
/****** Object:  ForeignKey [FK_Comment_ContextType]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_ContextType] FOREIGN KEY([ContextTypeId])
REFERENCES [dbo].[ContextType] ([ContextTypeId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_ContextType]
GO
/****** Object:  ForeignKey [FK_House_Landlord]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Landlord] FOREIGN KEY([LandlordId])
REFERENCES [dbo].[Landlord] ([LandlordId])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Landlord]
GO
/****** Object:  ForeignKey [FK_HouseOption_House]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[HouseOption]  WITH CHECK ADD  CONSTRAINT [FK_HouseOption_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([HouseId])
GO
ALTER TABLE [dbo].[HouseOption] CHECK CONSTRAINT [FK_HouseOption_House]
GO
/****** Object:  ForeignKey [FK_HouseOption_Option]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[HouseOption]  WITH CHECK ADD  CONSTRAINT [FK_HouseOption_Option] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Option] ([OptionId])
GO
ALTER TABLE [dbo].[HouseOption] CHECK CONSTRAINT [FK_HouseOption_Option]
GO
/****** Object:  ForeignKey [FK_Landlord_User]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Landlord]  WITH CHECK ADD  CONSTRAINT [FK_Landlord_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Landlord] CHECK CONSTRAINT [FK_Landlord_User]
GO
/****** Object:  ForeignKey [FK_Option_OptionCategory]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_Option_OptionCategory] FOREIGN KEY([OptionCategoryId])
REFERENCES [dbo].[OptionCategory] ([OptionCategoryId])
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_Option_OptionCategory]
GO
/****** Object:  ForeignKey [FK_OptionItem_Option]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[OptionItem]  WITH CHECK ADD  CONSTRAINT [FK_OptionItem_Option] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Option] ([OptionId])
GO
ALTER TABLE [dbo].[OptionItem] CHECK CONSTRAINT [FK_OptionItem_Option]
GO
/****** Object:  ForeignKey [FK_PartialHouse_PartialUser]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[PartialHouse]  WITH CHECK ADD  CONSTRAINT [FK_PartialHouse_PartialUser] FOREIGN KEY([PartialUserId])
REFERENCES [dbo].[PartialUser] ([PartialUserId])
GO
ALTER TABLE [dbo].[PartialHouse] CHECK CONSTRAINT [FK_PartialHouse_PartialUser]
GO
/****** Object:  ForeignKey [FK_PartialUser_PartialHouse]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[PartialUser]  WITH CHECK ADD  CONSTRAINT [FK_PartialUser_PartialHouse] FOREIGN KEY([PartialHouseId])
REFERENCES [dbo].[PartialHouse] ([PartialHouseId])
GO
ALTER TABLE [dbo].[PartialUser] CHECK CONSTRAINT [FK_PartialUser_PartialHouse]
GO
/****** Object:  ForeignKey [FK_Photo_ContextSubType]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_ContextSubType] FOREIGN KEY([ContextSubTypeId])
REFERENCES [dbo].[ContextSubType] ([ContextSubTypeId])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_ContextSubType]
GO
/****** Object:  ForeignKey [FK_Photo_ContextType]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_ContextType] FOREIGN KEY([ContextTypeId])
REFERENCES [dbo].[ContextType] ([ContextTypeId])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_ContextType]
GO
/****** Object:  ForeignKey [FK_Photo_PhotoCategory]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_PhotoCategory] FOREIGN KEY([PhotoCategoryId])
REFERENCES [dbo].[PhotoCategory] ([PhotoCategoryId])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_PhotoCategory]
GO
/****** Object:  ForeignKey [FK_Spotlight_Fraternity]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_Fraternity] FOREIGN KEY([FraternityId])
REFERENCES [dbo].[Fraternity] ([FraternityId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_Fraternity]
GO
/****** Object:  ForeignKey [FK_Spotlight_GreakOrganization]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_GreakOrganization] FOREIGN KEY([GreakOrganizationId])
REFERENCES [dbo].[GreakOrganization] ([GreakOrganizationId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_GreakOrganization]
GO
/****** Object:  ForeignKey [FK_Spotlight_GreekHonorSocities]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_GreekHonorSocities] FOREIGN KEY([GreekHonorSocitiesId])
REFERENCES [dbo].[GreekHonorSocities] ([GreekHonorSocitiesId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_GreekHonorSocities]
GO
/****** Object:  ForeignKey [FK_Spotlight_Oraganization]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_Oraganization] FOREIGN KEY([OraganizationId])
REFERENCES [dbo].[Oraganization] ([OraganizationId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_Oraganization]
GO
/****** Object:  ForeignKey [FK_Spotlight_Soroity]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_Soroity] FOREIGN KEY([SoroityId])
REFERENCES [dbo].[Soroity] ([SoroityId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_Soroity]
GO
/****** Object:  ForeignKey [FK_Spotlight_User]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Spotlight]  WITH CHECK ADD  CONSTRAINT [FK_Spotlight_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Spotlight] CHECK CONSTRAINT [FK_Spotlight_User]
GO
/****** Object:  ForeignKey [FK_Student_Major]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([MajorId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Major]
GO
/****** Object:  ForeignKey [FK_Student_School]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_School] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[School] ([SchoolId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_School]
GO
/****** Object:  ForeignKey [FK_Student_User]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
/****** Object:  ForeignKey [FK_StudentHouse_House]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[StudentHouse]  WITH CHECK ADD  CONSTRAINT [FK_StudentHouse_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([HouseId])
GO
ALTER TABLE [dbo].[StudentHouse] CHECK CONSTRAINT [FK_StudentHouse_House]
GO
/****** Object:  ForeignKey [FK_StudentHouse_Student]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[StudentHouse]  WITH CHECK ADD  CONSTRAINT [FK_StudentHouse_Student] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[StudentHouse] CHECK CONSTRAINT [FK_StudentHouse_Student]
GO
/****** Object:  ForeignKey [FK_StudentHouseLeave_House]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[StudentHouseLeave]  WITH CHECK ADD  CONSTRAINT [FK_StudentHouseLeave_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([HouseId])
GO
ALTER TABLE [dbo].[StudentHouseLeave] CHECK CONSTRAINT [FK_StudentHouseLeave_House]
GO
/****** Object:  ForeignKey [FK_StudentHouseLeave_User]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[StudentHouseLeave]  WITH CHECK ADD  CONSTRAINT [FK_StudentHouseLeave_User] FOREIGN KEY([RequestBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[StudentHouseLeave] CHECK CONSTRAINT [FK_StudentHouseLeave_User]
GO
/****** Object:  ForeignKey [FK_StudentHouseLeave_User1]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[StudentHouseLeave]  WITH CHECK ADD  CONSTRAINT [FK_StudentHouseLeave_User1] FOREIGN KEY([RequestTo])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[StudentHouseLeave] CHECK CONSTRAINT [FK_StudentHouseLeave_User1]
GO
/****** Object:  ForeignKey [FK_User_House]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([HouseId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_House]
GO
/****** Object:  ForeignKey [FK_User_State]    Script Date: 02/27/2015 13:22:13 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_State]
GO
