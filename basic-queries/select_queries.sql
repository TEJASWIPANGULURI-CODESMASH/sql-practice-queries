-- Basic SELECT Queries

-- Create Students Table
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO Students VALUES (1, 'Rahul', 20, 'CSE');
INSERT INTO Students VALUES (2, 'Anjali', 21, 'ECE');
INSERT INTO Students VALUES (3, 'Kiran', 19, 'IT');

-- Select all students
SELECT * FROM Students;

-- Select specific columns
SELECT name, department FROM Students;

-- Filter students older than 20
SELECT * FROM Students
WHERE age > 20;


