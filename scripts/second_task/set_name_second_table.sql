SET NAMES utf8;

USE PBZ_1;

INSERT INTO supplier(supplier_id, supplier_name, status, city) 
VALUES ('П1', 'Петров', 20, 'Москва'),
('П2', 'Синицын', 10, 'Таллин'),
('П3', 'Федоров', 30, 'Таллин'),
('П4', 'Чаянов', 20, 'Минск'),
('П5', 'Крюков', 30, 'Киев');

INSERT INTO part(part_id, part_name, color, size, city) 
VALUES ('Д1', 'Болт', 'Красный', 12, 'Москва'),
('Д2', 'Гайка', 'Зеленая', 17, 'Минск'),
('Д3', 'Диск', 'Черный', 17, 'Вильнюс'),
('Д4', 'Диск', 'Черный', 14, 'Москва'),
('Д5', 'Корпус', 'Красный', 12, 'Минск'),
('Д6', 'Крышки', 'Красный', 19, 'Москва');

INSERT INTO project(project_id, project_name, city) 
VALUES ('ПР1', 'ИПР1', 'Минск'),
('ПР2', 'ИПР2', 'Таллин'),
('ПР3', 'ИПР3', 'Псков'),
('ПР4', 'ИПР4', 'Псков'),
('ПР5', 'ИПР5', 'Москва'),
('ПР6', 'ИПР6', 'Саратов'),
('ПР7', 'ИПР7', 'Москва');

INSERT INTO supplier_project_part_number(id, supplier_id, part_id, project_id, sum) 
VALUES (1, 'П1', 'Д1', 'ПР1', 200),
(2, 'П1', 'Д1', 'ПР2', 700),
(3, 'П2', 'Д3', 'ПР1', 400),
(4, 'П2', 'Д2', 'ПР2', 200),
(5, 'П2', 'Д3', 'ПР3', 200),
(6, 'П2', 'Д3', 'ПР4', 500),
(7, 'П2', 'Д3', 'ПР5', 600),
(8, 'П2', 'Д3', 'ПР6', 400),
(9, 'П2', 'Д3', 'ПР7', 800),
(10, 'П2', 'Д5', 'ПР2', 100),
(11, 'П3', 'Д3', 'ПР1', 200),
(12, 'П3', 'Д4', 'ПР2', 500),
(13, 'П4', 'Д6', 'ПР3', 300),
(14, 'П4', 'Д6', 'ПР7', 300),
(15, 'П5', 'Д2', 'ПР2', 200),
(16, 'П5', 'Д2', 'ПР4', 100),
(17, 'П5', 'Д5', 'ПР5', 500),
(18, 'П5', 'Д5', 'ПР7', 100),
(19, 'П5', 'Д6', 'ПР2', 200),
(20, 'П5', 'Д1', 'ПР2', 100),
(21, 'П5', 'Д3', 'ПР4', 200),
(22, 'П5', 'Д4', 'ПР4', 800),
(23, 'П5', 'Д5', 'ПР4', 400),
(24, 'П5', 'Д6', 'ПР4', 500);
