USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployeeByEmployeeCode]    Script Date: 05-08-2013 10.00.09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[DeleteEmployeeByEmployeeCode]  
	-- Add the parameters for the stored procedure here
	
	@empcode INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM EMPLOYEE
	
	WHERE EmployeeCode=@empcode
	

END
