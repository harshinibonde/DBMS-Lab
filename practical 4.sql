CREATE TABLE departments (
    deptno INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments (deptno, dept_name, location)
VALUES
(10, 'ACCOUNTING', 'New York'),
(20, 'RESEARCH', 'Dallas'),
(30, 'SALES', 'Chicago'),
(40, 'OPERATIONS', 'Boston');

CREATE TABLE emp (
    emp_no INT PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender ENUM('M','F') NOT NULL,
    hire_date DATE NOT NULL,
    salary FLOAT DEFAULT 7850.00,
    job VARCHAR(20) NOT NULL,
    deptno INT,
    manager_id INT,
    FOREIGN KEY (deptno) REFERENCES departments(deptno)
);

INSERT INTO emp (emp_no, birth_date, first_name, last_name, gender, hire_date, salary, job, deptno, manager_id)
VALUES
(7839, '1955-11-17', 'John', 'Smith', 'M', '1990-06-09', 5000.00, 'MANAGER', 10, NULL),
(7566, '1960-02-21', 'James', 'Brown', 'M', '1991-04-02', 2450.00, 'CLERK', 20, 7839),
(7654, '1963-12-09', 'Scott', 'Allen', 'M', '1989-06-04', 2975.00, 'SALESMAN', 30, 7839),
(7934, '1970-12-03', 'Adam', 'Martin', 'M', '1993-07-09', 1300.00, 'CLERK', 30, 7839),
(7788, '1961-05-23', 'Alan', 'Walker', 'M', '1990-09-14', 3000.00, 'ANALYST', 20, 7566),
(7902, '1958-11-07', 'Alice', 'Jones', 'F', '1988-12-12', 1600.00, 'CLERK', 30, 7654),
(7876, '1962-01-14', 'George', 'Black', 'M', '1989-01-20', 1100.00, 'CLERK', 40, 7566),
(7844, '1965-09-28', 'Diana', 'White', 'F', '1992-05-21', 2950.00, 'SALESMAN', 30, 7654),
(7900, '1972-06-19', 'Bob', 'King', 'M', '1991-08-18', 850.00, 'CLERK', 10, 7839);



SELECT first_name, last_name
FROM emp
WHERE first_name LIKE 'a%' AND LENGTH(first_name) >= 3;

SELECT dept_name, location
FROM departments
WHERE location IN ('Dallas', 'New York', 'Chicago');

SELECT first_name, last_name
FROM emp
WHERE job != 'MANAGER';


