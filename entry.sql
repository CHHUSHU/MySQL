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
use records;
show tables;
select* from Liver_function_test;
INSERT INTO Liver_function_test (LFT_ID, AST, ALT, TP, ALB, GLB, `A/G`, TBIL, DBIL, IB, TBA, CRP, K, Na, Cl, Ca, UREA, Cr, UA) Values (3, 52.2, 144.1, 55.71, 32.56, 23.15, 1.41, 16.3, 5.47, 10.83, 3.8, 44.3, 4.19, 137.3, 93.6, 1.13, 4.37, 39.8, 255.0);  
update patient set LFT_ID = 3 where patient_id = 3;
INSERT INTO Liver_function_test (LFT_ID, AST, ALT, TP, ALB, GLB, `A/G`, TBIL, DBIL, IB, TBA, K, Na, Cl, Ca, UREA, Cr, UA, TG, CHO, `HDL-C`, LDL) Values (2, 21.4, 17.3, 75.8, 45.24, 30.56, 1.48, 13.4, 2.86, 10.54, 0.9, 4.01, 143.5, 101.3, 1.18, 5.0, 58.3, 211.0, 1.38, 5.79, 1.82, 3.79);  
update patient set LFT_ID = 2 where patient_id = 2;
select* from Blood_test;
INSERT INTO Blood_test ( `Blood_test_ID` ,
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
  `NRBC%`) Values (2, 3.60,3.84, 131.0, 38.6, 158.0, 10.50, 0.01, 0.20, 34.00, 2.31, 1.06, 0.19, 0.03, 0.01, 63.90, 29.60, 5.40, 0.80, 0.30, 47.20, 12.90, 16.30, 100.40, 28.40, 339.0, 0.17, 0.00);
  show tables;
  select*from patient;
  update patient set BT_ID = 2 where patient_id = 2;
  alter table patient add column diagnosis varchar(10);
  select*from disease;
  create table diagnosis (
  `diagnosis_ID` int not null,
  `patient_ID` int not null,
  `disease` varchar(10) not null,
  primary key (`diagnosis_ID`),
constraint `patient_ID` FOREIGN KEY (`patient_ID`) REFERENCES patient (`patient_ID`) ON DELETE no action ON UPDATE CASCADE,
constraint `disease` FOREIGN KEY (`disease`) REFERENCES disease (`disease_short`) ON DELETE no action ON UPDATE CASCADE
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  


select * from diagnosis;
select * from disease;
insert into diagnosis values(1, 1, 'AL');
insert into diagnosis values(2, 2, 'CIN');
insert into diagnosis values(3, 2, 'HPV');
insert into diagnosis values(4, 2, 'UM');

select t1.patient_ID, age, gender, ethnic, history, disease FROM patient AS t1 INNER JOIN diagnosis AS t2 ON t1.patient_ID = t2.patient_ID where t1.patient_ID = 1;
insert into disease values('LCA', 'Lung Cancer');
insert into diagnosis values(5,3,'LCA');
insert into disease values('T2DM', 'diabetes mellitus type 2');
insert into diagnosis values(6,3,'T2DM');
insert into disease values('COPD', 'chronic obstructive pulmonary diseases');
insert into diagnosis values(7,3,'COPD');
alter table patient drop column diagnosis;
select * from patient;
select * from diagnosis;
insert into diagnosis values(8,4,'LCA');
insert into PATIENT values(5,'男','汉', 64, '患者因“咯血5天”于2021.04.11入住我院我科，完善相关检查，诊断为：左肺占位：肿瘤？其他，建议进一步完善肺穿刺活检明确诊断，患者家属商议后拒绝穿刺，于2021.04.12签字出院。
出院后患者自行前往湖南省肿瘤医院就诊，完善支气管镜：左下叶背段新生物：肺CA？，病理：涂片见少许异形细胞，倾向低分化鳞癌。待进一步病理，患者要求出院，于2021.04.20办理出院。
出院后患者于2021.04.28再次于湖南省肿瘤医院办理诊断证明，临床诊断为：原发性支气管肺癌 小细胞癌，待进一步病理。', null, null);
show create table patient;
alter table patient drop column `LFT_ID`;
alter table patient drop foreign key `patient_ibfk_1`;
alter table patient drop column `BT_ID`;
alter table patient drop column `PE_ID`;
select * from patient;
SELECT * FROM Blood_test;
alter table blood_test add column patient_ID int after blood_test_id;
update blood_test set patient_id = 1 where blood_test_id = 1;
update blood_test set patient_id = 2 where blood_test_id = 2;
show tables;
SELECT * FROM liver_function_test;
alter table liver_function_test add column patient_ID int after lft_id;
update liver_function_test set patient_id = 2 where lft_id = 2;
update liver_function_test set patient_id = 1 where lft_id = 1;
update liver_function_test set patient_id = 3 where lft_id = 3;
SELECT * FROM physical_examination;
alter table physical_examination add column patient_ID int after exam_ID;
update physical_examination set patient_id = 1 where exam_ID = 1;
update physical_examination set patient_id = 2 where exam_ID = 2;
update physical_examination set patient_id = 3 where exam_ID = 3;
INSERT INTO PATIENT VALUES (7, '男', '汉', 66, '患者2018年4月因进行性消瘦到湘雅附一医院就诊，完善相关检查，诊断为右上肺鳞癌，建议手术治疗。患者拒绝手术治疗，后到湘雅附二医院就诊，拟定行“吉西他滨+顺铂”化疗方案，同时使用Keytruda治疗，四个周期后，患者行放疗治疗，后行第五周期治疗后出现严重的放射性肺炎，停止治疗方案。后到中山大学肿瘤医院就诊，予以对症处理后，症状改善出院。后改用为“特瑞普利”治疗9个周期。
    患者于2020.03.03为寻求进一步诊治入住我科，完善相关检查');
select * from patient;
SELECT * FROM DISEASE;
insert into disease VALUES ('LUSC', 'Lung squamous cell carcinoma');
SELECT*FROM DIAGNOSIS;
INSERT INTO DIAGNOSIS VALUES(9,5,'LCA');
INSERT INTO DIAGNOSIS VALUES(10,7,'LUSC');
INSERT INTO PATIENT VALUES (8, '男', '汉', 65, 'null');
select*from blood_test;
insert into blood_test (blood_test_ID, Patient_ID, WBC, RBC, HGB, HCT, PLT, MPV, `IG#`, `IG%`, MCH, `NEUT#`, LYMPH, `MONO#`, `EO#`, `BASO#`, `NEUT%`, `LYMPH%`, `MONO%`, `EO%`, `BASO%`, `RDW-S`, `RDW-C`, PDW, MCV, `P-LCR`, MCHC, PCT, `NRBC%`, `NRBC#`, `P-LCC`) VALUE (3, 4, 9.96, 4.90, 154.00, 45.10, 229.0, 9.70, 0.05,0.50, 31.50,8.11, 0.94, 0.60,0.27, 0.04, 81.40, 9.50, 6.00,2.70, 0.40, 43.40, 13.00, 16.40, 92.0, 24.40, 343.00, 0.22, 0.00, 0.00, 56.00);
select*from LIVER_FUNCTION_TEST;
INSERT INTO LIVER_FUNCTION_TEST (`PATIENT_ID`,`LFT_ID`, `AST`,`ALT`,`TP`,
  `ALB`,
  `GLB`,
  `A/G`,
  `TBIL`,
  `DBIL`,
  `IB`,
  `TBA`,
  `LDH`,
  `CK`,
  `CKI` ,
  `Mb` ,
  `CRP`,
  `FE` ,
  `K` ,
  `Na` ,
  `Cl` ,
  `Ca` ,
  `GLU` ,
    `ALP` ,
      `TG` ,
  `CHO` ,
  `HDL-C` ,
  `LDL` ,
  `CYSC-` ,
  `UREA` ,
  `CR` ,
  `UA`) VALUES (4, 4, 16.6, 18.1, 72.56, 43.60, 28.96, 1.51, 13.9, 4.90, 9.00, 8.6, 230.6, 108.4, 5.4, 102.4, 3.5, 19.0, 3.44, 141.5, 96.4, 1.21, 16.00, 139.6, 1.88, 4.22, 1.08, 2.95, 0.88, 4.53, 78.0, 436.0)