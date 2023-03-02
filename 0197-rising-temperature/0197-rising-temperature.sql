# Write your MySQL query statement below

#PK : id

# 이전 날짜(어제)에 비해 온도가 높은 모든 날짜의 Id를 찾는 SQL 쿼리를 작성하십시오.

WITH PREV_TEMP AS
(SELECT *, LAG(temperature,1) OVER(ORDER BY recordDate) AS PREV_TEMPERATURE,
 LAG(recordDate,1) OVER(ORDER BY recordDate) AS PREV_DATE 
FROM Weather)

SELECT A.ID
FROM Weather A JOIN PREV_TEMP B ON A.ID = B.ID
WHERE A.TEMPERATURE > B.PREV_TEMPERATURE AND DATEDIFF(A.recordDate,B.PREV_DATE) = 1 
