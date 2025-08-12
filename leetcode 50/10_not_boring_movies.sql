-- Not Boring Movies
-- Order by parity of id first (even before odd), then by rating desc
SELECT *
FROM Movies
ORDER BY (id % 2), rating DESC;
