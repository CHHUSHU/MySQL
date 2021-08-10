INSERT INTO Patient Values (1, 58, 'F', 'Han', '');
INSERT INTO blood_test Values (1, 1.35, 0.73, 22.00, 6.40, 90.00, 11.30, 0.00, 0.30, 29.60, 0.73, 0.22, 0.39, 0.01, 0.00, 53.80, 16.40, 29.00, 0.80, 0.00, 54.40, 17.30, 16.60, 87.10, 34.80, 339.00, 0.10, 0.00);
INSERT INTO Physical_examination Values (1, '36.6℃', '112T/M', '21T/M', '107/56mmHg');
INSERT INTO Disease Values('AL', 'acute leukemia');
Insert into Diagnosis_has_Disease values ( 1, 'AL');
INSERT INTO Liver_function_test values (1, 34.1, 24.7, 64.30, 36.34, 27.96, 1.30, 17.0, 5.61, 11.39, 5.8, 245.6, 47.0, 0.8, 31.7, 0.78, 16.4, 48.6, 4.57, 141.3, 112.9, 1.17, 6.97, 66.1, 4.93, 41.1, 278.0, 0.74);

INSERT INTO Patient Values (2, 58, 'F', 'Han', '');
INSERT INTO Physical_examination Values (1, '36.2℃', '92T/M', '20T/M', '126/80mmHg');
INSERT INTO Disease Values('CIN', 'Chronic Cervicitis');
INSERT INTO Disease Values('HPV', 'Human Papilloma Virus');
INSERT INTO Disease Values('UM', 'Uterinemyoma');
Insert into Diagnosis_has_Disease values ( 2, 'CIN');
Insert into Diagnosis_has_Disease values ( 2, 'HPV');
Insert into Diagnosis_has_Disease values ( 2, 'UM');