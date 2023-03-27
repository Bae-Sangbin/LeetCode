SELECT D.name AS Department, E.name AS Employee, Salary
FROM (SELECT *,
      DENSE_RANK() OVER(PARTITION BY DEPARTMENTID
                 ORDER BY SALARY DESC) AS RAN
     FROM EMPLOYEE) E JOIN DEPARTMENT D ON E.DEPARTMENTID = D.ID
WHERE RAN <= 3