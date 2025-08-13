-- Find Customer Referee
SELECT c.Name AS referee
FROM Customers c
WHERE c.Id IN (SELECT RefereeId FROM Customers WHERE RefereeId IS NOT NULL);
