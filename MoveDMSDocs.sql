 --Database server: jhbh-srv-dms01 Database: Bidvest_DMS_Default

--update [Bidvest_DMS_Default].[dbo].[Corporate Administration_Documents]
--set [Value_CRM ID] = '602dc274-5183-df11-8c36-0018fe743acc'-- New Account
--where [Value_CRM ID] = '40dba15a-8a63-e111-bb4e-78e7d1de052a'-- OLD ACCOUNT


Select * from [Bidvest_DMS_Default].[dbo].[Corporate Administration_Documents]
where [Value_CRM ID] = '40dba15a-8a63-e111-bb4e-78e7d1de052a'

