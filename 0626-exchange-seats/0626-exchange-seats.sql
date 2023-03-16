# Write your MySQL query statement below
SELECT id, 
CASE 
WHEN (id % 2 = 0) THEN lag(student) OVER(ORDER BY id)
WHEN id = (SELECT MAX(id) FROM Seat) then student
WHEN(id % 2 > 0) THEN lead(student) OVER(ORDER BY id)
END student
FROM Seat