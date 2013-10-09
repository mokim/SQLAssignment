USE [Neudesic]
GO
/****** Object:  StoredProcedure [dbo].[Emp_Table]    Script Date: 05-08-2013 10.01.27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Emp_Table]
 AS
 BEGIN
 CREATE TABLE EMPLOYEE
(
[ID] [int] IDENTITY(1,1) NOT NULL FOREIGN KEY(ID) REFERENCES DEPARTMENT(ID) ,
NAME VARCHAR(10),
EmployeeCode INT NOT NULL,
ManagerCode INT NOT NULL,
DeptCode INT NOT NULL,
Salary DECIMAL
)
END
