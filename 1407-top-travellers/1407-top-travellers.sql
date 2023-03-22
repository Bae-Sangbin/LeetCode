# Write your MySQL query statement below
select 
    t1.name, 
    ifnull(sum(t2.distance), 0) as travelled_distance
from Users t1
left join Rides t2 on t2.user_id = t1.id
group by t1.id
order by travelled_distance desc, name asc