USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeByEmployeeCode]    Script Date: 05-08-2013 10.02.06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--GetEmployeeByEmployeeCode 12
ALTER PROCEDURE [dbo].[GetEmployeeByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@empcode int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM DEPARTMENT, EMPLOYEE
	WHERE EmployeeCode=@empcode AND EMPLOYEE.DeptID=DEPARTMENT.DEPT_CODE
END
