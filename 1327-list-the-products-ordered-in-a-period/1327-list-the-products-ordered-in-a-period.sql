# Write your MySQL query statement below
SELECT product_name, unit
FROM (
SELECT P.product_name, O.product_id, O.order_date, SUM(unit) AS unit
FROM Products P JOIN Orders O ON P.Product_id = O.product_id
WHERE O.order_date LIKE '2020-02%'
GROUP BY O.product_id ) TBL
WHERE unit >= 100