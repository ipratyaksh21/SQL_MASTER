CREATE TABLE TRIANGLE(
A INT, 
B INT,
C INT);


INSERT INTO TRIANGLE
VALUES (20,20,23),(20,20,20),(20,21,22),(13,14,30);

SELECT * FROM TRIANGLE;




SELECT 
CASE 
          
           WHEN (A+B)<=C OR (B+C)<=A OR (A+C)<=B  THEN 'Not A Triangle'
           WHEN (A=B AND B<>C) OR (B=C AND A<>C) OR (A=C AND B<>C) THEN 'Isosceles'
           WHEN A=B AND A=C  THEN 'Equilateral'
           WHEN A NOT IN (B,C) THEN 'Scalene'         
           ELSE 'SOMETHING ELSE'
        
END 
FROM TRIANGLE;


