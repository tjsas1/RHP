/*
   Saturday, April 18, 20151:14:32 AM
   User: 
   Server: .
   Database: RHP
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.BaseHouse
	DROP CONSTRAINT FK_BaseHouse_HouseType
GO
ALTER TABLE dbo.HouseType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_BaseHouse
	(
	BaseHouseId int NOT NULL IDENTITY (1, 1),
	ContactName nvarchar(100) NOT NULL,
	HouseTypeId int NOT NULL,
	Name nvarchar(250) NOT NULL,
	Address nvarchar(250) NULL,
	PhoneNumber nvarchar(50) NULL,
	ManagerEmail nvarchar(150) NULL,
	AssistantManagerEmail nvarchar(150) NULL,
	PropertyManagementCompanyName nvarchar(150) NULL,
	WebSiteURL nvarchar(500) NULL,
	CreatedBy nvarchar(50) NOT NULL,
	CreatedDate datetime NULL,
	UpdatedBy nvarchar(50) NULL,
	UpdatedDate datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_BaseHouse SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_BaseHouse ON
GO
IF EXISTS(SELECT * FROM dbo.BaseHouse)
	 EXEC('INSERT INTO dbo.Tmp_BaseHouse (BaseHouseId, ContactName, HouseTypeId, Name, Address, PhoneNumber, ManagerEmail, AssistantManagerEmail, PropertyManagementCompanyName, WebSiteURL)
		SELECT BaseHouseId, ContactName, HouseTypeId, Name, Address, PhoneNumber, ManagerEmail, AssistantManagerEmail, PropertyManagementCompanyName, WebSiteURL FROM dbo.BaseHouse WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_BaseHouse OFF
GO
ALTER TABLE dbo.BaseHouseRoom
	DROP CONSTRAINT FK_BaseHouseRoom_BaseHouse
GO
DROP TABLE dbo.BaseHouse
GO
EXECUTE sp_rename N'dbo.Tmp_BaseHouse', N'BaseHouse', 'OBJECT' 
GO
ALTER TABLE dbo.BaseHouse ADD CONSTRAINT
	PK_BaseHouse PRIMARY KEY CLUSTERED 
	(
	BaseHouseId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.BaseHouse ADD CONSTRAINT
	FK_BaseHouse_HouseType FOREIGN KEY
	(
	HouseTypeId
	) REFERENCES dbo.HouseType
	(
	HouseTypeId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BaseHouseRoom ADD CONSTRAINT
	FK_BaseHouseRoom_BaseHouse FOREIGN KEY
	(
	BaseHouseId
	) REFERENCES dbo.BaseHouse
	(
	BaseHouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.BaseHouseRoom SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'CONTROL') as Contr_Per 