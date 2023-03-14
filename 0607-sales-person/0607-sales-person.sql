# Write your MySQL query statement below
# sales_id is the primary key column for SalesPerson table.
# com_id is the primary key column for Company table.
# order_id is the primary key column for Orders table.
# com_id is a foreign key to com_id from the Company table.
# sales_id is a foreign key to sales_id from the SalesPerson table.

# 이름이 "RED"인 회사와 관련된 주문이 없는 모든 영업 사원의 이름을 보고하는 SQL 쿼리를 작성하십시오.

SELECT s.name
FROM SalesPerson s
WHERE s.name NOT IN (
SELECT s.name
FROM orders o JOIN company c ON o.com_id = c.com_id  
JOIN SalesPerson s ON o.sales_id = s.sales_id
WHERE c.name ='RED')
