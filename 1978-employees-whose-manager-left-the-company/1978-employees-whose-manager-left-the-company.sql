# Write your MySQL query statement below
# 급여가 $30000 미만이고 관리자가 회사를 떠난 직원의 ID를 보고하는 SQL 쿼리를 작성하십시오. 관리자가 퇴사하면 직원 테이블에서 해당 정보가 삭제되지만 보고서에는 여전히 manager_id가 퇴사한 관리자로 설정되어 있습니다.

# employee_id로 정렬된 결과 테이블을 반환합니다.

SELECT EMPLOYEE_ID
FROM Employees
WHERE SALARY < 30000 AND manager_id NOT IN (SELECT employee_id
                                            FROM Employees)
ORDER BY EMPLOYEE_ID