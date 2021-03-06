/*
   Monday, April 27, 20153:34:00 AM
   User: centrilla
   Server: centrilladb2008.czegvmfnsctg.ap-southeast-1.rds.amazonaws.com,1433
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
ALTER TABLE dbo.BaseHouseRoom SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.StudentHouse ADD
	BaseHouseRoomId uniqueidentifier NULL
GO
ALTER TABLE dbo.StudentHouse ADD CONSTRAINT
	FK_StudentHouse_BaseHouseRoom FOREIGN KEY
	(
	BaseHouseRoomId
	) REFERENCES dbo.BaseHouseRoom
	(
	BaseHouseRoomId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'CONTROL') as Contr_Per 