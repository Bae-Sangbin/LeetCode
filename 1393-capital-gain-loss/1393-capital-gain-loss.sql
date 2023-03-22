# Write your MySQL query statement below

SELECT stock_name,
SUM((IF(operation='Sell',price,0)) - (IF(operation='Buy',price,0))) as capital_gain_loss 
FROM Stocks
GROUP BY stock_name