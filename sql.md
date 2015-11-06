# SQL

## Basic Select

### revising-the-select-query

```
SELECT * FROM City where CountryCode = 'USA' AND Population > 100000
```

### revising-the-select-query-2

```
SELECT
    Name
FROM
    City
WHERE
    CountryCode = 'USA'
    AND
    Population > 120000
;
```

### Japanese Cities' Detail

```
SELECT
    *
FROM
    City
WHERE
    CountryCode = 'JPN'
;
```

### Japanese Cities' Name

```
SELECT
    Name
FROM
    City
WHERE
    CountryCode = 'JPN'
;
```

### Weather Observation Station 1

```
SELECT CITY, STATE FROM STATION ORDER BY CITY, STATE ASC;
```

### Weather Observation Station 3

```mysql
SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0 ORDER BY CITY ASC;
```

### Weather Observation Station 4

```mysql
SELECT (COUNT(*) - COUNT(DISTINCT CITY)) FROM STATION ORDER BY ID ASC;
```

### Weather Observation Station 5

```mysql
(SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) ASC LIMIT 1)
UNION
(SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC LIMIT 1)
;
```

### Weather Observation Station 6

```mysql
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%' ORDER BY CITY ASC;
```

### Weather Observation Station 7

```oracle
SELECT DISTINCT CITY FROM STATION WHERE CITY like '%a' OR CITY like '%e' OR CITY like '%i' OR CITY like '%o' OR CITY like '%u' ORDER BY CITY ASC;
```

### Weather Observation Station 8

```oracle
SELECT DISTINCT S.CITY FROM (
    SELECT CITY FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
) S
WHERE S.CITY like '%a' OR S.CITY like '%e' OR S.CITY like '%i' OR S.CITY like '%o' OR S.CITY like '%u'
ORDER BY S.CITY ASC;
```
