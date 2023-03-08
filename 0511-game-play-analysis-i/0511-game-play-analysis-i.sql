# Write your MySQL query statement below

# 각 플레이어의 첫 로그인 날짜를 보고하는 SQL 쿼리를 작성합니다.
# (player_id, event_date) is the primary key of this table.


SELECT 
    player_id,
    MIN(event_date) as first_login
FROM Activity
GROUP BY player_id