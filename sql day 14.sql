-- day 02
SELECT name, age, course
FROM Student;

SELECT *
FROM Student
WHERE age > 20;

SELECT *
FROM Student
WHERE city = 'Delhi';

SELECT *
FROM Student
WHERE age BETWEEN 20 AND 22;

SELECT *
FROM Student
WHERE course = 'BCA';

SELECT *
FROM Student
WHERE course IN ('BCA', 'BTech');

SELECT *
FROM Student
WHERE name LIKE 'A%';

SELECT *
FROM Student
WHERE name LIKE '%a';

SELECT *
FROM Student
WHERE name LIKE '%h%';

SELECT *
FROM Student
WHERE age > 20
AND city = 'Delhi';

SELECT *
FROM Student
WHERE city = 'Delhi'
OR city = 'Meerut';

UPDATE Student
SET fees = 55000
WHERE student_id = 2;


UPDATE Student
SET city = 'Noida'
WHERE student_id = 1;

DELETE FROM Student
WHERE student_id = 5;