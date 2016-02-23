use Rennies_Bank_MSCRM
select Isp_OpicsAccountNumber, Isp_ShortName from 
dbo.AccountExtensionBase where Isp_IdentityNumber = '6411075217086'

update dbo.AccountExtensionBase set Isp_OpicsAccountNumber = '3000008664' where
 Isp_IdentityNumber = '6411075217086'