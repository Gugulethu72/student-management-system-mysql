use student_management_system;

SELECT 
    full_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course_id = (
        SELECT course_id
        FROM courses
        WHERE title = 'Multimedia Computing'
    )
);