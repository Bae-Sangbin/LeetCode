# 왜 틀린건지 모르겠습니다
# select p.product_id, p.product_name
# from Product p join Sales s on p.product_id = s.product_id
# where s.sale_date between '2019-01-01' and '2019-03-31'
# group by p.product_id

SELECT S.product_id, product_name
FROM Sales S JOIN Product P ON S.product_id = P.product_id
GROUP BY S.product_id
HAVING MIN(S.sale_date) >= '2019-01-01' AND MAX(S.sale_date) <= '2019-03-31';