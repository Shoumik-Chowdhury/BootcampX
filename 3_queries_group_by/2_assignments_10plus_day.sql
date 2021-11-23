SELECT day, COUNT(assignments.*) AS assignment_total
FROM assignments
GROUP BY day
HAVING COUNT(assignments.*) >= 10
ORDER BY day ASC;