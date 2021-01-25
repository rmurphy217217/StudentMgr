USE [StudentMgt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Add_student]    Script Date: 1/25/2021 10:59:51 AM ******/
DROP PROCEDURE [dbo].[sp_Add_student]
GO

/****** Object:  StoredProcedure [dbo].[sp_Add_student]    Script Date: 1/25/2021 10:59:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_Add_student]

@FirstName varchar(100),
@LastName varchar(100),
@Email varchar(100)

AS
BEGIN

INSERT INTO [dbo].[Student]
           ([First Name]
           ,[Last Name]
           ,[Email])
     VALUES
           (@FirstName
           ,@LastName
           ,@Email)


end


GO

USE [StudentMgt]
GO

/****** Object:  StoredProcedure [dbo].[sp_AddEnrollment]    Script Date: 1/25/2021 11:00:03 AM ******/
DROP PROCEDURE [dbo].[sp_AddEnrollment]
GO

/****** Object:  StoredProcedure [dbo].[sp_AddEnrollment]    Script Date: 1/25/2021 11:00:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[sp_AddEnrollment]

@StudentId int,
@CourseId int


AS
BEGIN


INSERT INTO [dbo].[Enrollment]
           ([StudentId]
           ,[CourseId])
     VALUES
           (@StudentId
           ,@CourseId)




end
GO

USE [StudentMgt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Enrollment]    Script Date: 1/25/2021 11:00:13 AM ******/
DROP PROCEDURE [dbo].[sp_Enrollment]
GO

/****** Object:  StoredProcedure [dbo].[sp_Enrollment]    Script Date: 1/25/2021 11:00:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Enrollment]

@StudentId int


AS
BEGIN


SELECT Course.[Course Name], Course.[Content] FROM  Course INNER JOIN Enrollment ON Course.Id = Enrollment.CourseId
WHERE  Enrollment.StudentId = @StudentId




end
GO

USE [StudentMgt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Update_student]    Script Date: 1/25/2021 11:00:21 AM ******/
DROP PROCEDURE [dbo].[sp_Update_student]
GO

/****** Object:  StoredProcedure [dbo].[sp_Update_student]    Script Date: 1/25/2021 11:00:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Update_student]

@Id int,
@FirstName varchar(100),
@LastName varchar(100),
@Email varchar(100)

AS
BEGIN


UPDATE [dbo].[Student]
   SET [First Name] = @FirstName
      ,[Last Name] = @LastName
      ,[Email] = @Email
 WHERE Id = @Id




end
GO





