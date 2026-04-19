SELECT AVG(I.Salary) AS AverageSalary
FROM Instructor I
JOIN Department D ON I.DeptID = D.DeptID
WHERE D.Name = 'Computer Science';

SELECT D.Name AS Department, AVG(I.Salary) AS AverageSalary
FROM Department D
JOIN Instructor I ON D.DeptID = I.DeptID
GROUP BY D.Name;

SELECT SUM(Salary) AS TotalSalary
FROM Instructor
WHERE Salary > 30000;

SELECT C.CourseID, C.Title, COUNT(E.StudentID) AS EnrolledStudents
FROM Course C
LEFT JOIN Enrollment E ON C.CourseID = E.CourseID
GROUP BY C.CourseID, C.Title;
