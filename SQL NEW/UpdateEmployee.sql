USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 05-08-2013 10.03.45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[UpdateEmployee]
	-- Add the parameters for the stored procedure here
@DEPTCODE INT ,
@DEPTNAME VARCHAR(10),
@NAME varchar(10),
@EMPCODE int  ,
@MANCODE int,
@SALARY decimal

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN
	UPDATE DEPARTMENT 
	SET DEPT_CODE=@DEPTCODE ,
	DEPT_NAME=@DEPTNAME
	FROM EMPLOYEE
	WHERE EMPLOYEE.DeptId=DEPARTMENT.DEPT_CODE

	UPDATE EMPLOYEE 
	SET 
	Name=@NAME ,
	EmployeeCode=@EMPCODE  ,ManagerCode=@MANCODE,DeptId=@DEPTCODE,Salary=@SALARY 
	FROM DEPARTMENT
	WHERE EMPLOYEE.DeptId=DEPARTMENT.DEPT_CODE	
END
END
