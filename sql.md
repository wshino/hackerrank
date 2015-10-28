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
