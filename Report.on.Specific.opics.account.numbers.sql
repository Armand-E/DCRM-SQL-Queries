select
aeb.Isp_Accountname,
aeb.Isp_OpicsAccountNumber,
--aeb.ISP_creditstatus,
cs.Value AS CreditStatus,
aeb.Isp_proposedmargin,
--aeb.Isp_brokerbdmid,
br.FullName AS Broker
from
dbo.AccountExtensionBase aeb WITH (NOLOCK)
LEFT JOIN StringMapBase cs WITH (NOLOCK) ON aeb.Isp_CreditStatus = cs.AttributeValue and AttributeName = 'isp_creditstatus'
LEFT JOIN ContactBase br WITH (NOLOCK) ON aeb.isp_brokerbdmid = br.ContactId
Where
Isp_OpicsAccountNumber in (
'5000002723',
'5000002261',
'5000000409',
'5000000395',
'5000000986',
'5000002524',
'5000002706',
'5000002817',
'5000000522',
'5000002251',
'5000000603',
'5000002467',
'5000000368',
'5000000315',
'5000000318',
'5000000407',
'5000000354',
'5000000373',
'5000002482',
'5000000317',
'5000002047',
'5000002145',
'5000002332',
'5000000663',
'5000002592',
'5000000849',
'5000002646',
'5000002478',
'5000002505',
'5000000910',
'5000002563',
'5000000414',
'5000002416',
'5000002579',
'5000000836',
'5000002072',
'5000000510',
'5000000664',
'5000000605',
'5000000748',
'5000002729',
'5000001000',
'5000002680',
'5000002707',
'5000002538',
'5000002647',
'5000000726',
'5000002346',
'5000002308',
'5000002804',
'5000000878',
'5000002151',
'5000002305',
'5000002711',
'5000000540',
'5000002648',
'5000000482',
'5000002392',
'5000002765',
'5000002318',
'5000002271',
'5000000387',
'5000002451',
'5000002830',
'5000002649',
'5000002594',
'5000002822',
'5000000124',
'5000002408',
'5000000366',
'5000002599',
'5000002265',
'5000000319',
'5000002602',
'5000000478',
'5000000372',
'5000000945',
'5000002141',
'5000002465',
'5000002340',
'5000000496',
'5000002071',
'5000002598',
'5000000577',
'5000002785',
'4000000169',
'5000000453',
'5000002093',
'5000002172',
'5000002881',
'5000000499',
'5000002604',
'5000000511',
'5000002616',
'5000002667',
'5000002415',
'5000000452',
'5000002724',
'5000000755',
'5000002338',
'5000002522',
'5000000785',
'5000002397',
'5000000284',
'5000002275',
'5000000332',
'5000001008',
'5000002675',
'5000002670',
'5000002684',
'5000000500',
'5000000982',
'5000000399',
'5000002313',
'5000002227',
'5000000356',
'5000002359',
'5000002669',
'5000000547',
'5000002552',
'5000000902',
'5000002642',
'5000002343',
'5000000413',
'5000002106',
'5000002262',
'5000002499',
'5000002661',
'5000000462',
'5000002456',
'5000000661',
'5000000299',
'5000000542',
'5000002679',
'5000002720',
'5000000260',
'5000002285',
'5000000781',
'5000000703',
'5000002825',
'5000000600',
'5000000520',
'5000000358',
'5000000379',
'5000000677',
'5000002066',
'5000002221',
'5000002688',
'5000002620',
'5000002719',
'5000002031',
'5000002284',
'5000002824',
'5000001021',
'5000000363',
'5000000683',
'5000002710',
'5000002834',
'5000002463',
'5000002267',
'5000000388',
'5000002244',
'5000002464',
'5000000362',
'5000002826',
'5000000153',
'5000002517',
'5000002713',
'5000002783',
'5000000134',
'5000000165',
'5000000735',
'5000002371',
'5000002298',
'5000000613',
'5000000300',
'5000002809',
'5000002751',
'5000000778',
'5000000631',
'5000002476',
'5000002790',
'5000002781',
'5000002533',
'5000000144',
'5000000863',
'5000000470',
'5000000932',
'5000002012',
'5000002641',
'5000000881',
'5000002813',
'4000000199',
'5000002542',
'5000002665',
'5000002111',
'5000000632',
'5000002372',
'5000002615',
'5000000492',
'5000000022',
'5000002358',
'5000002618',
'5000002169',
'5000000068',
'5000002064',
'5000002007',
'5000002417',
'9000000475',
'5000002409',
'5000000148',
'5000002578',
'5000002075',
'5000000403',
'5000002199',
'5000002788',
'5000002652',
'5000002475',
'5000002635',
'5000000569',
'5000000164',
'5000000764',
'5000002134',
'5000000418',
'5000002140',
'5000000805',
'5000002104',
'5000002391',
'5000000138',
'5000002438',
'5000002835',
'5000000224',
'5000002725',
'5000000606',
'5000002625',
'5000000641',
'5000000324',
'5000002367',
'5000002690',
'5000002513',
'5000002798',
'5000002782',
'5000002782',
'5000002534',
'5000002384',
'5000000592',
'5000002663',
'5000002108',
'5000002446',
'5000000772',
'5000002088',
'5000002527',
'5000000517',
'5000000704',
'5000000761',
'5000002437',
'5000000969',
'5000000117',
'5000000121',
'5000002488',
'5000000712',
'5000000046',
'5000000101',
'5000002173',
'5000000994',
'5000002442',
'5000002473',
'5000002177',
'5000000306',
'5000000109',
'5000002664',
'5000002157',
'5000002697',
'5000000493',
'5000002248',
'5000002587',
'5000002540',
'5000000667',
'5000000251',
'5000000152',
'5000000052',
'5000002056',
'5000002831',
'5000002733',
'5000002219',
'5000000843',
'5000000049',
'5000000142',
'5000000581',
'5000002378',
'5000000963',
'5000002528',
'5000000821',
'5000000004',
'5000002296',
'5000002555',
'5000002410',
'5000000747',
'5000000857',
'5000000556',
'5000002474',
'5000000231',
'5000000583',
'5000000779',
'5000002073',
'5000002553',
'5000002490',
'5000000746',
'5000002612',
'5000002704',
'5000000685',
'5000002547',
'5000002418',
'5000000195',
'5000002614',
'5000002457',
'5000002521',
'5000000699',
'5000002722',
'5000002180',
'5000000421',
'5000000968',
'5000002657',
'5000000468',
'5000000871',
'5000002510',
'5000002692',
'5000002535',
'5000002116',
'5000000643',
'5000000069',
'5000002036',
'5000002441',
'5000002345',
'5000000266',
'5000002796',
'5000002333',
'5000000524',
'5000002168',
'5000002755',
'5000002091',
'5000000867',
'5000002571',
'5000000695',
'5000002516',
'5000002584',
'5000002774',
'5000002062',
'5000002424',
'5000000833',
'5000002806',
'5000002319',
'5000002326',
'5000000751',
'5000000384',
'5000002148',
'5000000393',
'5000002191',
'5000000255',
'5000002054',
'5000002498',
'5000000812',
'5000002787',
'5000002497',
'5000002756',
'5000002574',
'5000002768',
'5000002470',
'5000002562',
'5000000787',
'5000002069',
'5000002715',
'5000002030',
'5000000467',
'5000002167',
'5000000422',
'5000000050',
'5000002210',
'5000002076',
'5000002018',
'5000002772',
'5000002216',
'5000002432',
'5000000442',
'5000000573',
'5000000474',
'5000002769',
'5000002655',
'5000000563',
'5000000531',
'5000002727',
'5000002654',
'5000002794',
'5000000040',
'5000002800',
'5000000170',
'5000002404',
'5000000922',
'5000002466',
'5000002758',
'5000002259',
'5000002561',
'5000002623',
'5000002184',
'5000002659',
'5000000984',
'5000002673',
'5000002637',
'5000002479',
'5000002155',
'5000000460',
'5000002431',
'5000000322',
'5000000479',
'5000000003',
'5000000491',
'5000002700',
'5000002170',
'5000002055',
'5000000461',
'5000002502',
'5000000020',
'5000002379',
'5000000502',
'5000000079',
'5000002015',
'5000002759',
'5000002226',
'5000000588',
'5000000280',
'5000002495',
'5000002681',
'5000000590',
'5000000957',
'5000000684',
'5000002301',
'4000001691',
'5000002090',
'5000002573',
'5000002568',
'5000002393',
'5000002402',
'5000002651',
'5000000103',
'5000002107',
'5000002205',
'5000002799',
'5000002380',
'5000000291',
'5000002789',
'5000002691',
'5000000504',
'5000002320',
'5000000250',
'5000000076',
'5000002589',
'5000002429',
'5000002577',
'5000000819',
'5000002775',
'5000002668',
'5000002606',
'5000000199',
'5000002807',
'5000000697',
'5000000175',
'5000002773',
'5000002112',
'5000000776',
'5000002749',
'5000002539',
'5000000917',
'5000002138',
'5000002610',
'5000000171',
'5000002450',
'5000000582',
'5000000822',
'5000000640',
'5000002529',
'5000000923',
'5000002217',
'5000000048',
'5000002708',
'5000002334',
'5000000618',
'5000002676',
'5000002322',
'5000002247',
'5000000840',
'5000000634',
'5000000316',
'5000002486',
'5000002744',
'5000002840',
'5000002731',
'5000002856',
'5000002836',
'5000002811',
'5000002844',
'5000002839',
'5000000355',
'5000002791',
'5000000307',
'5000001006',
'5000002682',
'5000000282',
'5000002702',
'5000002746',
'5000002757',
'5000002712',
'5000002838',
'5000002743',
'5000002827',
'5000000924',
'5000002832',
'5000002845',
'5000002752',
'5000002633',
'5000002023',
'5000002035',
'5000002264',
'5000002461',
'5000002631',
'5000002236',
'5000002739',
'5000002805',
'5000002080',
'5000002716',
'5000002454',
'5000002413',
'5000002423',
'5000002721',
'5000002485',
'5000002841',
'5000002833',
'5000002816',
'5000002742',
'5000002854',
'5000000059',
'5000000644',
'5000002795',
'5000002811',
'5000002135',
'5000000257',
'5000000705',
'5000002001',
'5000002273',
'5000000270',
'5000002583',
'5000002425',
'5000000186',
'5000002087',
'5000002792',
'5000000960',
'5000002471',
'5000000568',
'5000002239',
'5000000466',
'5000002246',
'5000002608',
'5000000673',
'5000002183',
'5000002395',
'5000000191',
'5000000128',
'5000000159',
'5000002136',
'5000000773',
'5000002004',
'5000002125',
'5000000197',
'5000000234',
'5000002640',
'5000002220',
'5000000041',
'5000001004',
'5000000303',
'5000000808',
'5000002189',
'5000000783',
'5000002266',
'5000002703',
'5000002628',
'5000002564',
'5000002596',
'5000000253',
'5000002439',
'5000002591',
'5000000962',
'5000002197',
'5000002382',
'5000000077',
'5000002290',
'5000002627',
'5000000115',
'5000002009',
'5000002331',
'5000000265',
'5000000182',
'5000002175',
'5000000997',
'5000002153',
'5000000176',
'5000002034',
'5000000696',
'5000000090',
'5000000765',
'5000002701',
'5000002814',
'5000002600',
'4000000765',
'5000002656',
'5000002489',
'5000000616',
'5000000084',
'5000000305',
'5000002218',
'5000002434',
'5000000744',
'5000000745',
'5000002658',
'5000000304',
'5000002426',
'5000000621',
'5000000249',
'5000000668',
'5000002617',
'5000000029',
'5000000154',
'5000000831',
'5000000410',
'5000002182',
'5000000242',
'5000002084',
'5000002020',
'5000000025',
'5000002601',
'5000000204',
'5000002005',
'5000002698',
'5000000235',
'5000002549',
'5000002245',
'5000000268',
'5000000396',
'5000000064',
'5000002398',
'5000002003',
'5000002291',
'5000000585',
'5000002546',
'5000000169',
'5000002912',
'5000000487',
'5000002626',
'5000002366',
'5000002187',
'5000002672',
'5000002427',
'5000000681',
'5000002185',
'5000002728',
'5000002846',
'5000000489',
'5000002808',
'5000002165',
'5000000572',
'5000000455',
'5000000113',
'5000002029',
'5000002503',
'5000002469',
'5000002699',
'5000002689',
'5000000753',
'5000000908',
'5000002753',
'5000002779',
'5000002194',
'5000000391',
'5000002480',
'5000000514',
'5000000208',
'5000002567',
'5000002531',
'5000002509',
'5000002255',
'5000000417',
'5000002514',
'5000002740',
'5000000386',
'5000000374',
'5000000809',
'5000000629',
'5000001007',
'5000002599',
'5000002819',
'5000002468',
'5000002394',
'5000002764',
'5000000302',
'5000002565',
'5000000155',
'5000002750',
'5000000807',
'5000000754',
'5000000832',
'5000002705',
'5000002778',
'5000000381',
'5000000869',
'5000002653',
'5000000112',
'5000002406',
'5000000223',
'5000000225',
'5000000535',
'5000000245',
'5000000465',
'5000002576',
'5000000133',
'5000002089',
'5000002566',
'5000002299',
'5000002645',
'5000000717',
'5000002222',
'5000002761',
'5000000926',
'5000002544',
'5000002458',
'5000002777',
'5000000635',
'5000000483',
'5000000804',
'5000000201',
'5000000515',
'5000002483',
'5000002797',
'5000000501',
'5000000080',
'5000002662',
'5000002585',
'5000002070',
'5000002447',
'5000002243',
'5000000264',
'5000002685',
'5000002449',
'5000000527',
'5000001022',
'5000002388',
'5000002603',
'5000002575',
'5000002515',
'5000002100',
'5000002501',
'5000000179',
'5000002636',
'5000000650',
'5000000516',
'5000002302',
'5000000258',
'5000002818',
'5000002403',
'5000002058',
'5000002523',
'5000002530',
'5000002650',
'5000002484',
'5000000404',
'5000002696',
'5000002198',
'5000000978',
'5000000229',
'5000000710',
'5000000617',
'5000002511',
'5000002381',
'5000002362',
'5000002233',
'5000000803',
'5000002780',
'5000000083',
'5000002128',
'5000000999',
'5000002257',
'5000002504',
'5000000361',
'5000002215',
'5000000633',
'5000002010',
'5000000769',
'5000001009',
'5000002638',
'5000000546',
'5000002632',
'5000000835',
'5000000047',
'5000000107',
'5000002622',
'5000000921',
'5000002401',
'5000000851',
'5000000593',
'5000000714',
'5000002525',
'5000000252',
'5000002289',
'5000002496',
'5000000078',
'5000002363',
'5000000526',
'5000002611',
'5000002207',
'5000000359',
'5000002127',
'5000002292')