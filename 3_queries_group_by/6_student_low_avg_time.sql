SELECT students.name AS student,
       avg(assignment_submissions.duration) AS avg_assignment_duration,
       avg(assignments.duration) AS avg_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_duration;