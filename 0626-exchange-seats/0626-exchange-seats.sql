SELECT id, 
CASE 
WHEN (id % 2 = 0) THEN LAG(student) OVER(ORDER BY id)
WHEN id = (SELECT MAX(id) FROM Seat) THEN student
WHEN(id % 2 = 1) THEN LEAD(student) OVER(ORDER BY id)
END student
FROM Seat