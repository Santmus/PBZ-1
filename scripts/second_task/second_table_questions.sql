 USE PBZ_1;
 
 /*4.Получить все отправки, где количество находится в диапазоне от 300 до 750 включительно.*/
SELECT
*FROM supplier_project_part_number
WHERE s BETWEEN 300 AND 750;