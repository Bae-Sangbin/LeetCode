# Write your MySQL query statement below
# Primary key : ID
# Foreign Key : ManagerID

# 셀프 조인
SELECT E1.NAME AS Employee
FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERID = E2.ID
WHERE E1.SALARY > E2.SALARY
