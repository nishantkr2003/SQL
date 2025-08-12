-- Rising Temperature
SELECT w1.Id
FROM Weather w1
WHERE EXISTS (
  SELECT 1 FROM Weather w2 WHERE w2.Id > w1.Id AND w2.Temperature > w1.Temperature
);
