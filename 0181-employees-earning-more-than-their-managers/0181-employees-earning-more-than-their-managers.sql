# Write your MySQL query statement below
# 관리자보다 더 많은 수입을 올리는 직원을 찾아주세요.

SELECT E1.NAME AS EMPLOYEE
FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERID = E2.ID
WHERE E1.SALARY > E2.SALARY
