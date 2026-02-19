-- Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade VARCHAR(5),
    major VARCHAR(50),
    gpa DECIMAL(3, 2),
    enrollment_date DATE
);

-- Insert sample data
INSERT INTO students (student_id, first_name, last_name, age, grade, major, gpa, enrollment_date)
VALUES 
    (1001, 'Alice', 'Cooper', 20, 'A', 'Computer Science', 3.85, '2023-09-01'),
    (1002, 'Bob', 'Taylor', 21, 'B+', 'Business', 3.45, '2022-09-01'),
    (1003, 'Charlie', 'Lee', 19, 'A-', 'Engineering', 3.72, '2024-09-01');
