


## Aggregation

### Revising Aggregations - The Count Function

```Oracle
SELECT COUNT(ID) FROM City WHERE Population > 100000;
```

### Revising Aggregations - The Sum function

```Oracle
SELECT SUM(Population) FROM City WHERE District = 'California';
```

### Revising Aggregations - Averages

```Oracle
SELECT AVG(Population) FROM City WHERE District = 'California';
```

### Average Population

```MySQL
SELECT ROUND(AVG(Population)) FROM City;
```

### Japan Population

```MySQL
SELECT SUM(Population) FROM City WHERE CountryCode = 'JPN';
```
