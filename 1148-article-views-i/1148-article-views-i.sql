SELECT author_id as id
FROM
(SELECT author_id,viewer_id
FROM Views
WHERE author_id = viewer_id) TBL
GROUP BY id
ORDER BY id