IF OBJECT_ID('usp_BaseHouseUpdate') IS NOT NULL
	DROP PROC [dbo].[usp_BaseHouseUpdate]
GO

CREATE PROC [dbo].[usp_BaseHouseUpdate]
	@BaseHouseId int,
    @LandlordId uniqueidentifier,
    @UpdatedBy nvarchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[BaseHouse]
	SET 
	[LandlordId] = @LandlordId,
	[UpdatedBy] = @UpdatedBy,
	[UpdatedDate] = GETUTCDATE()
	WHERE  [BaseHouseId] = @BaseHouseId

COMMIT

