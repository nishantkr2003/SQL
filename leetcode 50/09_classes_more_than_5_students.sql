-- Classes More Than 5 Students
SELECT class
FROM Students
GROUP BY class
HAVING COUNT(*) > 5;
