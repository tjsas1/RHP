/*
   Sunday, March 29, 201511:53:05 AM
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
CREATE TABLE dbo.HouseType
	(
	HouseTypeId int NOT NULL,
	Name nvarchar(50) NOT NULL,
	Description nvarchar(50) NULL,
	CreatedBy nvarchar(50) NULL,
	CreatedDate datetime NULL,
	UpdatedBy nvarchar(50) NULL,
	UpdatedDate datetime NULL
	)  ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'Id has to be added manually as this is a lookup table only'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'HouseType', N'COLUMN', N'HouseTypeId'
GO
ALTER TABLE dbo.HouseType ADD CONSTRAINT
	PK_HouseType PRIMARY KEY CLUSTERED 
	(
	HouseTypeId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.HouseType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HouseType', 'Object', 'CONTROL') as Contr_Per 