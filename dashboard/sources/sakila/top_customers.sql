SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    ROUND(SUM(p.amount), 2) AS total_spend
FROM
    raw_sakila.customer c
    JOIN sakila.payment p ON p.customer_id = c.customer_id
GROUP BY
    1,
    2
ORDER BY
    total_spend DESC
LIMIT
    5;