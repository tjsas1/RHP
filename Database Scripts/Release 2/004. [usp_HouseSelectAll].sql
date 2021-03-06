/****** Object:  StoredProcedure [dbo].[usp_HouseSelectAll]    Script Date: 03/29/2015 16:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[usp_HouseSelectAll] 

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT      House.HouseId, House.LandlordId, House.StreetAddress, House.City, (SELECT [StateName] FROM [dbo].[State] where [StateId] =  [dbo].[House] .[StateId]) AS state , House.Zip, House.YearHomeBuild, House.BedRooms, 
                      House.BathRooms, House.LotSquareFootage, House.TotalSquareFootage, House.UtilitiesIncludedInRent, House.PropertyImagePath, House.IsDeleted, 
                      House.CreatedBy, House.CreatedDate, House.UpdatedBy, House.UpdatedDate, House.RatingValue, House.Price, Landlord.LandlordName, HouseTypeId
FROM         House INNER JOIN
                      Landlord ON House.LandlordId = Landlord.LandlordId
WHERE  (isnull(House.IsDeleted,0) <> 1 )
	COMMIT

