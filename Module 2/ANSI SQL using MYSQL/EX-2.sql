-- This query will return an empty set with the current sample data
-- as no event has 10 feedback submissions.
-- It demonstrates the logic if more data were available.
SELECT
    e.title AS event_title,
    AVG(f.rating) AS average_rating,
    COUNT(f.feedback_id) AS total_feedback
FROM
    Events e
JOIN
    Feedback f ON e.event_id = f.event_id
GROUP BY
    e.event_id, e.title
HAVING
    COUNT(f.feedback_id) >= 10
ORDER BY
    average_rating DESC;