-- Fix Names in a Table (capitalize first letter, lowercase rest)
-- Assuming column Name
SELECT CONCAT(UPPER(LEFT(Name,1)), LOWER(SUBSTRING(Name,2))) AS FixedName
FROM Customers;
