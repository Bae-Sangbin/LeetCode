select distinct id, visit_date, people
from (
    select
        id, visit_date, people,
        LEAD(people, 1) OVER(ORDER BY id) as lead1,
        LEAD(people, 2) OVER(ORDER BY id) as lead2,
        LAG(people, 1) OVER(ORDER BY id) as lag1,
        LAG(people, 2) OVER(ORDER BY id) as lag2
    FROM stadium
) TBL1
where people >= 100 AND (
    (lead1 >= 100 AND lead2 >= 100) OR 
    (lag1 >= 100 AND lag2 >= 100) OR 
    (lead1 >= 100 AND lag1 >= 100)
)