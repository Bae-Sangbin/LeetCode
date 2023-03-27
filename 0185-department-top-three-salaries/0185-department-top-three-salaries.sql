WITH rank_dp AS(
    select
        id as employee_id,
        name as employee_name,
        salary,
        departmentId,
        DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary desc) AS rank_salary
from Employee
    )
select 
    t2.name as Department,
    t1.employee_name as Employee,
    t1.salary as Salary
from rank_dp t1
left join Department t2 on t1.departmentId = t2.id
where rank_salary between 1 and 3

# rank_salary <= 3 으로 하면 결과가 잘 안나옴 (왜지ㅠㅠ?)