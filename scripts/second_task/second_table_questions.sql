 USE PBZ_1;
 
 /*4.Получить все отправки, где количество находится в диапазоне от 300 до 750 включительно.*/
SELECT
*FROM supplier_project_part_number
WHERE sum BETWEEN 300 AND 750;

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