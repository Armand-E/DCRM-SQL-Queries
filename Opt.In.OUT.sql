select 
Isp_FirstName
, AccountId
, Isp_lastname
, Isp_IdentityNumber
, Isp_OpicsAccountNumber

from AccountExtensionBase with (nolock)

where 
(Isp_lastname =	'Appel'	AND Isp_FirstName like	'%Hilton%')or
(Isp_lastname =	'King'	AND Isp_FirstName like	'%Amanda %')or
(Isp_lastname =	'Farnaby'	AND Isp_FirstName like	'%John %')or
(Isp_lastname =	'Lehman'	AND Isp_FirstName like	'%Peter %')or
(Isp_lastname =	'Van Weers'	AND Isp_FirstName like	'%Anthon %')or
(Isp_lastname =	'Francis'	AND Isp_FirstName like	'%Roland %')or
(Isp_lastname =	'Nwoye'	AND Isp_FirstName like	'%Hilary %')or
(Isp_lastname =	'Shabalala'	AND Isp_FirstName like	'%Khonzokuhle %')or
(Isp_lastname =	'Kumbula'	AND Isp_FirstName like	'%Darlington%')or
(Isp_lastname =	'Coombs'	AND Isp_FirstName like	'%Julieanne %')or
(Isp_lastname =	'Pinto'	AND Isp_FirstName like	'%Yolanda %')or
(Isp_lastname =	'Reteno Ndiaye Raivo'	AND Isp_FirstName like	'%Keith%')or
(Isp_lastname =	'Van Papendorp'	AND Isp_FirstName like	'%Dirk %')or
(Isp_lastname =	'Moudodi'	AND Isp_FirstName like	'%Cyr %')or
(Isp_lastname =	'Pillay'	AND Isp_FirstName like	'%Rohena%')or
(Isp_lastname =	'Wilson'	AND Isp_FirstName like	'%Lee %')or
(Isp_lastname =	'Knowles'	AND Isp_FirstName like	'%Magrieta %')or
(Isp_lastname =	'Borstrock'	AND Isp_FirstName like	'%Yvette%')or
(Isp_lastname =	'Dos Santos'	AND Isp_FirstName like	'%Jose%')

