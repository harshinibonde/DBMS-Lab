CREATE TABLE UNIVERSITY (
    university_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE DEPARTMENT (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    building VARCHAR(50),
    budget DECIMAL(12, 2),
    university_id INT,
    FOREIGN KEY (university_id) REFERENCES UNIVERSITY(university_id)
);

CREATE TABLE INSTRUCTOR (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT,
    is_hod BOOLEAN DEFAULT FALSE,
    salary DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENT(dept_id)
);

CREATE TABLE COURSE (
    course_id VARCHAR(8) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    dept_id INT,
    credits INT,
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENT(dept_id)
);
