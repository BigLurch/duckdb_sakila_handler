SELECT
    title,
    rental_rate,
    rental_duration,
    ROUND(rental_rate / NULLIF(rental_duration, 0), 4) AS price_per_day
FROM
    raw_sakila.film
ORDER BY
    price_per_day DESC
LIMIT
    10;