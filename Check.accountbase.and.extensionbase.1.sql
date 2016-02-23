

update dbo.AccountExtensionBase set Isp_OpicsAccountNumber = '6500001085'
from AccountExtensionBase
left join dbo.AccountBase on dbo.accountbase.AccountId = dbo.AccountExtensionBase.AccountId
Where EMailAddress1 = 'thiart@bigpond.com'
