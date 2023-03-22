# Write your MySQL query statement below
SELECT user_id AS buyer_id, join_date,
COUNT(order_id) AS orders_in_2019
FROM Users LEFT JOIN (SELECT order_id, buyer_id
                      FROM Orders
                      WHERE YEAR(order_date) = 2019) TBL ON user_id = buyer_id 
GROUP BY user_id;