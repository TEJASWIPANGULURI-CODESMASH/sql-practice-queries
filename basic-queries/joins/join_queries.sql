-- JOIN Queries Example

-- Create Students Table
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(50)
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT,
    course_name VARCHAR(50)
);

-- Create Enrollment Table
CREATE TABLE Enrollment (
    student_id INT,
    course_id INT
);

-- Insert Sample Data
INSERT INTO Students VALUES (1, 'Rahul', 'CSE');
INSERT INTO Students VALUES (2, 'Anjali', 'ECE');

INSERT INTO Courses VALUES (101, 'Database Systems');
INSERT INTO Courses VALUES (102, 'Data Structures');

INSERT INTO Enrollment VALUES (1, 101);
INSERT INTO Enrollment VALUES (2, 102);

-- INNER JOIN
SELECT s.name, c.course_name
FROM Students s
INNER JOIN Enrollment e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- LEFT JOIN
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;
