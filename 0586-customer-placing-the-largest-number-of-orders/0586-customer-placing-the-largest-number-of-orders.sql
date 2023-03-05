# Write your MySQL query statement below
# order_number : PK

SELECT Customer_number
FROM Orders
GROUP BY CUSTOMER_number
Order by COUNT(*) DESC
LIMIT 1;