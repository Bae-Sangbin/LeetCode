# Write your MySQL query statement below

SELECT firstName, lastName, city, state
FROM PERSON A LEFT JOIN ADDRESS B ON A.personId = B.personId