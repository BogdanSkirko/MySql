--  SELECT * FROM april_2021.cars;
 -- найти все машины старше 2000 г
--  SELECT * FROM CARS WHERE YEAR < 2000;

 
-- найти все машины младше 2015 г
-- SELECT * FROM CARS WHERE YEAR > 2015;

-- найти все машины 2008, 2009, 2010 годов
-- SELECT * FROM cars WHERE year in(2008,2009,2010);


-- найти все машины не с этих годов 2008, 2009, 2010 годов
-- SELECT * FROM cars WHERE year Not in(2008,2009,2010);


-- найти все машины год которых совпадает с ценой
-- SELECT * FROM cars where year = price;


-- найти все машины bmw старше 2014 года
-- SELECT * FROM CARS where MODEL = 'BMW' AND year < 2014;


-- найти все машины audi младше 2014 года
-- SELECT * FROM CARS where MODEL = 'AUDI' AND YEAR > 2014;


-- найти первые 5 машин
-- SELECT * FROM CARS limit 5;


-- найти последние 5 машин
-- SELECT * from cars  order by ID DESC LIMIT 5;


-- найти среднее арифметическое цен машин модели KIA
-- SELECT AVG(PRICE) FROM cars where model = 'kia' ;


-- найти среднее арифметическое цен каждой машины
-- SELECT
--  AVG(PRICE),
--  MODEL
-- FROM cars  GROUP BY MODEL;


-- посчитать количество каждой марки машин
-- SELECT
-- count(MODEL),
-- MODEL
-- FROM cars group by MODEL;



-- найти марку машины количество которых больше всего
-- SELECT count(model),model  from  cars group by model ;




-- найти все машины в модели которых вторая и предпоследняя буква "а"
-- SELECT * FROM	cars WHERE MODEL like '_a%a_';


-- найти все машины модели которых больше 8 символов
-- SELECT * FROM CARS where length(MODEL)> 8;


-- ***найти машины цена которых больше чем цена среднего арифметического всех машин
-- SELECT  * FROM cars where PRICE > (select AVG(PRICE) FROM CARS) 