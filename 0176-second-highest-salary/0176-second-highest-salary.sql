# Write your MySQL query statement below

# SELECT MAX(SALARY) AS 'SecondHighestSalary'
# FROM Employee
# WHERE SALARY NOT IN (SELECT MAX(SALARY)
#                     FROM Employee)
                    
SELECT MAX(SALARY) AS 'SecondHighestSalary'
FROM (SELECT SALARY, DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RAN
     FROM Employee) AS TBL
WHERE RAN = 2;