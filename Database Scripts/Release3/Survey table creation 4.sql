/*
   Sunday, September 06, 201511:00:06 PM
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
ALTER TABLE dbo.Survey ADD
	PropertyOwnerComment nvarchar(MAX) NULL
GO
ALTER TABLE dbo.Survey SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Survey', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Survey', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Survey', 'Object', 'CONTROL') as Contr_Per 