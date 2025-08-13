-- Swap Salary (example problem that toggles Sex values)
UPDATE Salary
SET Sex = CASE WHEN Sex = 'M' THEN 'F' WHEN Sex = 'F' THEN 'M' ELSE Sex END
WHERE Sex IN ('M','F');
-- LeetCode usually expects SELECT after UPDATE; adjust per problem statement.
