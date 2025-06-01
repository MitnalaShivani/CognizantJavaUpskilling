SELECT
    u.user_id,
    u.full_name,
    u.email
FROM
    Users u
LEFT JOIN
    Registrations r ON u.user_id = r.user_id
WHERE
    u.user_id NOT IN (
        SELECT DISTINCT user_id
        FROM Registrations
        WHERE registration_date >= CURDATE() - INTERVAL 90 DAY
    )
ORDER BY
    u.full_name;