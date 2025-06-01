SELECT
    e.event_id,
    e.title AS event_title
FROM
    Events e
WHERE
    e.event_id IN (SELECT DISTINCT event_id FROM Registrations) -- Events with registrations
    AND e.event_id NOT IN (SELECT DISTINCT event_id FROM Feedback); -- Events with no feedback