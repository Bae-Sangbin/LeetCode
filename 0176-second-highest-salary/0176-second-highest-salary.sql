# Write your MySQL query statement below

# SELECT MAX(SALARY) AS 'SecondHighestSalary'
# FROM Employee
# WHERE SALARY NOT IN (SELECT MAX(SALARY)
#                     FROM Employee)
                    
SELECT MAX(SALARY) AS 'SecondHighestSalary'
FROM (SELECT SALARY, DENSE_RANK() OVER(ORDER BY SALARY DESC) AS R
     FROM Employee) AS SALARY_RANK
WHERE R = 2;