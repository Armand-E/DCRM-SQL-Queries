/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ModifiedByName]
      ,[Isp_name]
       ,[Isp_staffId]
     
      ,[CreatedOn]
      ,[statecode]
      ,[statuscode]
            
      
  FROM [Rennies_Bank_MSCRM].[dbo].[Isp_staff]where Isp_name like 'CFX%'