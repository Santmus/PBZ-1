 SET NAMES utf8;
 use PBZ_1;
 
 /*Получить полную информацию обо всех преподавателях.*/
 select * from teacher;
 
  /*Получить полную информацию обо всех студенческих группах на специальности ЭВМ.*/
  select * from student_group where (specialization = 'ЭВМ');
  
  /*Получить информацию о предметах, которые ведутся на специальности АСОИ.*/
  select * from subjects where (specialization = 'АСОИ');
  