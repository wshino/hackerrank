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
