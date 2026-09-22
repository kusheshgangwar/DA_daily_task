-- day 03
SELECT COUNT(*) AS total_students
FROM Student;

SELECT MAX(fees) AS maximum_fees
FROM Student;

SELECT MIN(fees) AS minimum_fees
FROM Student;

SELECT AVG(fees) AS average_fees
FROM Student;

SELECT SUM(fees) AS total_fees
FROM Student;

SELECT DISTINCT city
FROM Student;

SELECT *
FROM Student
ORDER BY fees ASC;

SELECT *
FROM Student
ORDER BY fees DESC;

SELECT city, COUNT(*) AS total_students
FROM Student
GROUP BY city;

SELECT course, COUNT(*) AS total_students
FROM Student
GROUP BY course;

SELECT course, AVG(fees) AS average_fees
FROM Student
GROUP BY course;

SELECT course, COUNT(*) AS total_students
FROM Student
GROUP BY course
HAVING COUNT(*) > 1;

SELECT UPPER(name) AS student_name
FROM Student;

SELECT LOWER(name) AS student_name
FROM Student;

SELECT name, LENGTH(name) AS name_length
FROM Student;