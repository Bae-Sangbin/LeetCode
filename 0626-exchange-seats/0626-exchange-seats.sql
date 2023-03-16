# Write your MySQL query statement below
SELECT id, 
CASE 
WHEN (id % 2 = 0) then lag(student, 1) over(ORDER BY id)
WHEN id = (SELECT MAX(id) FROM Seat) then student
WHEN(id % 2 > 0) THEN lead(student, 1) OVER(ORDER BY id)
END student
FROM Seat