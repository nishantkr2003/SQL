-- Combine Two Tables
SELECT p.FirstName, p.LastName, IFNULL(a.City,'NULL') AS City, IFNULL(a.State,'NULL') AS State
FROM Person p
LEFT JOIN Address a ON p.PersonId = a.PersonId;
