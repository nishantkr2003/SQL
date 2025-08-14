-- Find Total Time Spent by Each Employee
SELECT employee_id, SUM(TIMESTAMPDIFF(SECOND, join_time, leave_time)) AS total_seconds
FROM EmployeeTime
GROUP BY employee_id;
