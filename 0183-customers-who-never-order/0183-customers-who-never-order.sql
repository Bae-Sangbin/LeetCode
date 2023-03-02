# Write your MySQL query statement below

#Primary Key : id
#Foreign key : customerId

SELECT A.NAME AS Customers
FROM Customers A LEFT JOIN Orders B ON A.ID = B.CUSTOMERID
WHERE B.ID IS NULL;



