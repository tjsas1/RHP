IF OBJECT_ID('usp_BaseHouseSelectByHouseTypeId') IS NOT NULL
	DROP PROC dbo.usp_BaseHouseSelectByHouseTypeId
	PRINT 'Dropping proc usp_BaseHouseSelectByHouseTypeId'
GO

create PROC dbo.usp_BaseHouseSelectByHouseTypeId
    @HouseTypeId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	/*Base house*/
	SELECT 
		BaseHouseId, 
		ContactName, 
		HouseTypeId, 
		Name, 
		[Address], 
		City,
		[State],
		Zip,
		PhoneNumber, 
		ManagerEmail, 
		AssistantManagerEmail, 
		PropertyManagementCompanyName, 
		WebSiteURL, 
		CreatedBy, 
		CreatedDate, 
		UpdatedBy, 
		UpdatedDate,
		LandlordId
	FROM   
		[dbo].[BaseHouse]
	WHERE  (HouseTypeId = @HouseTypeId)
	
	/*Base house rooms*/
	SELECT 
		BHR.BaseHouseRoomId, 
		BHR.BaseHouseId, 
		BHR.RoomName, 
		BHR.Description, 
		BHR.CreatedBy, 
		BHR.CreatedDate
	FROM   
		dbo.BaseHouseRoom BHR
		inner join BaseHouse BH on BH.BaseHouseId = BHR.BaseHouseId
	WHERE  (BH.HouseTypeId= @HouseTypeId)

	COMMIT

