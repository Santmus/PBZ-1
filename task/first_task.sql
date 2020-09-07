DROP TABLE IF EXISTS teacher_studies_at_group;
DROP TABLE IF EXISTS teacher;
DROP TABLE IF EXISTS subject;
DROP TABLE IF EXISTS student_group;

create database PBZ_1;

use PBZ_1;

create table teacher
(
id_number char primary key,
surname char,
position char,
chair char,
specialization char,
telephone int 
);
 
 create table subject(
 id_number_subject char primary key,
 name_subject char,
 number_of_hours int,
 specialization char,
 semester int
 );
 
 create table student_group(
 id_number_student_group char primary key,
 name_student_group char,
 people int,
 specialization char,
 surname_of_the_headman char
 );
 
 create table teacher_studies_at_group(
 id_number_student_group char primary key,
 id_number_subject char,
 id_number char,
 number_of_audience int
 );
 
 
