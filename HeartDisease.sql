
create database HeartDisease;

show databases;

SELECT DATABASE();
USE HeartDisease;
SELECT * FROM HearDisea LIMIT 5;

/**Basic data exploration**/

SELECT * FROM HearDisea LIMIT 10;

SELECT COUNT(*) AS total_rows FROM HearDisea;

SELECT COUNT(*) AS total_patients FROM HearDisea;

/**Check missing / null values**/

DESCRIBE HearDisea;
SHOW COLUMNS FROM HearDisea;

SELECT
  SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_nulls,
  SUM(CASE WHEN sex IS NULL THEN 1 ELSE 0 END) AS sex_nulls,
  SUM(CASE WHEN cholesterol IS NULL THEN 1 ELSE 0 END) AS chol_nulls
FROM HearDisea;

/**Distribution & statistics**/
SELECT
  MIN(age) AS min_age,
  MAX(age) AS max_age,
  AVG(age) AS avg_age
FROM HearDisea;

SELECT sex, COUNT(*) AS count
FROM HearDisea
GROUP BY sex;

/**Distribution & statistics**/

SELECT target, COUNT(*) AS patients
FROM HearDisea
GROUP BY target;

SELECT sex, COUNT(*) AS count
FROM HearDisea
GROUP BY sex;











