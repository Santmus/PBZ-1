drop table if exists supplier;
drop table if exists part;
drop table if exists project;
drop table if exists supplier_project_part_number;

use PBZ_1;

create table supplier  (
id_p varchar(2) primary key,
name_id_p varchar(20),
status int,
city varchar(20)
);

create table part (
id_d varchar(2) primary key,
name_id_d varchar(20),
color varchar(20),
size int,
city varchar(20)
); 

create table project  (
id_pr varchar(3) primary key,
name_id_pr varchar(20),
city varchar(20)
);

create table supplier_project_part_number(
id_p varchar(2),
name_id_d varchar(2),
id_pr varchar(2),
s int
);

