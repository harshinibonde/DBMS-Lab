INSERT INTO UNIVERSITY (university_id, name) VALUES 
(1, 'University1'),
(2, 'University2'),
(3, 'University3'),
(4, 'University4'),
(5, 'University5'),
(6, 'University6'),
(7, 'University7');

INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(1, 'Computer Science', 'Taylor', 100000, 1),
(2, 'Mathematics', 'Watson', 90000, 1),
(3, 'Physics', 'Newton', 95000, 1),
(4, 'Biology', 'Darwin', 85000, 1),
(5, 'Chemistry', 'Curie', 92000, 1),
(6, 'English', 'Shakespeare', 80000, 1),
(7, 'History', 'Roosevelt', 78000, 1);

INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary) VALUES 
(1, 'John Doe', 1, TRUE, 80000),
(2, 'Jane Smith', 1, FALSE, 75000),
(3, 'Bob Johnson', 2, TRUE, 82000),
(4, 'Alice Brown', 2, FALSE, 76000),
(5, 'Charlie Davis', 3, TRUE, 81000),
(6, 'Eva Wilson', 3, FALSE, 77000),
(7, 'Frank Miller', 4, TRUE, 79000);

INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('CS-101', 'Introduction to Programming', 1, 3),
('CS-201', 'Data Structures', 1, 4),
('MATH-101', 'Calculus I', 2, 4),
('MATH-201', 'Linear Algebra', 2, 3),
('PHY-101', 'Mechanics', 3, 4),
('PHY-201', 'Quantum Physics', 3, 4),
('BIO-101', 'Introduction to Biology', 4, 4);
