# Write your MySQL query statement below
# Primary key : ID
# Foreign Key : ManagerID


# ์ํ ์กฐ์ธ
SELECT A.NAME AS Employee
FROM EMPLOYEE A JOIN EMPLOYEE B ON A.ManagerID = B.ID
WHERE A.SALARY > B.SALARY
