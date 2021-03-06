/*
   Sunday, April 26, 20155:39:46 AM
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
ALTER TABLE dbo.Landlord SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BaseHouse ADD CONSTRAINT
	FK_BaseHouse_Landlord FOREIGN KEY
	(
	LandlordId
	) REFERENCES dbo.Landlord
	(
	LandlordId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.BaseHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'CONTROL') as Contr_Per 