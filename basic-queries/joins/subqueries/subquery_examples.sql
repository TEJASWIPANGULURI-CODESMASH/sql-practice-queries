-- Subquery Examples

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO Employees VALUES (1, 'Rahul', 50000, 'IT');
INSERT INTO Employees VALUES (2, 'Anjali', 60000, 'HR');
INSERT INTO Employees VALUES (3, 'Kiran', 55000, 'IT');
INSERT INTO Employees VALUES (4, 'Sneha', 70000, 'Finance');

-- Find employees earning above average salary
SELECT name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- Find employees in the same department as Rahul
SELECT name, department
FROM Employees
WHERE department = (
    SELECT department
    FROM Employees
    WHERE name = 'Rahul'
);
