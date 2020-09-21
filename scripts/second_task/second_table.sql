DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS part;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS supplier_project_part_number;

USE PBZ_1;

CREATE TABLE supplier  (
id_p VARCHAR(2) PRIMARY KEY,
name_id_p VARCHAR(20),
status INT,
city VARCHAR(20)
);

CREATE TABLE part (
id_d VARCHAR(2) PRIMARY KEY,
name_id_d VARCHAR(20),
color VARCHAR(20),
size INT,
city VARCHAR(20)
); 

CREATE TABLE project  (
id_pr VARCHAR(3) PRIMARY KEY,
name_id_pr VARCHAR(20),
city VARCHAR(20)
);

CREATE TABLE supplier_project_part_number(
id INT PRIMARY KEY,
id_p VARCHAR(2),
id_d VARCHAR(2),
id_pr VARCHAR(3),
s INT
);

