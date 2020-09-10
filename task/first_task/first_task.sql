DROP database IF EXISTS pbz_1;

CREATE DATABASE PBZ_1;

USE PBZ_1;

CREATE TABLE teacher
(
id_number VARCHAR(4) PRIMARY KEY,
surname VARCHAR(10),
position VARCHAR(10),
department VARCHAR(20),
specialization VARCHAR(30),
phone_number INT 
);
 
 CREATE TABLE subject(
 id_subject VARCHAR(3) PRIMARY KEY,
 subject VARCHAR(20),
 number_of_hours INT CHECK(number_of_hours > 0),
 specialization VARCHAR(30),
 semester INT
 );
 
CREATE TABLE student_group(
 id_student_group VARCHAR(3) PRIMARY KEY,
 student_group VARCHAR(4),
 people INT,
 specialization VARCHAR(30),
 headman VARCHAR(15)
 );
 
 CREATE TABLE teacher_studies_at_group(
 id INT PRIMARY KEY,
 group_number VARCHAR(20),
 subject_number VARCHAR(20),
 personal_number VARCHAR(20),
 auditorium INT
 );
 
 
