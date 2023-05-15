# Write your MySQL query statement below

SELECT EMPLOYEE_ID, 
      CASE WHEN EMPLOYEE_ID % 2 = 0 THEN 0
      WHEN NAME LIKE 'M%' THEN 0
      ELSE SALARY END AS BONUS
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID