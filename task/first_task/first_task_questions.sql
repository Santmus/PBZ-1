 SET NAMES utf8;
 USE PBZ_1;
 
 /*Получить полную информацию обо всех преподавателях.*/
 SELECT * FROM teacher;
 
  /*Получить полную информацию обо всех студенческих группах на специальности ЭВМ.*/
 SELECT * FROM student_group WHERE (specialization = 'ЭВМ');
  
  /*Получить информацию о предметах, которые ведутся на специальности АСОИ.*/
 SELECT * FROM subject WHERE specialization = 'АСОИ';
 
 
  