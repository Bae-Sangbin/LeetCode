# Write your MySQL query statement below
SELECT DISTINCT TBL.Num as ConsecutiveNums 
FROM(
    SELECT id, num,
        LAG(num) OVER (ORDER BY Id) as 'LAG',
        LEAD(num) OVER (ORDER By Id) as 'LEAD' 
    FROM Logs) TBL
WHERE TBL.num = TBL.LAG AND TBL.LAG = TBL.LEAD