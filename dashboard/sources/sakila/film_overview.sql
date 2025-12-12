SELECT
    COUNT(*) AS total_films,
    MIN(length) AS shortest_length,
    ROUND(AVG(length), 1) AS avg_length,
    MAX(length) AS longest_length
FROM
    raw_sakila.film;