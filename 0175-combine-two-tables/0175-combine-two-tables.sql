# Write your MySQL query statement below

# Person 테이블에 있는 각 개인의 이름, 성, 도시 및 주를 보고하는 SQL 쿼리를 작성하십시오. personId의 주소가 Address 테이블에 없으면 대신 null을 보고합니다

SELECT FIRSTNAME, LASTNAME, CITY, STATE
FROM PERSON P LEFT JOIN ADDRESS A ON P.PERSONID = A.PERSONID