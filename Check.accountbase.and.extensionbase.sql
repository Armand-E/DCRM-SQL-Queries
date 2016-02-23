select isp_shortname,Telephone1, Fax,isp_identitynumber, Isp_MobilePhone, Isp_OpicsAccountNumber
from dbo.AccountExtensionBase
left join dbo.AccountBase on dbo.accountbase.AccountId = dbo.AccountExtensionBase.AccountId
Where isp_identitynumber  in (
'8907230200089',
'8912120100084',
'6311090338083',
'6009100217087',
'6303045082080',
'7708085062082',
'6008135163001',
'7706265049085',
'6109165095087',
'6607155192087',
'6605160021085',
'7202100270086',
'5705085113180',
'7201245241085',
'7109020172088')
