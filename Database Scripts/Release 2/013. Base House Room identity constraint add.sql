/*
   Saturday, April 18, 201512:17:57 PM
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
ALTER TABLE dbo.BaseHouseRoom
	DROP CONSTRAINT FK_BaseHouseRoom_BaseHouse
GO
ALTER TABLE dbo.BaseHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_BaseHouseRoom
	(
	BaseHouseRoomId int NOT NULL IDENTITY (1, 1),
	BaseHouseId int NOT NULL,
	RoomName nvarchar(250) NULL,
	Description nvarchar(250) NULL,
	CreatedBy nvarchar(50) NULL,
	CreatedDate datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_BaseHouseRoom SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_BaseHouseRoom ON
GO
IF EXISTS(SELECT * FROM dbo.BaseHouseRoom)
	 EXEC('INSERT INTO dbo.Tmp_BaseHouseRoom (BaseHouseRoomId, BaseHouseId, RoomName, Description, CreatedBy, CreatedDate)
		SELECT BaseHouseRoomId, BaseHouseId, RoomName, Description, CreatedBy, CreatedDate FROM dbo.BaseHouseRoom WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_BaseHouseRoom OFF
GO
DROP TABLE dbo.BaseHouseRoom
GO
EXECUTE sp_rename N'dbo.Tmp_BaseHouseRoom', N'BaseHouseRoom', 'OBJECT' 
GO
ALTER TABLE dbo.BaseHouseRoom ADD CONSTRAINT
	PK_BaseHouseRoom PRIMARY KEY CLUSTERED 
	(
	BaseHouseRoomId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

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
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'CONTROL') as Contr_Per 