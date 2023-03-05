# Write your MySQL query statement below

#PK : id

# 이전 날짜(어제)에 비해 온도가 높은 모든 날짜의 Id를 찾는 SQL 쿼리를 작성하십시오.

# WITH PREV_TEMP AS
# (SELECT *, LAG(recordDate,1) OVER(ORDER BY recordDate) AS PREV_DATE,
#  LAG(temperature,1) OVER(ORDER BY recordDate) AS PREV_TEMPERATURE
#  FROM Weather)

# SELECT ID
# FROM PREV_TEMP
# WHERE TEMPERATURE > PREV_TEMPERATURE 
# AND DATEDIFF(recordDate,PREV_DATE) = 1 


#버전 1
SELECT w1.id
FROM Weather w1 JOIN Weather w2 ON w1.Temperature > w2.Temperature
AND DATEDIFF(w1.recordDate, w2.recordDate) = 1;