### Case Study: **Managing a University Database Using SQL Joins**

---

#### **Scenario Overview**
A university manages data on its students, courses, and enrollments. The database consists of three key tables:

1. **Students**
   - Contains information about students enrolled in the university.
   ```sql
   CREATE TABLE Students (
       StudentID INT PRIMARY KEY,
       FirstName VARCHAR(50),
       LastName VARCHAR(50),
       Email VARCHAR(100)
   );
   ```

   **Sample Data:**
   | StudentID | FirstName | LastName | Email               |
   |-----------|-----------|----------|---------------------|
   | 1         | John      | Doe      | john.doe@gmail.com  |
   | 2         | Jane      | Smith    | jane.smith@gmail.com|
   | 3         | Alice     | Brown    | alice.brown@gmail.com|

2. **Courses**
   - Contains information about courses offered by the university.
   ```sql
   CREATE TABLE Courses (
       CourseID INT PRIMARY KEY,
       CourseName VARCHAR(100),
       Credits INT
   );
   ```

   **Sample Data:**
   | CourseID | CourseName        | Credits |
   |----------|-------------------|---------|
   | 101      | Mathematics       | 3       |
   | 102      | Physics           | 4       |
   | 103      | Literature        | 2       |

3. **Enrollments**
   - Tracks which students are enrolled in which courses.
   ```sql
   CREATE TABLE Enrollments (
       EnrollmentID INT PRIMARY KEY,
       StudentID INT,
       CourseID INT,
       EnrollmentDate DATE,
       FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
       FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
   );
   ```

   **Sample Data:**
   | EnrollmentID | StudentID | CourseID | EnrollmentDate |
   |--------------|-----------|----------|----------------|
   | 1            | 1         | 101      | 2024-01-15     |
   | 2            | 2         | 102      | 2024-01-17     |
   | 3            | 3         | 103      | 2024-01-20     |
   | 4            | 1         | 103      | 2024-01-18     |

---

#### **Tasks and Queries**

1. **Retrieve all students and their enrolled courses**
   - Use an **INNER JOIN** to match students with their enrolled courses.
   ```sql
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
   ```

   **Result:**
   | FirstName | LastName | CourseName   | EnrollmentDate |
   |-----------|----------|--------------|----------------|
   | John      | Doe      | Mathematics  | 2024-01-15     |
   | Jane      | Smith    | Physics      | 2024-01-17     |
   | Alice     | Brown    | Literature   | 2024-01-20     |
   | John      | Doe      | Literature   | 2024-01-18     |

---

2. **List students who are not enrolled in any courses**
   - Use a **LEFT JOIN** to find students without any matching records in the `Enrollments` table.
   ```sql
   SELECT 
       s.FirstName, 
       s.LastName 
   FROM 
       Students s
   LEFT JOIN 
       Enrollments e ON s.StudentID = e.StudentID
   WHERE 
       e.EnrollmentID IS NULL;
   ```

   **Result:** *(No results for the given data)*

---

3. **Show all courses and the number of students enrolled in each**
   - Use an **OUTER JOIN** and **GROUP BY** to aggregate results.
   ```sql
   SELECT 
       c.CourseName, 
       COUNT(e.EnrollmentID) AS StudentCount
   FROM 
       Courses c
   LEFT JOIN 
       Enrollments e ON c.CourseID = e.CourseID
   GROUP BY 
       c.CourseName;
   ```

   **Result:**
   | CourseName   | StudentCount |
   |--------------|--------------|
   | Mathematics  | 1            |
   | Physics      | 1            |
   | Literature   | 2            |

---

4. **Find all courses a specific student is enrolled in**
   - Use a parameterized query with **INNER JOIN**.
   ```sql
   SELECT 
       c.CourseName 
   FROM 
       Courses c
   INNER JOIN 
       Enrollments e ON c.CourseID = e.CourseID
   WHERE 
       e.StudentID = 1;
   ```

   **Result:**
   | CourseName   |
   |--------------|
   | Mathematics  |
   | Literature   |

---

5. **List students and their courses, including those with no enrollments**
   - Use a **FULL OUTER JOIN** to combine both scenarios.
   ```sql
   SELECT 
       s.FirstName, 
       s.LastName, 
       c.CourseName
   FROM 
       Students s
   FULL OUTER JOIN 
       Enrollments e ON s.StudentID = e.StudentID
   FULL OUTER JOIN 
       Courses c ON e.CourseID = c.CourseID;
   ```

   **Result:** Combines all possible student-course relations, including those without matches.

---

### Key Learnings
- **INNER JOIN:** Combines rows from two tables when there is a match.
- **LEFT JOIN:** Returns all rows from the left table, with NULLs for no matches in the right table.
- **RIGHT JOIN:** Opposite of LEFT JOIN.
- **FULL OUTER JOIN:** Combines LEFT and RIGHT JOINs, including all unmatched rows.
- **CROSS JOIN:** Produces the Cartesian product of two tables.
