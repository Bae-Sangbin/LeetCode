# Write your MySQL query statement below

# id는 이 테이블의 기본 키입니다.
# 각 행에는 영화 이름, 장르 및 등급에 대한 정보가 포함됩니다.
# 등급은 [0, 10] 범위의 부동소수점 둘째 자리입니다.

# 홀수 ID와 "지루하지 않은" 설명으로 영화를 보고하는 SQL 쿼리를 작성합니다.
# 등급별로 내림차순으로 정렬된 결과 테이블을 반환합니다.

SELECT *
FROM Cinema
WHERE ID % 2 = 1 AND description != 'boring'
ORDER BY rating desc;