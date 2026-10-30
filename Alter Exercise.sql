CREATE DATABASE company_training;
USE company_training;

CREATE TABLE departments (
	department_id INT NOT NULL,
    dept_name VARCHAR(80) NOT NULL,
    city VARCHAR(60)
);

CREATE TABLE employees (
	employee_id INT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(120),
    department_id INT NOT NULL,
    salary DECIMAL(10,2),
    status VARCHAR(20)
);

SELECT * FROM departments;
SELECT * FROM employees;

-- 1
ALTER TABLE departments ADD PRIMARY KEY (department_id);

-- 2
ALTER TABLE employees ADD PRIMARY KEY (employee_id);

-- 3
ALTER TABLE departments ADD COLUMN location VARCHAR(100);

-- 4
ALTER TABLE departments CHANGE COLUMN dept_name department_name VARCHAR(80);

-- 5
ALTER TABLE employees CHANGE COLUMN salary salary DECIMAL (12,2) NOT NULL;
DESCRIBE employees;

-- 6
ALTER TABLE staff MODIFY COLUMN status VARCHAR(20) DEFAULT 'Active';

-- 7
ALTER TABLE employees MODIFY COLUMN email VARCHAR(120) UNIQUE;

-- 8
RENAME TABLE employees TO staff;

-- 9
ALTER TABLE staff ADD CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id);
SHOW INDEX FROM staff;

-- 10
ALTER TABLE staff DROP INDEX email;
DESCRIBE staff;

-- 11
ALTER TABLE staff DROP FOREIGN KEY fk_dept;
SELECT * FROM staff;

-- 12
ALTER TABLE staff DROP PRIMARY KEY;

-- 13
ALTER TABLE staff ADD PRIMARY KEY (employee_id);

-- 14
SELECT * FROM departments;
ALTER TABLE departments DROP COLUMN location;

-- 15
CREATE DATABASE company_management;
RENAME TABLE company_training.departments TO company_management.departments;
RENAME TABLE company_training.staff TO company_management.staff;
DROP DATABASE company_training;

SELECT * FROM company_management.staff;

