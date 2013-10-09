USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[JoinTable]    Script Date: 05-08-2013 10.03.14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[JoinTable]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DEPT_CODE,DEPT_NAME, Name FROM EMPLOYEE,DEPARTMENT
	Where EMPLOYEE.DeptId=DEPARTMENT.DEPT_CODE
	GROUP BY DEPT_CODE,Name,DEPT_NAME
	
END
