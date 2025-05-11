--1 
SELECT `Фамилия` FROM `StudentsTable`
	WHERE `Пол`= 'ж';
		
--2
SELECT `Фамилия` FROM `StudentsTable`
	WHERE `Курс`= '3';
		
--3
SELECT `Фамилия` FROM `StudentsTable`
	WHERE `Дата рождения` >  '1994-02-03';
	
--4
SELECT `Фамилия`FROM `StudentsTable`
	WHERE `Средний балл` BETWEEN 70 AND 85;
	
--5
SELECT `Фамилия`FROM `StudentsTable`
	WHERE `Курс` BETWEEN 2 AND 3;
	
--6
SELECT `Фамилия`FROM `StudentsTable`
	WHERE `Фамилия` LIKE 'С%' OR `Фамилия` LIKE 'К%';
		
--7
SELECT `Фамилия`FROM `StudentsTable`
	WHERE `Пол` = 'ж' AND `Группа` LIKE 'АУС%';	

--8
SELECT `Фамилия`FROM `StudentsTable`
	WHERE `Хобби` IS NULL;
	
--9
SELECT DISTINCT `Курс` FROM `StudentsTable`;

--10
SELECT `Фамилия`, `Средний балл` FROM `StudentsTable`
	ORDER BY `Средний балл` DESC
	LIMIT 5;

--11
SELECT `Фамилия`, `Средний балл` FROM `StudentsTable`
	ORDER BY `Средний балл` ASC, `Фамилия` ASC
	LIMIT 10;
	
--12.1
SELECT COUNT(`Фамилия`) FROM `StudentsTable`;

--12.2
SELECT COUNT(`Фамилия`) FROM `StudentsTable`
	WHERE `Хобби` IS NULL;

--12.3
SELECT `Средний балл` FROM `StudentsTable`
	ORDER BY `Средний балл` ASC 
	LIMIT 1;
	
--12.4	
SELECT `Средний балл` FROM `StudentsTable`
	ORDER BY `Средний балл` DESC 
	LIMIT 1;

--12.5
SELECT AVG(`Средний балл`) FROM `StudentsTable`;


--13
SELECT `Курс`, COUNT(*) FROM `StudentsTable`
	GROUP BY `Курс`;
	
--14	
SELECT AVG(`Средний балл`) FROM `StudentsTable`
	GROUP BY `Пол`
	
--15
SELECT MAX(`Средний балл`) FROM `StudentsTable`
	WHERE `Дата рождения` < '1993-01-01' 
	GROUP BY `Курс` = 3
	
--16	
SELECT
	CASE
		WHEN `Students_table`.`Средний балл` BETWEEN 80 AND 100 THEN 'Отлично',
		WHEN `Students_table`.`Средний балл` BETWEEN 60 AND 79 THEN 'Хорошо',
		WHEN `Students_table`.`Средний балл` BETWEEN 40 AND 59 THEN 'Удовлетворительно'
		ELSE 'Неудовлетворительно';
	END AS 'Оценка (по пятибалльной системе)'
FROM `Students_table`;