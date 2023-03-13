# Write your MySQL query statement below
SELECT DISTINCT TBL.Num as ConsecutiveNums 
FROM(
    SELECT Id, Num
        , Lag(Num) OVER (ORDER BY Id) as 'Lag'  
        , Lead(Num) OVER (ORDER By Id) as 'Lead' 
    FROM Logs) TBL
WHERE TBL.Num = TBL.Lag AND TBL.Lag = TBL.Lead