SELECT day, COUNT(assignments.*) AS assignment_total
FROM assignments
GROUP BY day
ORDER BY day ASC;