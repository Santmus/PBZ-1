 USE PBZ_1;
 
/*22.Получить номера проектов, использующих по крайней мере одну деталь, имеющуюся упоставщика П1.*/
SELECT project_id 
FROM supplier_project_part_number
WHERE part_id IN(SELECT part_id FROM supplier_project_part_number WHERE supplier_id = 'П1' )
GROUP BY project_id;

/*21.Получить номера деталей, поставляемых для какого-либо проекта в Минске.*/
SELECT sp.part_id
FROM supplier_project_part_number sp 
	JOIN part p ON sp.part_id = p.part_id
WHERE p.city = 'Минск'
GROUP BY part_id;

/*29.Получить номера проектов, полностью обеспечиваемых поставщиком П1.*/
SELECT project_id 
FROM supplier_project_part_number
WHERE project_id IN(SELECT project_id FROM supplier_project_part_number GROUP BY project_id HAVING supplier_id = 'П1');

/*4.Получить все отправки, где количество находится в диапазоне от 300 до 750 включительно.*/
SELECT
*FROM supplier_project_part_number
WHERE sum BETWEEN 300 AND 750;

/*7.Получить все такие тройки "номера поставщиков-номера деталей-номера проектов", для которых
выводимые поставщик, деталь и проект не размещены в одном городе.*/
SELECT sppn.supplier_id,sppn.part_id,sppn.project_id
FROM supplier_project_part_number sppn
	JOIN supplier s ON s.supplier_id = sppn.supplier_id
    JOIN part p ON p.part_id = sppn.part_id
    JOIN project pr ON pr.project_id = sppn.project_id
WHERE s.city != p.city != pr.city;

/*11.Получить все пары названий городов, для которых поставщик из первого города обеспечивает
проект во втором городе.*/
SELECT s.city, pr.city 
FROM supplier_project_part_number sppn
    JOIN supplier s ON s.supplier_id = sppn.supplier_id
    JOIN project pr ON pr.project_id = sppn.project_id;


/*15.Получить общее число проектов, обеспечиваемых поставщиком П1.*/
SELECT COUNT(s.supplier_id)
FROM supplier s
	JOIN supplier_project_part_number sppn ON s.supplier_id = sppn.supplier_id
WHERE s.supplier_id = 'П1'  ;

/*33.Получить все города, в которых расположен по крайней мере один поставщик, одна деталь или один проект.*/
SELECT city FROM supplier 
UNION
SELECT city FROM part
UNION 
SELECT city FROM project;

/*25.Получить номера проектов, город которых стоит первым в алфавитном списке городов.*/
SELECT project_id
FROM project
ORDER BY city ASC
LIMIT 1;

/*36.Получить все пары номеров поставщиков, скажем, Пx и Пy, такие, что оба эти поставщика
поставляют в точности одно и то же множество деталей.*/
SELECT DISTINCT sppn1.supplier_id , sppn2.supplier_id  
FROM supplier_project_part_number sppn1, supplier_project_part_number sppn2 
WHERE sppn1.part_id IN(SELECT part_id FROM supplier_project_part_number  sppn1 WHERE sppn1.supplier_id = sppn2.supplier_id);