 SET NAMES utf8;
 USE PBZ_1;
 
 /*1.Получить полную информацию обо всех преподавателях.*/
 SELECT
 *FROM teacher;
 
  /*2.Получить полную информацию обо всех студенческих группах на специальности ЭВМ.*/
 SELECT 
 *FROM student_group
 WHERE (specialization = 'ЭВМ');
    
 /*3.Получить личный номер преподавателя и номера аудиторий, в которых они преподают предмет с
кодовым номером 18П.*/
SELECT DISTINCT personal_number,auditorium
 FROM teacher_studies_at_group
 WHERE (subject_number = '18П');

/*4.Получить номера предметов и названия предметов, которые ведет преподаватель Костин.*/
SELECT  id_subject, subject 
FROM subject;

/*6.Получить информацию о предметах, которые ведутся на специальности АСОИ.*/
 SELECT
 *FROM subject 
 WHERE specialization = 'АСОИ';

/*11.Получить общее количество студентов, обучающихся на специальности ЭВМ.*/
 SELECT  SUM(people) 
 FROM student_group
 WHERE specialization = 'ЭВМ' ;
 
 
 
  