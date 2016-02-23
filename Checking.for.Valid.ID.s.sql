select
      AccountId,
      Isp_FirstName,
      Isp_lastname,
      Isp_OpicsAccountNumber,
      Isp_IdentityNumber, 
      [isp_RenniesCustom].[dbo].IsValidID(Isp_IdentityNumber) as [IsValidID?]
from Account
where Isp_lastname is not null and Isp_FirstName is not null and Isp_OpicsAccountNumber is not null