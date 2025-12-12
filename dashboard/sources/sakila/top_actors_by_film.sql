SELECT
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(*) AS film_count
FROM
    raw_sakila.actor a
    JOIN sakila.film_actor fa ON fa.actor_id = a.actor_id
GROUP BY
    1,
    2
ORDER BY
    film_count DESC
LIMIT
    10;