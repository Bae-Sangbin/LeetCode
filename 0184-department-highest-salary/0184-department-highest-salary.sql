# Write your MySQL query statement below
# id는 이 테이블의 기본 키 열입니다.
# 부서 ID는 부서 테이블의 ID에 대한 외래 키입니다.
# 이 테이블의 각 행은 직원의 ID, 이름 및 급여를 나타냅니다. 부서의 ID도 포함되어 있습니다.

# 각 부서에서 급여가 가장 높은 직원을 찾는 SQL 쿼리를 작성하세요.

SELECT Department.name AS 'Department', Employee.name AS 'Employee', Salary
FROM Employee JOIN Department ON Employee.DepartmentId = Department.Id 
WHERE(Employee.DepartmentId , Salary)IN(SELECT DepartmentId, MAX(Salary)
                                        FROM Employee
                                        GROUP BY DepartmentId);