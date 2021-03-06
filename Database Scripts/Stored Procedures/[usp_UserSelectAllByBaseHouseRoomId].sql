-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

IF OBJECT_ID('usp_UserSelectAllByBaseHouseRoomId') IS NOT NULL
	DROP PROC [dbo].[usp_UserSelectAllByBaseHouseRoomId]
	PRINT 'Dropping proc usp_UserSelectAllByBaseHouseRoomId'
GO



CREATE PROCEDURE [dbo].[usp_UserSelectAllByBaseHouseRoomId]
	(@RoleName nvarchar(256),
	@BaseHouseRoomId uniqueidentifier)
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

                      where [User].[BaseHouseRoomId] = @BaseHouseRoomId AND  aspnet_Roles.LoweredRoleName = @RoleName 
END

