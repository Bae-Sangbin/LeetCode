# 왜 틀린건지 모르겠습니다
select p.product_id, p.product_name
from Product p join Sales s on p.product_id = s.product_id
group by p.product_id
having MIN(s.sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31'
