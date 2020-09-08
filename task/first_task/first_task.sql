DROP database IF EXISTS pbz_1;

create database PBZ_1;

use PBZ_1;

create table teacher
(
id_number varchar(20) primary key,
surname varchar(20),
position varchar(20),
department varchar(20),
specialization varchar(30),
telephone int 
);
 
 create table subject(
 id_number_subject varchar(20) primary key,
 name_subject varchar(20),
 number_of_hours int check(number_of_hours > 0),
 specialization varchar(30),
 semester int
 );
 
 create table student_group(
 id_number_student_group varchar(20) primary key,
 name_student_group varchar(20),
 people int,
 specialization varchar(30),
 surname_of_the_headman varchar(20)
 );
 
 create table teacher_studies_at_group(
 id_number_student_group varchar(20),
 id_number_subject varchar(20),
 id_number varchar(20),
 number_of_audience int
 );
 
 
