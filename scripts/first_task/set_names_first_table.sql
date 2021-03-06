SET NAMES utf8;

USE PBZ_1;

INSERT INTO teacher (personal_number, surname, position, department, specialization, phone_number) 
VALUES ('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ,ЭВМ', 487),
('222Л', 'Костин', 'Доцент','ЭВМ', 'ЭВМ', 543),
('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ,ЭВМ', 112),
('430Л', 'Глазов', 'Ассистент', 'ТФ', 'СД', 421),
('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', 324);

INSERT INTO subject (subject_number, subject, number_of_hours, specialization, semester) 
VALUES ('12П','МиниЭВМ', 36, 'ЭВМ', 1),
('14П', 'ПЭВМ', 72 , 'ЭВМ', 2),
('17П', 'СУБД ПК', 48, 'АСОИ', 4),
('18П', 'ВКСС', 52, 'АСОИ', 6),
('34П', 'Физика', 30, 'СД', 6),
('22П', 'Аудит', 24, 'Бухучета', 3);

INSERT INTO student_group (group_number, student_group, people, specialization, headman) 
VALUES ('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова'),
('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин'),
('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов'),
('3Г', 'АС-8', 20, 'АСОИ', 'Чижов'),
('17Г', 'С-14', 29, 'СД', 'Амросов'),
('12Г', 'М-6', 16, 'Международная экономика', 'Трубин'),
('10Г', 'Б-4', 21, 'Бухучет', 'Зязюткин');

INSERT INTO teacher_studies_at_group (id, group_number, subject_number, personal_number, auditorium)
VALUES ( 1, '8Г', '12П', '222Л', '112'),
( 2, '8Г', '14П', '221Л', '220'),
( 3, '8Г', '17П', '222Л', '112'),
( 4, '7Г', '14П', '221Л', '220'),
( 5, '7Г', '17П', '222Л', '241'),
( 6, '7Г', '18П', '225Л', '210'),
( 7, '4Г', '12П', '222Л', '112'),
( 8, '4Г', '18П', '225Л', '210'),
( 9, '3Г', '12П', '222Л', '112'),
(10, '3Г', '17П', '221Л', '241'),
(11, '3Г', '18П', '225Л', '210'),
(12, '17Г', '12П', '222Л', '112'),
(13, '17Г', '22П', '110Л', '220'),
(14, '17Г', '34П', '430Л', '118'),
(15, '12Г', '12П', '222Л', '112'),
(16, '12Г', '22П', '110Л', '210'),
(17, '10Г', '12П', '222Л', '210'),
(18, '10Г', '22П', '110Л', '210');