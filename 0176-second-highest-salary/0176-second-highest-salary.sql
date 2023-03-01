# Write your MySQL query statement below

# SELECT MAX(SALARY) AS 'SecondHighestSalary'
# FROM Employee
# WHERE SALARY NOT IN (SELECT MAX(SALARY)
#                     FROM Employee)
                    
SELECT MAX(SALARY) AS 'SecondHighestSalary'
FROM (SELECT SALARY, DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RAN
     FROM Employee) AS TBL
WHERE RAN = 2;

# 꼭 DENSE_RANK로 해야 합니다.
# DENSE_RANK() -> RANK(), ROW_NUMBER()로 쓰면 반례가 생겨서 오답입니다.