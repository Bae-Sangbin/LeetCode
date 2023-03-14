# Write your MySQL query statement below
# id는 이 테이블의 기본 키입니다.
# sex 열은 유형('m', 'f')의 ENUM 값입니다.
# 테이블에는 직원에 대한 정보가 포함되어 있습니다.


# 중간 임시 테이블 없이 단일 업데이트 문으로 모든 'f' 및 'm' 값을 교환(즉, 모든 'f' 값을 'm'으로 또는 그 반대로 변경)하는 SQL 쿼리를 작성합니다.

# 단일 업데이트 문을 작성해야 하며 이 문제에 대한 선택 문을 작성하지 마십시오.

UPDATE Salary
SET sex = IF(sex = 'm', 'f','m')
