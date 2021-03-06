IF OBJECT_ID('usp_LandlordUpdate') IS NOT NULL
	DROP PROC [dbo].[usp_LandlordUpdate]
GO

CREATE PROC [dbo].[usp_LandlordUpdate] 
    @LandlordId uniqueidentifier,
    @UserId uniqueidentifier,
    @LandlordName nvarchar(256) = NULL,
    @LandlordTypeId int = null,
    @IsDeleted bit = NULL,
    @UpdatedBy uniqueidentifier,
    @UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	SET @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[Landlord]
	SET    [LandlordId] = @LandlordId,
	 [UserId] = @UserId,
	 [LandlordName] = @LandlordName,
	 [IsDeleted] = @IsDeleted,
	 [UpdatedBy] = @UpdatedBy,
	 [UpdatedDate] = @UpdatedDate,
	 [LandlordTypeId] = @LandlordTypeId
	WHERE  [LandlordId] = @LandlordId
	
	COMMIT

