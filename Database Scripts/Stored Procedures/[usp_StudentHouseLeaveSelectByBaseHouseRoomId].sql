IF OBJECT_ID('usp_StudentHouseLeaveSelectByBaseHouseRoomId') IS NOT NULL
	DROP PROC [dbo].[usp_StudentHouseLeaveSelectByBaseHouseRoomId]
GO

CREATE PROC [dbo].[usp_StudentHouseLeaveSelectByBaseHouseRoomId] 
    @BaseHouseRoomId uniqueidentifier,
    @RequestTo uniqueidentifier

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	SELECT [RequestID]
      ,[RequestBy]
      ,[RequestTo]
      ,[RequestDate]
      ,[status]
      ,[ResponseDate]
      ,[HouseId]
      ,[BaseHouseRoomId]
	FROM [dbo].[StudentHouseLeave]
	where [RequestTo] = @RequestTo and  [BaseHouseRoomId]= @BaseHouseRoomId and [status] = 0
	
	
	COMMIT

