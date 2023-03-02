# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

WITH TBL1 AS
(SELECT MIN(ID)
FROM PERSON
GROUP BY EMAIL)
DELETE FROM Person
WHERE id not in (SELECT *
                 FROM TBL1)