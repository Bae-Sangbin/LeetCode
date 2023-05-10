# Write your MySQL query statement below

SELECT MACHINE_ID, ROUND(AVG(processing_time),3) AS processing_time
FROM ( 
SELECT MACHINE_ID, PROCESS_ID, MAX(TIMESTAMP) - MIN(TIMESTAMP) AS processing_time
FROM Activity
GROUP BY machine_id, process_id
    ) TBL_1
GROUP BY MACHINE_ID