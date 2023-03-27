# Write your MySQL query statement below
SELECT CUSTOMER_ID, COUNT(visit_id) AS count_no_trans
FROM (SELECT V.*
FROM Visits V LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL) AS no_trans
GROUP BY CUSTOMER_ID

