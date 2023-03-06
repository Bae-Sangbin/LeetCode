# Write your MySQL query statement below

#Primary Key : id
#Foreign key : customerId

SELECT c.NAME AS Customers
FROM Customers c LEFT JOIN Orders o ON c.ID = o.CUSTOMERID
WHERE o.ID IS NULL;



