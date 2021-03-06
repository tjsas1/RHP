
/****** Object:  StoredProcedure [dbo].[usp_SurveyInsert]    Script Date: 09/06/2015 23:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[usp_SurveyInsert] 
	@MyUniversity nvarchar(250),
	@UniversityName nvarchar(250),
	@UniversityAddress nvarchar(250),
	@TypeOfResidence nvarchar(250),
	@TypeOfResidenceOption nvarchar(250),
	@NameOfResidence nvarchar(250),
	@AddressOfResidence nvarchar(250),
	@Email nvarchar(250),
	@PropertyOwnerComment nvarchar(max)

AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Survey]
	(MyUniversity, UniversityName, UniversityAddress, TypeOfResidence, TypeOfResidenceOption, NameOfResidence, AddressOfResidence, Email, CreatedDate,PropertyOwnerComment)
	
	SELECT @MyUniversity, @UniversityName, @UniversityAddress, @TypeOfResidence, @TypeOfResidenceOption, @NameOfResidence, @AddressOfResidence, @Email, GETUTCDATE(),@PropertyOwnerComment
               
	COMMIT

