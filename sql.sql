-- Aggregation


-- Revising Aggregations - The Count Function

-- Oracle
SELECT COUNT(ID) FROM City WHERE Population > 100000;


-- Revising Aggregations - The Sum function

-- Oracle
SELECT SUM(Population) FROM City WHERE District = 'California';


-- Revising Aggregations - Averages

-- Oracle
SELECT AVG(Population) FROM City WHERE District = 'California';


-- Average Population

-- MySQL
SELECT ROUND(AVG(Population)) FROM City;


-- Japan Population

-- MySQL
SELECT SUM(Population) FROM City WHERE CountryCode = 'JPN';

-- Population Density Difference
-- MySQL
SELECT MAX(Population) - MIN(Population) FROM City;

-- Weather Observation Station 2
-- MySQL
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

-- Weather Observation Station 13
-- MySQL
SELECT ROUND(SUM(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- Weather Observation Station 14
-- MySQL
SELECT ROUND(MAX(LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345;

-- Weather Observation Station 15
-- MySQL
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N = (
    SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345
    );
    
-- Weather Observation Station 16
-- MySQL
SELECT ROUND(MIN(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7780;

-- Weather Observation Station 17
-- MySQL
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N = (
    SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780
    )

-- Weather Observation Station 18
-- MySQL
SELECT ROUND(ABS(MIN(LAT_N) - MIN(LONG_W)) + ABS(MAX(LAT_N) - MAX(LONG_W)), 4) FROM STATION;

