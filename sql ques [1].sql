USE college;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales');

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);

INSERT INTO employee VALUES
(101, 'Rahul', 50000, 1),
(102, 'Amit', 40000, 1),
(103, 'Priya', 60000, 3),
(104, 'Neha', 45000, 5),
(105, 'Rohit', 55000, 3);

SELECT d.dept_id, d.dept_name
FROM department d
LEFT JOIN employee e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;