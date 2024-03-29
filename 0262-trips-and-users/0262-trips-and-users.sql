# Write your MySQL query statement below
SELECT Request_at AS Day,
ROUND(SUM(t.Status IN ('cancelled_by_client', 'cancelled_by_driver'))/COUNT(*), 2) 
AS "Cancellation Rate"
    FROM (SELECT *
         FROM Trips
         WHERE Request_at BETWEEN "2013-10-01" AND "2013-10-03") T 
         JOIN (SELECT *
               FROM Users
               WHERE Role = 'client') C ON C.Users_Id = T.Client_Id
         JOIN (SELECT *
               FROM Users
               WHERE Role = 'driver') D ON D.Users_Id = T.Driver_Id 
WHERE C.Banned = "No" AND D.Banned = "No"
GROUP BY Day
ORDER BY Day