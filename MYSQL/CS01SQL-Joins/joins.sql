-- To start the MySQL terminal, use the following command:
-- mysql -u root -p


CREATE DATABASE University_case_study;

-- DROP DATABASE IF EXISTS University_case_study;
USE University_case_study;

CREATE Table Students(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Students (StudentID, FirstName, LastName, Email) VALUES
(1, 'John', 'Doe', 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', 'jane.smith@gmail.com'),
(3, 'Alice', 'Brown', 'alice.brown@gmail.com');
INSERT INTO Students (StudentID, FirstName, LastName, Email) VALUES
(4, 'Bob', 'Johnson', 'bob.johnson@gmail.com'),
(5, 'Emily', 'Davis', 'emily.davis@gmail.com'),
(6, 'Michael', 'Wilson', 'michael.wilson@gmail.com');

SELECT * FROM Students;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);
INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Mathematics', 3),
(102, 'Physics', 4),
(103, 'Literature', 2),

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(104, 'Chemistry', 4),
(105, 'Biology', 3),
(106, 'History', 3),
(107, 'Computer Science', 4);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

Sample Data:

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, 101, '2024-01-15'),
(2, 2, 102, '2024-01-17'),
(3, 3, 103, '2024-01-20'),
(4, 1, 103, '2024-01-18');


SELECT 
    s.FirstName, 
    s.LastName, 
    c.CourseName, 
    e.EnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN 
    Courses c ON e.CourseID = c.CourseID;


SELECT 
    s.FirstName, 
    s.LastName 
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.EnrollmentID IS NULL;


SELECT 
    c.CourseName, 
    COUNT(e.EnrollmentID) AS StudentCount
FROM 
    Courses c
LEFT JOIN 
    Enrollments e ON c.CourseID = e.CourseID
GROUP BY 
    c.CourseName;

SELECT 
    c.CourseName 
FROM 
    Courses c
INNER JOIN 
    Enrollments e ON c.CourseID = e.CourseID
WHERE 
    e.StudentID = 1;