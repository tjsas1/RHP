IF OBJECT_ID('A_CleanDB') IS NOT NULL
	DROP PROC [dbo].[A_CleanDB]
GO


CREATE PROC [dbo].[A_CleanDB]
AS
BEGIN
	-- Add new tables as appropriate
	SET NOCOUNT ON;

	PRINT 'This script must be executed manually if needed after a release!'

	--DELETE FROM [dbo].[aspnet_UsersInRoles] where UserId <> 'cd09fe90-926f-4f47-93f1-bde8b1a63765'
	----DELETE FROM [dbo].[OptionItem]
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
	--UPDATE dbo.BaseHouse SET LandlordId = NULL
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
