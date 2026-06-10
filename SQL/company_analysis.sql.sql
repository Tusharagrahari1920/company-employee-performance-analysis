-- CREATE DATABASE company_analysis;
-- USE company_analysis;

-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     gender VARCHAR(10),
--     department_id INT,
--     joining_date DATE,
--     city VARCHAR(50)
-- );

-- CREATE TABLE departments (
--     department_id INT PRIMARY KEY,
--     department_name VARCHAR(50)
-- );

-- CREATE TABLE performance (
--     emp_id INT,
--     performance_score INT,
--     attendance_percentage DECIMAL(5,2),
--     projects_completed INT
-- );

-- CREATE TABLE salary (
--     emp_id INT,
--     monthly_salary INT,
--     bonus INT
-- );

-- SHOW TABLES;

-- INSERT INTO departments VALUES
-- (1, 'HR'),
-- (2, 'IT'),
-- (3, 'Finance'),
-- (4, 'Sales'),
-- (5, 'Marketing');

-- SELECT * FROM departments;

-- INSERT INTO employees VALUES
-- (101, 'Aman', 25, 'Male', 2, '2022-01-10', 'Lucknow'),
-- (102, 'Priya', 28, 'Female', 1, '2021-03-15', 'Delhi'),
-- (103, 'Rahul', 30, 'Male', 3, '2020-07-20', 'Mumbai'),
-- (104, 'Sneha', 27, 'Female', 2, '2022-05-12', 'Pune'),
-- (105, 'Vikas', 35, 'Male', 4, '2019-09-01', 'Kanpur'),
-- (106, 'Neha', 26, 'Female', 5, '2023-01-18', 'Lucknow'),
-- (107, 'Arjun', 29, 'Male', 2, '2021-11-11', 'Noida'),
-- (108, 'Kavya', 24, 'Female', 4, '2023-04-22', 'Jaipur'),
-- (109, 'Tushar', 23, 'Male', 5, '2024-06-10', 'Lucknow'),
-- (110, 'Lucky', 25, 'Male', 4, '2025-07-17', 'Kanpur');

-- SELECT * FROM employees;

-- INSERT INTO performance VALUES
-- (101, 85, 96.5, 5),
-- (102, 90, 98.0, 6),
-- (103, 78, 92.0, 4),
-- (104, 88, 95.0, 5),
-- (105, 70, 89.0, 3),
-- (106, 92, 99.0, 7),
-- (107, 81, 94.0, 4),
-- (108, 87, 97.0, 5),
-- (109, 89, 97.5, 6),
-- (110, 76, 91.0, 3);

-- SELECT * FROM performance;

-- INSERT INTO salary VALUES
-- (101, 50000, 5000),
-- (102, 60000, 7000),
-- (103, 75000, 9000),
-- (104, 55000, 6000),
-- (105, 65000, 8000),
-- (106, 52000, 4000),
-- (107, 58000, 6500),
-- (108, 54000, 5000),
-- (109, 57000, 5500),
-- (110, 48000, 3500);

-- SELECT * FROM salary;

-- SELECT 
--     e.emp_id,
--     e.name,
--     d.department_name,
--     e.city
-- FROM employees e
-- JOIN departments d
-- ON e.department_id = d.department_id;

-- SELECT 
--     d.department_name,
--     AVG(s.monthly_salary) AS avg_salary
-- FROM employees e
-- JOIN departments d
-- ON e.department_id = d.department_id
-- JOIN salary s
-- ON e.emp_id = s.emp_id
-- GROUP BY d.department_name;

-- SELECT 
--     e.name,
--     p.performance_score,
--     p.projects_completed
-- FROM employees e
-- JOIN performance p
-- ON e.emp_id = p.emp_id
-- ORDER BY p.performance_score DESC;

-- SELECT 
--     e.name,
--     s.monthly_salary
-- FROM employees e
-- JOIN salary s
-- ON e.emp_id = s.emp_id
-- ORDER BY s.monthly_salary DESC
-- LIMIT 5;

-- SELECT *
-- FROM employees
-- WHERE city = 'Lucknow';