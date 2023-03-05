# Write your MySQL query statement below

# PK : product_id
# low_fats는 ('Y', 'N') 유형의 ENUM입니다. 여기서 'Y'는 이 제품이 저지방임을 의미하고 'N'은 그렇지 않음을 의미합니다.
# recyclable은 유형('Y', 'N')의 ENUM입니다. 여기서 'Y'는 이 제품이 재활용 가능함을 의미하고 'N'은 그렇지 않음을 의미합니다.

# 저지방 및 재활용 가능한 제품의 ID를 찾는 SQL 쿼리를 작성하십시오.

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'