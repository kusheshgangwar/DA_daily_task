-- day 01
CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Delhi',
    course VARCHAR(50) NOT NULL,
    fees DECIMAL(10,2)
);

DESC Student;
ALTER TABLE Student
ADD phone VARCHAR(15);

ALTER TABLE Student
MODIFY phone VARCHAR(20);

ALTER TABLE Student
MODIFY phone VARCHAR(20);

INSERT INTO Student
(student_id, name, email, age, city, course, fees)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 20, 'Delhi', 'BCA', 45000),
(2, 'Aman', 'aman@gmail.com', 21, 'Meerut', 'BCA', 50000),
(3, 'Priya', 'priya@gmail.com', 19, 'Noida', 'BBA', 40000),
(4, 'Neha', 'neha@gmail.com', 22, 'Delhi', 'BTech', 75000),
(5, 'Rohit', 'rohit@gmail.com', 20, 'Ghaziabad', 'BCA', 48000);

SELECT * FROM Student;
TRUNCATE TABLE Student;