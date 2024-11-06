create database oares_university;

use oares_university;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE
);


INSERT INTO Students (student_id, first_name, last_name, age, gender, enrollment_date) VALUES
(1, 'John', 'Doe', 20, 'M', '2022-09-01'),
(2, 'Jane', 'Smith', 19, 'F', '2023-01-15'),
(3, 'Michael', 'Johnson', 21, 'M', '2022-05-21'),
(4, 'Emily', 'Davis', 22, 'F', '2021-08-10'),
(5, 'Chris', 'Brown', 23, 'M', '2020-01-10'),
(6, 'Olivia', 'Wilson', 20, 'F', '2022-09-01'),
(7, 'Liam', 'Miller', 18, 'M', '2023-02-01'),
(8, 'Emma', 'Taylor', 19, 'F', '2023-03-10'),
(9, 'Noah', 'Anderson', 20, 'M', '2021-11-05'),
(10, 'Ava', 'Thomas', 22, 'F', '2020-09-15'),
(11, 'Isabella', 'Jackson', 21, 'F', '2021-07-21'),
(12, 'Mason', 'White', 20, 'M', '2022-01-15'),
(13, 'Sophia', 'Harris', 19, 'F', '2023-04-01'),
(14, 'Lucas', 'Martin', 21, 'M', '2021-10-20'),
(15, 'Mia', 'Thompson', 23, 'F', '2020-05-15'),
(16, 'Benjamin', 'Garcia', 18, 'M', '2023-06-05'),
(17, 'Charlotte', 'Martinez', 20, 'F', '2022-07-10'),
(18, 'Daniel', 'Robinson', 21, 'M', '2022-02-12'),
(19, 'Avery', 'Clark', 19, 'F', '2023-03-01'),
(20, 'Elijah', 'Rodriguez', 22, 'M', '2021-12-22'),
(21, 'Amelia', 'Lewis', 20, 'F', '2021-04-08'),
(22, 'Harper', 'Walker', 18, 'F', '2023-01-10'),
(23, 'Ethan', 'Hall', 21, 'M', '2022-09-01'),
(24, 'Scarlett', 'Allen', 19, 'F', '2023-07-15'),
(25, 'Alexander', 'Young', 22, 'M', '2021-10-10'),
(26, 'Zoey', 'Hernandez', 20, 'F', '2020-03-21'),
(27, 'William', 'King', 23, 'M', '2021-09-18'),
(28, 'Ella', 'Scott', 21, 'F', '2022-08-22'),
(29, 'David', 'Green', 19, 'M', '2023-05-10'),
(30, 'Lily', 'Adams', 20, 'F', '2021-07-01');

select * from students;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);


INSERT INTO Courses (course_id, course_name, course_description) VALUES
(101, 'Mathematics ', 'Introduction to Algebra, Geometry, and basic Trigonometry.'),
(102, 'Physics ', 'Basics of Mechanics, Thermodynamics, and Optics.'),
(103, 'Chemistry ', 'Fundamentals of Inorganic Chemistry and Lab Safety.'),
(104, 'Biology ', 'Study of Cell Structure, Evolution, and Basic Genetics.'),
(105, 'Computer Science ', 'Introduction to Programming and Computer Basics.'),
(106, 'History ', 'Overview of Ancient Civilizations and Major Historical Events.'),
(107, 'English Literature', 'Study of Classical and Modern Literature.'),
(108, 'Art History', 'Survey of Western and Eastern Art Movements.'),
(109, 'Psychology ', 'Introduction to Psychology and Human Behavior.'),
(110, 'Economics ', 'Basics of Microeconomics and Macroeconomics.'),
(111, 'Sociology ', 'Study of Society, Culture, and Social Relationships.'),
(112, 'Statistics ', 'Introduction to Statistical Methods and Probability.'),
(113, 'Political Science', 'Study of Political Systems, Theories, and Policies.'),
(114, 'Philosophy ', 'Introduction to Philosophy and Ethical Thought.'),
(115, 'Environmental Science', 'Basics of Ecology, Climate Change, and Conservation.');

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100)
);

-- Insert sample data into the Instructors table
INSERT INTO Instructors (instructor_id, first_name, last_name, department) VALUES
(1, 'Alice', 'Johnson', 'Mathematics'),
(2, 'Robert', 'Smith', 'Physics'),
(3, 'Jessica', 'Brown', 'Chemistry'),
(4, 'Michael', 'Davis', 'Biology'),
(5, 'Emily', 'Miller', 'Computer Science'),
(6, 'David', 'Wilson', 'History'),
(7, 'Sarah', 'Moore', 'English Literature'),
(8, 'Daniel', 'Taylor', 'Art History'),
(9, 'Laura', 'Anderson', 'Psychology'),
(10, 'James', 'Thomas', 'Economics'),
(11, 'Karen', 'Jackson', 'Sociology'),
(12, 'Steven', 'White', 'Statistics'),
(13, 'Megan', 'Harris', 'Political Science'),
(14, 'Ryan', 'Martin', 'Philosophy'),
(15, 'Olivia', 'Thompson', 'Environmental Science');

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    instructor_id INT,
    enrollment_date DATE,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);


 INSERT INTO Enrollments (enrollment_id, student_id, course_id, instructor_id, enrollment_date, grade) VALUES
(1, 1, 101, 1, '2022-09-01', 'A'),
(2, 2, 102, 2, '2023-01-15', 'B'),
(3, 3, 103, 3, '2022-05-21', 'C'),
(4, 4, 104, 4, '2021-08-10', 'A'),
(5, 5, 105, 5, '2020-01-10', 'B'),
(6, 6, 101, 1, '2022-09-01', 'A'),
(7, 7, 102, 2, '2023-02-01', 'B'),
(8, 8, 103, 3, '2023-03-10', 'A'),
(9, 9, 104, 4, '2021-11-05', 'C'),
(10, 10, 105, 5, '2020-09-15', 'B'),
(11, 11, 106, 6, '2021-07-21', 'A'),
(12, 12,107, 7, '2022-01-15', 'B'),
(13, 13, 108, 8, '2023-04-01', 'C'),
(14, 14, 109, 9, '2021-10-20', 'A'),
(15, 15, 110, 10, '2020-05-15', 'B'),
(16, 16, 111, 11, '2023-06-05', 'A'),
(17, 17, 112, 12, '2022-07-10', 'C'),
(18, 18, 113, 13, '2022-02-12', 'B'),
(19, 19, 114, 14, '2023-03-01', 'A'),
(20, 20, 115, 15, '2021-12-22', 'B'),
(21, 21, 101, 1, '2021-04-08', 'C'),
(22, 22, 102, 2, '2023-01-10', 'A'),
(23, 23, 103, 3, '2022-09-01', 'B'),
(24, 24, 112, 4, '2023-07-15', 'A'),
(25, 25, 105, 5, '2021-10-10', 'C'),
(26, 26, 106, 6, '2020-03-21', 'B'),
(27, 27, 115, 7, '2021-09-18', 'A'),
(28, 28, 108, 8, '2022-08-22', 'B'),
(29, 29, 109, 9, '2023-05-10', 'A'),
(30, 30, 110, 10, '2021-07-01', 'C');

-- --Write a query to list all students who enrolled in the current year.

SELECT 
    student_id,
    first_name,
    last_name,
    age,
    gender,
    enrollment_date
FROM
    Students
WHERE
    YEAR(enrollment_date) = '2023';

-- Retrieve the list of all unique courses.

SELECT DISTINCT
    course_name, course_id
FROM
    courses;

-- Find the names of all students who are 18 years or older

SELECT 
    *
FROM
    students
WHERE
    age >= 18;

-- Find the average age of students enrolled in each course.

SELECT 
    ROUND(AVG(age), 0), courses.course_name
FROM
    students
        JOIN
    enrollments ON students.student_id = enrollments.student_id
        JOIN
    courses ON courses.course_id = enrollments.course_id
GROUP BY courses.course_name;

-- Write a query to calculate the total number of students in each department taught by each instructor.

SELECT 
    i.first_name,
    i.last_name,
    i.instructor_id,
    i.department,
    COUNT(e.student_id) AS total_number
FROM
    enrollments e
        JOIN
    instructors i ON i.instructor_id = e.instructor_id
GROUP BY i.department , i.instructor_id , i.first_name , i.last_name;

-- List the  highest, and lowest grades for each course.

SELECT 
    c.course_name, MIN(grade) AS lowest, MAX(grade) AS highest
FROM
    enrollments e
        JOIN
    courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- Retrieve a list of students and the courses they are enrolled in.

SELECT 
    s.student_id, s.first_name, s.last_name, c.course_name
FROM
    enrollments e
        JOIN
    students s ON e.student_id = s.student_id
        JOIN
    courses c ON c.course_id = e.course_id
ORDER BY student_id;

-- Write a query to display the student names along with the names of their instructors.

SELECT 
    s.student_id,
    s.first_name AS Student_name,
    i.first_name AS instructor_name
FROM
    students s
        JOIN
    enrollments e ON e.student_id = s.student_id
        JOIN
    instructors i ON i.instructor_id = e.instructor_id
ORDER BY s.student_id;

-- List all students and their grades for courses taught by a specific instructor.

SELECT 
    s.first_name, c.course_name, i.first_name, e.grade
FROM
    students s
        JOIN
    enrollments e ON e.student_id = s.student_id
        JOIN
    courses c ON c.course_id = e.course_id
        JOIN
    instructors i ON i.instructor_id = e.instructor_id;
    
    -- Display the names of instructors who are teaching more than 2 student.

SELECT 
    e.instructor_id,
    i.first_name,
    i.department,
    COUNT(student_id) total_students
FROM
    enrollments e
        JOIN
    instructors i ON e.instructor_id = i.instructor_id
GROUP BY instructor_id
HAVING total_students >= 2;

-- List the names of all students enrolled in the course with the highest number of enrollments.

SELECT 
    s.first_name, s.last_name
FROM
    enrollments e
        JOIN
    students s ON e.student_id = s.student_id
WHERE
    e.course_id = (SELECT 
            course_id
        FROM
            enrollments
        GROUP BY course_id
        ORDER BY COUNT(student_id) DESC
        LIMIT 1);


-- Write a query to find the course in which the highest  grade was awarded.

SELECT 
    c.course_name, MIN(grade) AS highest_grade
FROM
    enrollments e
        JOIN
    courses c ON e.course_id = c.course_id
GROUP BY c.course_name
HAVING highest_grade = 'A'
ORDER BY highest_grade;

-- Find the courses where more then three student have been enrolled with thier name 

SELECT 
    c.course_name, COUNT(e.student_id) AS total_student
FROM
    enrollments e
        JOIN
    courses c ON c.course_id = e.course_id
        JOIN
    students s ON e.student_id = s.student_id
GROUP BY c.course_name
HAVING COUNT(e.student_id) >= 3;

-- Retrieve the top 2 students with the highest grades in each course.


SELECT 
    *,
    CASE
        WHEN grade = 'A' THEN 1
        WHEN grade = 'B' THEN 2
        WHEN grade = 'c' THEN 3
        ELSE 0
    END AS number_grade
FROM
    (SELECT 
        s.student_id, s.first_name, c.course_name, e.grade
    FROM
        enrollments e
    JOIN students s ON s.student_id = e.student_id
    JOIN courses c ON e.course_id = c.course_id) a
HAVING number_grade <= 2;

-- Write a query to show the students who have the lowest grade in their respective courses.  

WITH RankedGrades AS (
    SELECT 
        e.course_id,
        s.student_id,
        s.first_name,
        s.last_name,
        e.grade,
        RANK() OVER (
            PARTITION BY e.course_id 
            ORDER BY 
                CASE e.grade
                    WHEN 'A' THEN 1
                    WHEN 'B' THEN 2
                    WHEN 'C' THEN 3
                    WHEN 'D' THEN 4
                    WHEN 'F' THEN 5
                END DESC
        ) AS grade_rank
    FROM 
        Enrollments e
    JOIN 
        Students s ON e.student_id = s.student_id
)

SELECT 
    course_id,
    student_id,
    first_name,
    last_name,
    grade
FROM 
    RankedGrades
WHERE 
    grade_rank = 1
ORDER BY 
    course_id;


