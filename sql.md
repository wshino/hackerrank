

## Advanced Select

### The PADS

```MySQL
SELECT CONCAT(Name, '(', SUBSTR(Occupation, 1, 1), ')') FROM Occupations ORDER BY Name ASC;
SELECT CONCAT('There are total ', COUNT(*), ' ', LCASE(Occupation), 's.') FROM Occupations GROUP BY Occupation ORDER BY COUNT(*) ASC;
```

### Occupations

```MySQL
SELECT
 MAX(CASE Occupation WHEN 'Doctor' THEN Name END ) AS Doctor,
 MAX(CASE Occupation WHEN 'Professor' THEN Name END ) AS Professor, 
 MAX(CASE Occupation WHEN 'Singer' THEN Name END ) AS Singer,
 MAX(CASE Occupation WHEN 'Actor' THEN Name END ) AS Actor
FROM (
  SELECT COUNT(*) AS c, t1.Occupation, t1.Name
  FROM Occupations AS t1 
    JOIN Occupations AS t2 
    ON t1.Name >= t2.Name 
    AND t1.Occupation = t2.Occupation
  GROUP BY t1.Occupation, t1.Name
  ORDER BY t1.Occupation ASC, t1.Name ASC
) AS t
GROUP BY c
ORDER BY c ASC
;
```

### Binary Search Tree

```MySQL
SELECT t1.N, 
  CASE COUNT(t1.P)  
  + (SELECT
     COUNT(*)
   FROM BST AS t2
   WHERE t1.N = t2.P
  ) WHEN 1 THEN 'Leaf'
    WHEN 2 THEN 'Root'
    WHEN 3 THEN 'Inner'
  END
FROM BST AS t1
GROUP BY t1.N
;
```

### Type of Triangle

```MySQL
SELECT
  CASE WHEN A + B <= C OR B + C <= A OR C + A <= B THEN 'Not A Triangle' 
       WHEN A = B AND B = C THEN 'Equilateral' 
       WHEN A = B OR B = C OR C = A THEN 'Isosceles'
       ELSE 'Scalene' 
  END
FROM Triangles;
```

## Advanced Join 

### Projects

```MySQL
SELECT
  Start_Date AS Project_Start_Date,
  (SELECT
     MIN(End_Date)
   FROM
     Projects AS p2
   WHERE
       p1.Start_Date <= p2.Start_Date
     AND NOT EXISTS (SELECT Task_ID FROM Projects AS p3 WHERE p3.Start_Date = p2.End_Date)) AS Project_End_Date
FROM
  Projects AS p1
WHERE
  NOT EXISTS (SELECT Task_ID FROM Projects AS p2 WHERE p1.Start_Date = p2.End_Date) -- Start cond
ORDER BY
  Project_End_Date - Project_Start_Date, Project_Start_Date
```

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
