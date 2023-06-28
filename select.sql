USE eje_SQL;

-- Seleccionar todo
SELECT * FROM `lineas`;

-- Filtrar por columnas
SELECT id, name, color FROM `lineas`;

-- Operaciones matemáticas con SELECT

SELECT (2 + 2);

SELECT (2 + 2) AS resultado;

SELECT AVG(year) FROM `trains`;

SELECT AVG(year) AS year_avg FROM `trains`;

-- Juntar tablas

SELECT
`lineas`.`name`,
`trains`.`serial_number`
FROM `lineas`
INNER JOIN `trains`
ON `lineas`.`id` = `trains`.`lineas_id`;