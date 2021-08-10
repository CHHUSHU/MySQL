show databases;
use records;
show tables;
CREATE TABLE IF NOT EXISTS `Patient`(
   `patient_id` INT Not Null,
   `gender` CHAR(1) not null,
   `ethnic` VARCHAR(8) not null,
   `age` INT not null,
   `history` VARCHAR(250) NOT NULL,
   PRIMARY KEY ( `patient_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

show tables;
select * from patient;
INSERT INTO Patient Values (1, 'F', 'Han', 58, '患者2008年因乏力不适于广州医院（具体医院不详）就诊，完善相关检查，诊断为MDS，予以输血等对症治疗，好转出院。出院后患者多次输血治疗，2010.01.11就诊于湘雅二医院，再次完善骨髓穿刺活检，明确诊断为：MDS-RAEBI，继续予以输血治疗。
出院后患者多次输血治疗，2012年再次前往湘雅二医院就诊，病情进展为白血病，患者未行化疗及骨髓移植（具体不详），予以输血治疗后出院。');

CREATE TABLE IF NOT EXISTS `disease`(
 `disease_short` varchar(5) Not Null,
 `disease_name` varchar(20) Not Null,
 PRIMARY KEY ( `disease_short` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

show tables;
select*from disease;
INSERT INTO Disease Values('AL', 'acute leukemia');
INSERT INTO Disease Values('CIN', 'Chronic Cervicitis');
INSERT INTO Disease Values('HPV', 'Human Papilloma Virus');
INSERT INTO Disease Values('UM', 'Uterinemyoma');
alter table disease modify column disease_name varchar(50);
select * from disease;

create table physical_examination(
exam_ID INT UNSIGNED AUTO_INCREMENT,
T varchar(10) not null,
P varchar(10) not null,
R varchar(10) not null,
BP varchar(20) not null,
PRIMARY KEY ( exam_ID )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

show tables;
select * from physical_examination;
insert into physical_examination value( 1, '36.6℃', '112次/分', '21次/分', '107/56mmHg');
select * from physical_examination;

CREATE TABLE IF NOT EXISTS `Blood_test` (
  `Blood_test_ID` INT NOT NULL,
  `WBC` DECIMAL(6,2) NULL,
  `RBC` DECIMAL(6,2) NULL,
  `HGB` DECIMAL(6,2) NULL,
  `HCT` DECIMAL(6,2) NULL,
  `PLT` DECIMAL(6,2) NULL,
  `MPV` DECIMAL(6,2) NULL,
  `IG#` DECIMAL(6,2) NULL,
  `IG%` DECIMAL(6,2) NULL,
  `MCH` DECIMAL(6,2) NULL,
  `NEUT#` DECIMAL(6,2) NULL,
  `LYMPH` DECIMAL(6,2) NULL,
  `MONO#` DECIMAL(6,2) NULL,
  `EO#` DECIMAL(6,2) NULL,
  `BASO#` DECIMAL(6,2) NULL,
  `NEUT%` DECIMAL(6,2) NULL,
  `LYMPH%` DECIMAL(6,2) NULL,
  `MONO%` DECIMAL(6,2) NULL,
  `EO%` DECIMAL(6,2) NULL,
  `BASO%` DECIMAL(6,2) NULL,
  `RDW-S` DECIMAL(6,2) NULL,
  `RDW-C` DECIMAL(6,2) NULL,
  `PDW` DECIMAL(6,2) NULL,
  `MCV` DECIMAL(6,2) NULL,
  `P-LCR` DECIMAL(6,2) NULL,
  `MCHC` DECIMAL(6,2) NULL,
  `PCT` DECIMAL(6,2) NULL,
  `NRBC%` DECIMAL(6,2) NULL,
  `NRBC#` DECIMAL(6,2) NULL,
  `P-LCC` DECIMAL(6,2) NULL,
  PRIMARY KEY (`Blood_test_ID`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

show tables;
select*from blood_test;
INSERT INTO blood_test  ( `Blood_test_ID` ,
  `WBC` ,
  `RBC` ,
  `HGB` ,
  `HCT` ,
  `PLT`,
  `MPV`,
  `IG#` ,
  `IG%`,
  `MCH`,
  `NEUT#`,
  `LYMPH`,
  `MONO#`,
  `EO#`,
  `BASO#`,
  `NEUT%`,
  `LYMPH%`,
  `MONO%`,
  `EO%`,
  `BASO%`,
  `RDW-S`,
  `RDW-C`,
  `PDW` ,
  `MCV`,
  `P-LCR`,
  `MCHC`,
  `PCT`,
  `NRBC%`) Values (1, 1.35, 0.73, 22.00, 6.40, 90.00, 11.30, 0.00, 0.30, 29.60, 0.73, 0.22, 0.39, 0.01, 0.00, 53.80, 16.40, 29.00, 0.80, 0.00, 54.40, 17.30, 16.60, 87.10, 34.80, 339.00, 0.10, 0.00 );
  
  show tables;
  CREATE TABLE IF NOT EXISTS `Liver_function_test` (
  `LFT_ID` INT NOT NULL,
  `AST` DECIMAL(6,2) NULL,
  `ALT` DECIMAL(6,2) NULL,
  `TP` DECIMAL(6,2) NULL,
  `ALB` DECIMAL(6,2) NULL,
  `GLB` DECIMAL(6,2) NULL,
  `A/G` DECIMAL(6,2) NULL,
  `TBIL` DECIMAL(6,2) NULL,
  `DBIL` DECIMAL(6,2) NULL,
  `IB` DECIMAL(6,2) NULL,
  `TBA` DECIMAL(6,2) NULL,
  `LDH` DECIMAL(6,2) NULL,
  `CK` DECIMAL(6,2) NULL,
  `CKI` DECIMAL(6,2) NULL,
  `Mb` DECIMAL(6,2) NULL,
`CYSC-` DECIMAL(6,2) NULL,
  `CRP` DECIMAL(6,2) NULL ,
  `FE` DECIMAL(6,2) NULL,
  `P` DECIMAL(6,2) NULL,
  `K` DECIMAL(6,2) NULL,
  `Na` DECIMAL(6,2) NULL,
  `Cl` DECIMAL(6,2) NULL,
  `Ca` DECIMAL(6,2) NULL,
  `GLU` DECIMAL(6,2) NULL,
    `ALP` DECIMAL(6,2) NULL,
  `UREA` DECIMAL(6,2) NULL,
  `CR` DECIMAL(6,2) NULL,
  `UA` DECIMAL(6,2) NULL,
  `TG` DECIMAL(6,2) NULL,
  `CHO` DECIMAL(6,2) NULL,
  `HDL-C` DECIMAL(6,2) NULL,
  `LDL` DECIMAL(6,2) NULL,
  `APOA1` DECIMAL(6,2) NULL,
  `APOB` DECIMAL(6,2) NULL,
  PRIMARY KEY (`LFT_ID`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 show tables;
 select*from liver_function_test;
INSERT INTO Liver_function_test ( `LFT_ID` ,
  `AST` ,
  `ALT`,
  `TP` ,
  `ALB` ,
  `GLB`,
  `A/G` ,
  `TBIL` ,
  `DBIL` ,
  `IB` ,
  `TBA` ,
  `LDH` ,
  `CK` ,
  `CKI` ,
  `Mb` ,
  `CYSC-`,
  `CRP` ,
  `Fe`,
  `K` ,
  `Na` ,
  `Cl` ,
  `Ca` ,
  `GLU` ,
  `ALP` ,
  `UREA` ,
  `CR` ,
  `UA` ,
  `TG`)
values (1, 34.1, 24.7, 64.30, 36.34, 27.96, 1.30, 17.0, 5.61, 11.39, 5.8, 245.6, 47.0, 0.8, 31.7, 0.78, 16.4, 48.6, 4.57, 141.3, 112.9, 1.17, 6.97, 66.1, 4.93, 41.1, 278.0, 0.74);
select*from liver_function_test;
update patient set gender = '女', ethnic = '汉' where patient_id = 1;

INSERT INTO Patient Values (2, '女', '汉', 58 , '患者自诉45岁绝经，绝经后无异常阴道流血。半月前在外院行体检，发现宫腔内稍低回声团，大小月21*20mm，宫颈TCT示非典型鳞状细胞，HPV52、66阳性。故行宫颈活检，活检结果示慢性炎、鳞状上皮增生及化生，宫颈管组织示粘膜慢性炎，小灶腺体鳞化。患者平时无腹痛、腹胀等不适，要求手术入住我科，入院时精神、食欲、睡眠尚可，大小便正常。');
INSERT INTO Patient Values (3, '男 ', '汉', 66 , '患者自诉10年前每于受凉后出现咳嗽，咳痰，少量白痰，伴气促，无胸闷及心悸，无胸痛，上症一年发作数次，以冬春季为主，每次发作在当地卫生院予以抗感染、平喘等治疗，症状可控制，但10年来气促逐渐加重，曾在我院完善肺部CT及肺功能后，考虑为“慢性阻塞性肺病”。半月前上症再发加重，无畏寒及发热，伴全身浮肿，未予治疗，今见症状无缓解，故来我院就诊，被收住院治疗。患者自此次起病以来，精神、食欲欠佳，大小便正常，睡眠欠佳，体重无减轻。');
INSERT INTO Patient Values (4, '男', '汉', 75 , '既往体质健康。无类似病史，无其它病史，否认高血压和心脏病史，否认脑血管疾病和糖尿病及精神疾病史。否认肝炎和结核等传染病及其接触史。否认手术和外伤及输血史。否认食物和药物过敏史。按当地防疫部门要求预防接种。');
ALTER TABLE patient add column BT_ID INT NULL;
ALTER TABLE patient ADD FOREIGN KEY (BT_ID) REFERENCES blood_test (Blood_test_ID) ON DELETE set null ON UPDATE CASCADE ;
select*from patient; 
update patient set BT_ID = 1 where patient_id = 1;
select patient_id, Blood_test_ID,  `WBC` ,
  `RBC` ,
  `HGB` ,
  `HCT` ,
  `PLT`,
  `MPV`,
  `IG#` ,
  `IG%`,
  `MCH`,
  `NEUT#`,
  `LYMPH`,
  `MONO#`,
  `EO#`,
  `BASO#`  FROM patient AS t1 INNER JOIN blood_test AS t2 ON t1.BT_ID = t2.Blood_test_ID;

INSERT INTO Physical_examination Values (2, '36.2℃', '92次/分', '20次/分', '126/80mmHg');  
select * from physical_examination;
ALTER TABLE patient add column PE_ID INT NULL;
ALTER TABLE patient ADD FOREIGN KEY (PE_ID) REFERENCES Physical_examination (exam_ID) ON DELETE set null ON UPDATE CASCADE ;  
update patient set PE_ID = 1 where patient_id = 1;
update patient set PE_ID = 2 where patient_id = 2;
INSERT INTO Physical_examination Values (3, '36.8℃', '100 次/分', '25次/分', '120/80mmHg');
update patient set PE_ID = 3 where patient_id = 3;
ALTER TABLE patient add column LFT_ID INT NULL;
ALTER TABLE patient ADD FOREIGN KEY (LFT_ID) REFERENCES Liver_function_test (LFT_ID) ON DELETE set null ON UPDATE CASCADE ;  
update patient set LFT_ID = 1 where patient_id = 1;
select * from patient;
select patient_id, age, gender, exam_ID, T, P, R, BP from patient as t1 join physical_examination as t2 on t1.PE_ID = t2.exam_ID;


show databases;