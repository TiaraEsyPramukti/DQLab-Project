CREATE TABLE dqlab_order1(
	orderNumber INT NOT NULL,
	orderDate DATE,
	requiredDate DATE,
	shippedDate DATE,
	orderStatus VARCHAR(12) NOT NULL,
	customerID INT NOT NULL,
	productCode VARCHAR(12),
	quantity INT,
	priceeach FLOAT
	);

SELECT * FROM dqlab_order1;

INSERT INTO dqlab_order1
SELECT *
FROM (
VALUES
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S72_1253',40,45690),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S700_2047',29,83280),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S24_3816',31,78830),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S24_3420',25,65090),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S24_2841',44,67140),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S18_3856',39,85750),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S18_3029',48,84300),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S18_1662',50,146650),
(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',412,'S10_4757',48,118320),
(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped',328,'S700_2610',29,67940),
(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped',328,'S700_1138',36,66000),
(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped',328,'S24_3151',40,70810),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S72_3212',24,48590),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S700_3962',35,81430),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S700_3505',48,86150),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S700_1938',26,84880),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S24_2011',46,113060),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S18_4522',23,78120),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S18_3259',48,97810),
(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',240,'S18_3140',22,133860),
(10231,'2004-03-19','2004-03-26','2004-03-25','Shipped',344,'S12_3891',49,147070),
(10231,'2004-03-19','2004-03-26','2004-03-25','Shipped',344,'S12_1108',42,193250),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S50_1514',43,57410),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S50_1392',34,100700),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S32_3207',46,59030),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S24_4048',45,99360),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S24_1444',36,47400),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S18_4027',42,142180),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S18_2238',49,153910),
(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped',128,'S12_3148',43,128420),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S700_2824',50,91040),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S32_3522',30,52360),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S32_2509',23,49780),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S32_1268',25,78970),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S24_2840',33,34650),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S24_2300',48,115010),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S18_4668',39,43770),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S18_4600',41,119870),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S18_3232',22,157490),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S18_2432',28,53480),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S18_2319',26,104320),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S12_4473',36,95990),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S12_1666',25,110700),
(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',124,'S10_4962',50,138880),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S24_4258',33,84730),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S18_3136',31,100530),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S18_2957',45,57460),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S18_2949',24,101310),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S18_1097',32,100340),
(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',173,'S10_1949',29,214300),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_3969',27,34880),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_3191',40,78760),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_2887',33,102170),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_2766',47,84510),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_2022',24,39420),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S24_1937',42,27220),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_4933',37,70560),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_4409',34,87430),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_3320',33,99210),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_2795',29,146810),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_2325',46,118230),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_2248',28,59930),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_1749',26,136000),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_1367',31,50140),
(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',146,'S18_1342',25,85270),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S24_3432',48,95300),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S24_1628',36,47790),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S24_1046',21,65410),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S18_3685',46,122910),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S18_2870',24,125400),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S18_1984',24,129450),
(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',239,'S18_1589',38,108260),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S24_4620',46,77610),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S24_3856',40,130600),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S24_3371',24,51430),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S24_2972',42,34740),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_4721',35,135410),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_3482',27,119060),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_3278',37,69960),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_3232',43,162570),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_1889',47,71610),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S18_1129',32,116060),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S12_4675',21,100190),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S12_3990',37,64640),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S12_3380',25,101000),
(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',298,'S12_1099',27,157600),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S50_4713',50,81360),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S32_4485',30,94910),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S32_2206',43,37010),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S24_2360',37,60260),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S18_3782',38,57200),
(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped',171,'S12_2823',43,141580),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S700_3167',26,79200),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S700_2834',29,113900),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S700_1691',25,84030),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S50_1341',41,41020),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S32_4289',20,66730),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S32_1374',21,90900),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S24_4278',23,68100),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S24_2000',38,60940),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S24_1785',34,87540),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S24_1578',32,104810),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S18_2625',28,58750),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S18_2581',47,67580),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S10_4698',49,189790),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S10_2016',47,110610),
(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',114,'S10_1678',37,80390),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S72_3212',36,48590),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S72_1253',31,45190),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_4002',43,66630),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_3962',31,81430),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_3505',38,84140),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_2610',36,69390),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_2466',37,90750),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_2047',26,80560),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S700_1138',31,58670),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S24_3949',48,55270),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S24_3816',46,77990),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S24_3420',43,61150),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S24_3151',47,74350),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S24_2841',32,56860),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S18_3856',45,88930),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S18_3029',49,79140),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S18_1662',49,137190),
(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',239,'S10_4757',49,133280),
(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',314,'S700_1938',23,69290),
(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',314,'S24_2011',49,113060),
(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',314,'S18_4522',39,84260),
(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',314,'S18_3259',23,89750),
(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',314,'S18_3140',33,133860),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S50_1514',30,56820),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S50_1392',37,92600),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S32_3207',20,49710),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S24_4048',37,101720),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S24_1444',26,48550),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S18_4027',50,126390),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S12_3891',27,166100),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S12_3148',30,151080),
(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',189,'S12_1108',32,189100),
(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',487,'S32_2509',35,47620),
(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',487,'S24_2840',21,31120),
(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',487,'S18_2238',43,132620),
(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',487,'S12_4473',48,94800),
(10218,'2004-02-09','2004-02-16','2004-02-11','Shipped',473,'S18_3232',34,152410),
(10218,'2004-02-09','2004-02-16','2004-02-11','Shipped',473,'S18_2319',22,110460),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S700_2824',31,90020),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S32_3522',39,56240),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S32_1268',21,78970),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S24_2300',28,103510),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S18_4600',38,118660),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S18_2432',35,58340),
(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',166,'S10_4962',48,132970),
(10216,'2004-02-02','2004-02-10','2004-02-04','Shipped',256,'S12_1666',43,133940),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S24_4258',39,94470),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_4668',46,42760),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_3320',41,84330),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_3136',49,89010),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_2957',31,56210),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_2949',49,97260),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_1367',33,53910),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_1342',27,92470),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S18_1097',46,100340),
(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped',475,'S10_1949',35,205730),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S24_3969',44,38570),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S24_2022',49,39870),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S24_1937',20,32190),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S18_2795',50,167060),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S18_2325',27,125860),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S18_2248',21,53280),
(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',458,'S18_1749',30,166600),
(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped',489,'S24_2887',27,97480),
(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped',489,'S18_4933',25,58440),
(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped',489,'S18_4409',38,84670),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_3856',49,117960),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_3432',46,100660),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_3191',27,77910),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_2972',34,37380),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_2766',45,81780),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_1628',45,43270),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S24_1046',41,61730),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_3685',45,115850),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_3232',40,155790),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_2870',40,117480),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_1984',41,133720),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_1889',20,64680),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_1589',38,105770),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S18_1129',29,117480),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S12_4675',33,110550),
(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',141,'S12_3380',39,99820),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S50_4713',40,70780),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S32_4485',37,94910),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S32_2206',41,39830),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S24_4620',22,80840),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S24_3371',48,52660),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S24_2360',21,62330),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S24_1578',25,109320),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S18_4721',41,148800),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S18_3782',46,60300),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S18_3482',28,138170),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S18_3278',35,73170),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S12_3990',28,79800),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S12_2823',36,126520),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S12_1099',41,171220),
(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',406,'S10_1678',41,90920),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S700_4002',42,60700),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S700_3167',31,64000),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S700_2834',25,98480),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S700_2466',26,93740),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S700_1691',21,87690),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S50_1341',43,43200),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S32_4289',39,57100),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S32_1374',46,84910),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S24_4278',40,68100),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S24_3949',29,56640),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S24_2000',30,63220),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S24_1785',27,100670),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S18_2625',40,51480),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S18_2581',50,68430),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S18_1662',31,141920),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S10_4698',34,189790),
(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',177,'S10_2016',23,112990),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S72_1253',48,44200),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S700_2047',33,90520),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S24_3816',22,79670),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S24_3420',36,56550),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S24_2841',43,66450),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S18_3856',20,97400),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S18_3029',28,82580),
(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',347,'S10_4757',39,129200),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S72_3212',42,48050),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S700_3962',33,95340),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S700_3505',37,95160),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S700_2610',46,63610),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S700_1938',40,73620),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S700_1138',38,56670),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S50_1514',30,57990),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S24_3151',20,80540),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S24_2011',35,122890),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S18_4522',45,72850),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S18_3259',48,96810),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S18_3140',24,117470),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S12_3891',20,152260),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S12_3148',26,128420),
(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',146,'S12_1108',46,176630))
AS sub(
	orderNumber,
	orderDate,
	requiredDate,
	shippedDate,
	orderStatu,
	customerID,
	productCode,
	quantity,
	priceeach);