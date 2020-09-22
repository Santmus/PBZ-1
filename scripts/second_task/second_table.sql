USE PBZ_1;

DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS part;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS supplier_project_part_number;

CREATE TABLE supplier  (
supplier_id VARCHAR(2) PRIMARY KEY,
supplier_name VARCHAR(20),
status INT,
city VARCHAR(20)
);

CREATE TABLE part (
part_id VARCHAR(2) PRIMARY KEY,
part_name VARCHAR(20),
color VARCHAR(20),
size INT,
city VARCHAR(20)
); 

CREATE TABLE project  (
project_id VARCHAR(3) PRIMARY KEY,
project_name  VARCHAR(20),
city VARCHAR(20)
);

CREATE TABLE supplier_project_part_number(
id INT PRIMARY KEY,
supplier_id VARCHAR(2),
part_id VARCHAR(2),
project_id VARCHAR(3),
sum INT
);

