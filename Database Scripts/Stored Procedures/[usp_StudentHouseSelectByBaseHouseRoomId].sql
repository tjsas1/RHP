IF OBJECT_ID('usp_StudentHouseSelectByBaseHouseRoomId') IS NOT NULL
	DROP PROC [dbo].[usp_StudentHouseSelectByBaseHouseRoomId]
GO

CREATE PROC [dbo].[usp_StudentHouseSelectByBaseHouseRoomId]
    @BaseHouseRoomId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [StudentHouseId]
      ,[HouseId]
      ,[UserId]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[BaseHouseRoomId]      
  FROM [dbo].[StudentHouse]
	WHERE  (BaseHouseRoomId = @BaseHouseRoomId OR @BaseHouseRoomId IS NULL) 

	COMMIT

