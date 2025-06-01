SELECT
    speaker_name,
    COUNT(session_id) AS number_of_sessions
FROM
    Sessions
GROUP BY
    speaker_name
HAVING
    COUNT(session_id) > 1
ORDER BY
    number_of_sessions DESC;