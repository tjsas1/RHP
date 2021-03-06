IF OBJECT_ID('usp_UserSelectLandlordByBaseHouseRoomId') IS NOT NULL
	DROP PROC [dbo].[usp_UserSelectLandlordByBaseHouseRoomId]
GO

CREATE PROC [dbo].[usp_UserSelectLandlordByBaseHouseRoomId] 
    @BaseHouseRoomId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN
	
	declare @LandlordUserId uniqueidentifier

	SELECT @LandlordUserId = Landlord.LandlordId
		FROM        
                      House INNER JOIN  Landlord ON House.LandlordId = Landlord.LandlordId
		WHERE  ([House].BaseHouseRoomId = @BaseHouseRoomId OR @BaseHouseRoomId IS NULL) 
	
	SELECT     @LandlordUserId As LandlordId,UserId , AspnetUserId, IsPartialUser, IsFBUser, FBAccessToken, FBUrl, FBTokenTimeStamp, FBProfilePictureURL, StreetAddress, City, StateId, Zip, 
                      DateOfBirth, BestContactNumber, DriversLicenseNumber, Status, PersonalEmail, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, FBid, 
                      Gender, FirstName, MiddleName, LastName, HouseId, RoleId,ReferralCode
	FROM         [User]
	WHERE  ([User].[UserId] = @LandlordUserId OR @LandlordUserId IS NULL) 
	

	COMMIT

