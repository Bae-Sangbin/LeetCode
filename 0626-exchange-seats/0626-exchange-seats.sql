select  
    case 
    when id % 2 = 0 then id - 1
    when id % 2 = 1 and id < (select count(*) from seat) then id + 1  # 서브쿼리 대신 max(id) 사용이 불가능한가?
    else id
    end as id, student 
from seat
order by id;