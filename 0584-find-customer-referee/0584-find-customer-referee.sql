# Write your MySQL query statement below
# id는 이 테이블의 기본 키 열입니다.
# 이 테이블의 각 행은 고객의 ID, 이름 및 추천한 고객의 ID를 나타냅니다.
# id = 2인 고객이 추천하지 않은 고객의 이름을 보고하는 SQL 쿼리를 작성하십시오.

SELECT name
FROM Customer
WHERE id NOT IN
(
SELECT id
FROM Customer
WHERE referee_id = 2
)