CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      SELECT DISTINCT salary 
      FROM ( 
            SELECT salary,
            DENSE_RANK() OVER (ORDER BY salary DESC) as RAN
          FROM employee
          ) TBL
      WHERE RAN=N
  );
END