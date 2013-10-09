USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 05-08-2013 10.02.54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsertEmployee]
	-- Add the parameters for the stored procedure here
	
--exec [dbo].[InsertEmployee] 11 ,test,
--12 ,null,
--23232

@NAME varchar(10),
@EMPCODE int ,
@MANCODE int,
@DEPTID INT ,
@SALARY decimal

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	BEGIN
	INSERT INTO EMPLOYEE(Name ,EmployeeCode  ,ManagerCode,DeptId,Salary )
	VALUES(@NAME ,@EMPCODE  ,@MANCODE ,@DEPTID,@SALARY)
END
END
--exec [dbo].[InsertEmployee] 100,mokim,200,300,7000.00