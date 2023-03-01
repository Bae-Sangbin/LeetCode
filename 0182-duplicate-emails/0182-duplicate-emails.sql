# Write your MySQL query statement below
SELECT DISTINCT Email
FROM Person
GROUP BY EMAIL
HAVING COUNT(*) >= 2