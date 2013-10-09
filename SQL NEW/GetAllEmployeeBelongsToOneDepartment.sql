-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllEmployeeBelongsToOneDepartment]
	-- Add the parameters for the stored procedure here
	@Dept_Name varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DEPT_NAME, Name,EmployeeCode,ManagerCode,DeptId,Salary from EMPLOYEE,DEPARTMENT
	where DEPT_NAME=@Dept_Name AND DEPT_CODE=DeptId
END
GO
--exec GetAllEmployeeBelongsToOneDepartment ise