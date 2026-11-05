DROP DATABASE IF EXISTS training_functions;
CREATE DATABASE training_functions;
USE training_functions;

CREATE TABLE CourseEnrollments (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(40),
LastName VARCHAR(40),
CourseName VARCHAR(40),
Fee DECIMAL(10,2),
EnrollmentDate DATE,
CompletionDate DATE
);

INSERT INTO CourseEnrollments
(StudentID, FirstName, LastName, CourseName, Fee, EnrollmentDate, CompletionDate)
VALUES
(101, 'aman', 'Sharma', 'Python', 12500.75, '2026-01-05', '2026-03-20'),
(102, 'priya', 'Verma', 'MySQL', 9800.40, '2026-01-12', '2026-02-28'),
(103, 'rahul', 'Singh', 'Python', 15750.90, '2026-02-01', '2026-04-15'),
(104, 'neha', 'Gupta', 'Power BI', 11200.25, '2026-02-10', '2026-05-05'),
(105, 'ishita', 'Kapoor', 'MySQL', 8900.60, '2026-03-03', '2026-04-22'),
(106, 'arjun', 'Mehta', 'Python', 13650.15, '2026-03-15', '2026-06-10'),
(107, 'simran', 'Joshi', 'Power BI', 10400.95, '2026-04-01', '2026-06-30'),
(108, 'vikas', 'Rao', 'MySQL', 7600.50, '2026-04-18', '2026-05-29'),
(109, 'kiran', 'Malik', 'Python', 14999.99, '2026-05-02', '2026-07-25'),
(110, 'rohan', 'Sethi', 'Power BI', 11950.35, '2026-05-20', '2026-08-14');
SELECT * FROM CourseEnrollments;

-- 1
SELECT
CONCAT(UPPER(FirstName) , ' ' , UPPER(LastName)) AS FullName
FROM CourseEnrollments;

-- 2
SELECT
CONCAT(UPPER(SUBSTRING(FirstName, 1 , 1)), SUBSTRING(FirstName, 2), ' ', LastName) AS FullName
FROM CourseEnrollments;

-- 3
SELECT
CONCAT(UPPER(LEFT(CourseName, 3)), '-' , StudentID)
FROM CourseEnrollments;

-- 4
SELECT
REVERSE(FirstName) AS Reverse_name, CHAR_LENGTH(FirstName) AS Character_count
FROM CourseEnrollments;

-- 5
SELECT
FirstName, LOCATE('a', FirstName) AS A_location
FROM CourseEnrollments;

-- 6
SELECT
UPPER(REPLACE(Firstname , 'a' , 'o')) AS replace_a_o
FROM CourseEnrollments;

-- 7
SELECT
LPAD(FirstName , 12 , '0') AS pad_left
FROM CourseEnrollments;

-- 8
SELECT
CONCAT(RIGHT(CourseName , 2) , '-' , LEFT(FirstName , 2)) AS course_label
FROM CourseEnrollments;

-- 9
SELECT
CONCAT(UPPER(SUBSTRING(FirstName, 1, 3)), LOWER(RIGHT(LastName, 2))) AS Name_upper_lower
FROM CourseEnrollments;

-- 10
SELECT
ROUND(Fee, 1) AS Round_1, ROUND(Fee, 0) AS Round_whole_no
FROM CourseEnrollments;

-- 11
SELECT
CEIL(Fee), FLOOR(Fee)
FROM CourseEnrollments;

-- 12
SELECT
Fee, MOD(Fee, 500) AS Mod_fee
FROM CourseEnrollments;

-- 13
SELECT
ABS(Fee - 10000) AS Differ_abs
FROM CourseEnrollments;

-- 14
SELECT
ROUND(Fee * 1.18 , 2) AS Fee_round
FROM CourseEnrollments;

-- 15
SELECT
FORMAT(Fee, 2) AS Fee_formatted
FROM CourseEnrollments;

-- 16
SELECT
YEAR(EnrollmentDate) AS Year, MONTHNAME(EnrollmentDate) AS Month_name, DAYNAME(EnrollmentDate) AS Day_name
FROM CourseEnrollments;

-- 17
SELECT
DATE_FORMAT(EnrollmentDate, '%d/%m/%Y') AS Date_enroll, DATE_FORMAT(CompletionDate, '%M %d, %Y') AS Date_completion
FROM CourseEnrollments;

-- 18
SELECT
TIMESTAMPDIFF(day, EnrollmentDate, CompletionDate) AS No_of_days
FROM CourseEnrollments;

-- 19
SELECT
DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 MONTH), INTERVAL 10 DAY) AS New_date
FROM CourseEnrollments;

-- 20
SELECT
DATE_ADD(CompletionDate, INTERVAL -7 DAY) AS New_date
FROM CourseEnrollments;

-- 21
SELECT
TIMESTAMPDIFF(YEAR, EnrollmentDate, CompletionDate)
FROM CourseEnrollments;

-- 22
SELECT
DATE_ADD(DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 YEAR), INTERVAL 2 MONTH), INTERVAL 5 DAY) AS New_date
FROM CourseEnrollments;

-- 23
SELECT
EnrollmentDate, DAYNAME(EnrollmentDate), CompletionDate, DAYNAME(CompletionDate)
FROM CourseEnrollments;

-- 24
SELECT
TIMESTAMPDIFF(DAY, EnrollmentDate, CURDATE()) AS No_of_days
FROM CourseEnrollments;

-- 25
SELECT
DATE_FORMAT(DATE_ADD(CompletionDate, INTERVAL 15 DAY), '%d/%m/%Y') AS New_date
FROM CourseEnrollments;


