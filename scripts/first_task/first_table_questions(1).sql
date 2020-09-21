 SET NAMES utf8;
 USE PBZ_1;
 
/*1.Получить полную информацию обо всех преподавателях.*/
SELECT
*FROM teacher;
 
/*2.Получить полную информацию обо всех студенческих группах на специальности ЭВМ.*/
SELECT 
*FROM student_group
WHERE specialization = 'ЭВМ';
 
/*3.Получить личный номер преподавателя и номера аудиторий, в которых они преподают предмет с
кодовым номером 18П.*/
SELECT  personal_number,auditorium
FROM teacher_studies_at_group
WHERE subject_number = '18П'
GROUP BY personal_number;
 
/*4.Получить номера предметов и названия предметов, которые ведет преподаватель Костин*/
SELECT subj.subject_number,subj.subject 
FROM subject subj
	 JOIN teacher_studies_at_group tsg ON tsg.subject_number = subj.subject_number
     JOIN teacher t ON tsg.personal_number = t.personal_number
WHERE surname = 'Костин'
GROUP BY subj.subject_number;
  
/*5.Получить номер группы, в которой ведутся предметы преподавателем Фроловым.*/
SELECT group_number
FROM teacher_studies_at_group
WHERE personal_number IN (SELECT personal_number FROM teacher WHERE surname = 'Фролов');

/*6.Получить информацию о предметах, которые ведутся на специальности АСОИ.*/
SELECT
*FROM subject 
WHERE specialization = 'АСОИ';
 
 /*7.Получить информацию о преподавателях, которые ведут предметы на специальности АСОИ.*/
SELECT 
*FROM teacher
WHERE specialization LIKE '%АСОИ%';

/*8.Получить фамилии преподавателей, которые ведут предметы в 210 аудитории.*/
SELECT surname
FROM teacher
WHERE personal_number IN (SELECT personal_number FROM teacher_studies_at_group WHERE auditorium = 210);

/*9.Получить название предметов и название групп, которые ведут занятия в аудиториях с 100 по 200.*/
SELECT subj.subject,student_group
FROM subject subj
	 JOIN teacher_studies_at_group tsg ON subj.subject_number = tsg.subject_number
     JOIN student_group sg ON sg.group_number = tsg.group_number
WHERE tsg.auditorium BETWEEN 100 AND 200;

/*10.Получить номера таких групп на специальностях которых две и более группы*/
SELECT sg1.group_number
FROM student_group sg1,student_group sg2
WHERE sg1.specialization = sg2.specialization and sg1.group_number != sg2.group_number; 

/*11.Получить общее количество студентов, обучающихся на специальности ЭВМ.*/
SELECT  SUM(people) 
FROM student_group
WHERE specialization = 'ЭВМ';
 
 /*12.Получить номера преподавателей, обучающих студентов по специальности ЭВМ.*/
SELECT personal_number
FROM teacher_studies_at_group
WHERE group_number IN (SELECT group_number from student_group WHERE specialization = 'ЭВМ')
GROUP BY personal_number;

/*13.Получить номера предметов, изучаемых всеми студенческими группами.*/
SELECT subject_number
FROM teacher_studies_at_group
GROUP BY subject_number
HAVING COUNT(group_number) = (SELECT COUNT(*) from subject);

/*14. Получить фамилии преподавателей, преподающих те же предметы, что и преподаватель преподающий предмет с номером 14П.*/
SELECT DISTINCT surname
FROM teacher AS t
	LEFT JOIN teacher_studies_at_group AS tsg ON t.personal_number = tsg.personal_number
WHERE tsg.personal_number IN (
	SELECT DISTINCT tsg.personal_number
    FROM teacher_studies_at_group
    WHERE subject_number IN (
        SELECT DISTINCT subject_number
        FROM teacher_studies_at_group
        WHERE personal_number IN (
            SELECT DISTINCT personal_number
            FROM teacher_studies_at_group
            WHERE subject_number = '14П')
    )
);

/*15.Получить информацию о предметах, которые не ведет преподаватель с личным номером 221Л.*/
SELECT *
FROM subject
WHERE subject_number NOT IN(SELECT subject_number FROM teacher_studies_at_group WHERE personal_number = '221Л');

/*16.Получить информацию о предметах,которые не изучаются в группе М-6*/
SELECT 
*FROM subject
WHERE subject_number NOT IN (SELECT subject_number FROM teacher_studies_at_group tsg 
							JOIN student_group sg ON tsg.group_number = sg.group_number
                            WHERE sg.student_group = 'М-6');

/*17.Получить информацию о доцентах, преподающих в группах 3Г и 8Г*/
SELECT 
*FROM teacher
WHERE position = "Доцент" AND personal_number IN (SELECT personal_number FROM teacher_studies_at_group WHERE group_number IN('3Г','8Г'));

/*18.Получить номера предметов, номера преподователей, номера групп, в которых ведут занятия преподователи с кафедры ЭВМ,имеющих специальность АСОИ.*/
SELECT subject_number,personal_number,group_number
FROM teacher_studies_at_group
WHERE personal_number IN(SELECT personal_number FROM teacher WHERE department = 'ЭВМ' AND specialization LIKE '%АСОИ%');

/*19.Получить номера групп с такой же специальностью, что и специальность преподователей.*/
SELECT tsg.group_number
FROM teacher_studies_at_group tsg
	JOIN teacher t ON t.personal_number = tsg.personal_number
    JOIN student_group sg ON sg.group_number = tsg.group_number
WHERE t.specialization = sg.specialization;

/*20.Получить номера преподавателей с кафедры ЭВМ, преподающих предметы по специальности, совпадающей со специальностью студенческой группы.*/
SELECT t.personal_number,t.department
FROM teacher t
	JOIN  teacher_studies_at_group tsg ON tsg.personal_number = t.personal_number
    JOIN subject s ON s.subject_number = tsg.subject_number
WHERE t.specialization = s.specialization and department = 'ЭВМ'
GROUP BY t.personal_number;

/*21.Получить специальности студенческой группы, на которых работают преподаватели кафедры АСУ.*/
SELECT sg.specialization
FROM student_group sg
	JOIN teacher_studies_at_group tsg ON tsg.group_number = sg.group_number
    JOIN teacher t ON t.personal_number = tsg.personal_number
WHERE t.department = 'АСУ'
GROUP BY specialization;

/*22.Получить номера предметов, изучаемых группой АС-8.*/
SELECT subj.subject_number
FROM subject subj
	JOIN  teacher_studies_at_group tsg ON  tsg.subject_number = subj.subject_number
    JOIN  student_group sg ON sg.group_number = tsg.group_number
WHERE sg.student_group = 'АС-8' ;

/*23. Получить номера студенческих групп, которые изучают те же предметы, что и студенческая группа АС-8.*/
SELECT tsg.group_number
FROM teacher_studies_at_group tsg
WHERE group_number IN(SELECT tsg.group_number FROM teacher_studies_at_group tsg
	JOIN  student_group sg ON  tsg.group_number = sg.group_number
	WHERE sg.student_group = 'АС-8')
GROUP BY group_number;

/*24.Получить номера студенческих групп, которые не изучают предметы, преподаваемых в студенческой группе АС-8.*/
SELECT DISTINCT group_number
FROM teacher_studies_at_group
WHERE group_number NOT IN (SELECT DISTINCT tsg.group_number FROM teacher_studies_at_group tsg
	JOIN student_group sg ON sg.group_number = tsg.group_number
	WHERE sg.student_group = 'АС-8'
);

/*25.Получить номера студенческих групп, которые не изучают предметы, преподаваемых преподавателем 430Л.*/
SELECT group_number
FROM teacher_studies_at_group
WHERE group_number NOT IN (SELECT group_number FROM teacher_studies_at_group WHERE personal_number = '430Л')
GROUP BY group_number;

/*26.Получить номера преподавателей, работающих с группой Э-15, но не преподающих предмет 12П.*/
SELECT personal_number
FROM teacher_studies_at_group tsg
WHERE tsg.subject_number != 'Э-12П' AND  tsg.group_number IN(SELECT sg.group_number FROM student_group sg WHERE sg.student_group = 'Э-15')
GROUP BY personal_number;

