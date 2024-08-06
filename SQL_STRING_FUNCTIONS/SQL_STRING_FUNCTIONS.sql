USE COMPANY;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (employee_id, first_name, last_name, email, department, salary, hire_date) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'Sales', 60000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'Marketing', 65000.00, '2019-03-12'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 'IT', 75000.00, '2018-05-23'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 'HR', 70000.00, '2021-07-30'),
(5, 'Robert', 'Brown', 'robert.brown@example.com', 'Finance', 80000.00, '2017-11-02');


-- SQL STRING FUNCTONS
-- --------------------------------------------------------------------------:
-- 1)  UPPER and LOWER Functions

SELECT
    UPPER(first_name) AS upper_first_name,
    LOWER(last_name) AS lower_last_name
FROM employees;

-- ---------------------------------------------------------------------------------- 
-- 2)  CONCAT Function

SELECT
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

-- ----------------------------------------------------------------------------------
-- 3)   SUBSTRING Function
  
SELECT
    email,
    SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM employees;

SELECT
    email,
    SUBSTRING(email, 1,POSITION('.' IN email) -1) AS firstname
FROM employees;

SELECT
email,substring(email,1,5)
from employees;

-- ----------------------------------------------------------------------------------
-- 4) LENGTH function

SELECT
    first_name,
    LENGTH(first_name) AS first_name_length
FROM employees;

-- ----------------------------------------------------------------------------------
-- 5)  REPLACE Function

SELECT
    email,
    REPLACE(email, 'example.com', 'mycompany.com') AS new_email
FROM employees;

-- ----------------------------------------------------------------------------------
-- 6)  TRIM Function

SELECT
    department,
    TRIM(department) AS trimmed_department
FROM employees;

-- ----------------------------------------------------------------------------------
-- 7)  POSITION Function

SELECT
    email,
    POSITION('@' IN email) AS at_position
FROM employees;

-- ----------------------------------------------------------------------------------
-- 8) LEFT and RIGHT Functions

SELECT
    first_name,
    LEFT(first_name, 3) AS first_three_chars,
    last_name,
    RIGHT(last_name, 3) AS last_three_chars
FROM employees;

-- ----------------------------------------------------------------------------------

