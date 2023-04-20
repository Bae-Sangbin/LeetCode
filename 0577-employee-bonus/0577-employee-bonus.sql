# Write your MySQL query statement below


# 보너스가 1000 미만인 각 직원의 이름과 보너스 금액을 보고하는 SQL 쿼리를 작성하십시오.

SELECT 
    E.NAME, B.BONUS
FROM 
    Employee E LEFT JOIN Bonus B 
    ON E.empId = B.empId
WHERE BONUS IS NULL OR BONUS < 1000