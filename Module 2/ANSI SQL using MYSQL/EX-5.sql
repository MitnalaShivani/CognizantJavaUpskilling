SELECT
    u.city,
    COUNT(DISTINCT r.user_id) AS distinct_registrations_count
FROM
    Users u
JOIN
    Registrations r ON u.user_id = r.user_id
GROUP BY
    u.city
ORDER BY
    distinct_registrations_count DESC
LIMIT 5;