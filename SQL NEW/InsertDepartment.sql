USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 05-08-2013 10.02.30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsertDepartment]
	-- Add the parameters for the stored procedure here
@DEPTCODE INT ,
@DEPTNAME VARCHAR(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN
	INSERT INTO DEPARTMENT(DEPT_CODE ,DEPT_NAME)
	VALUES(@DEPTCODE ,@DEPTNAME)
	END
END
