SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submission
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;