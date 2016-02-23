SELECT * FROM ACCT 
WHERE CLOSEDATE IS NULL AND 
CNO collate Latin1_General_BIN in (select a.Isp_OpicsAccountNumber from [JHBH-SRV-CRM01].[Rennies_Bank_MSCRM].[dbo].Account a) 
order by CNO

SELECT * FROM ACCT 
WHERE CLOSEDATE IS NULL AND
CNO collate Latin1_General_BIN in (select a.Isp_OpicsAccountNumber from [JHBH-SRV-CRM01].[Rennies_Bank_MSCRM].[dbo].Account a where a.Isp_OpicsAccountNumber = '6500000167') 
order by CNO
