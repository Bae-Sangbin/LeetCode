select id, visit_date, people
from (
    select
        *,
        LEAD(people) OVER(ORDER BY id) as NEXT_PEOPLE,
        LEAD(people, 2) OVER(ORDER BY id) as NEXT_PEOPLE2,
        LAG(people) OVER(ORDER BY id) as PREV_PEOPLE,
        LAG(people, 2) OVER(ORDER BY id) as PREV_PEOPLE2
    FROM stadium
) TBL1
where people >= 100 AND (
    (NEXT_PEOPLE >= 100 AND NEXT_PEOPLE2 >= 100) OR 
    (PREV_PEOPLE >= 100 AND PREV_PEOPLE2 >= 100) OR 
    (NEXT_PEOPLE >= 100 AND PREV_PEOPLE >= 100)
)