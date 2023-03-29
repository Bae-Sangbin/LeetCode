# Write your MySQL query statement below
SELECT t.Request_at AS Day,
        ROUND(SUM(t.Status IN ('cancelled_by_client', 'cancelled_by_driver'))/COUNT(*), 2) AS "Cancellation Rate"
    FROM Trips t
    JOIN Users uc ON uc.Users_Id = t.Client_Id AND uc.Role = 'client' AND uc.Banned = "No"
    JOIN Users ud ON ud.Users_Id = t.Driver_Id AND ud.Role = 'driver' AND ud.Banned = "No"
WHERE t.Request_at BETWEEN "2013-10-01" AND "2013-10-03"
GROUP BY Day