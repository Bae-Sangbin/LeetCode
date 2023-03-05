# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

WITH TBL1 AS
(SELECT MIN(ID)
FROM PERSON
GROUP BY EMAIL)

DELETE FROM Person
WHERE id NOT IN (SELECT *
                 FROM TBL1)

# DELETE p1 
# FROM Person p1
# inner join Person p2 on p1.email=p2.email
# where p1.id>p2.id
