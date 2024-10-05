
CREATE DATABASE student;

USE student;

CREATE TABLE student_inf(
    sid INT,
    sname VARCHAR(30),
    saddress TEXT,
    stream VARCHAR(40)
);

DESC student_inf;

INSERT INTO student.student_inf VALUES (91, "Akshay", "Pune", "computer");

SELECT * FROM student_inf;

INSERT INTO student_inf VALUES 
(92, "Vaibhav", "mumbai", "Civil"),
(93, "Rohit", "bengluru", "IT"),
(94, "Ravi", "surat", "DSML"),
(95, "Durga", "bhopal", "ENTC"),
(96, "Harshal", "indore", "Mechanical");

SELECT * FROM student_inf;